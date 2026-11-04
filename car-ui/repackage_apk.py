"""Repeatable application-ID/icon variants from a compatible APK; never edits the input."""
import argparse
import base64
import hashlib
import json
import os
import re
import shutil
import ssl
import struct
import subprocess
import sys
import urllib.request
import zipfile
from pathlib import Path
from apk_identity import identity_map,manifest_info,rewrite_xml,rewrite_resources,validate_package

ROOT=Path(__file__).resolve().parent
def digest(data):return hashlib.sha256(data).hexdigest()
def version(path):return tuple(int(v) for v in re.findall(r'\d+',path.name))
def executable(folder,name):return Path(folder)/(name+'.exe' if os.name=='nt' else name)
def tools(java_home=None,android_sdk=None):
    from build_ui import JDK,SDK
    java_candidates=[Path(java_home)/'bin' if java_home else None,Path(os.environ['JAVA_HOME'])/'bin' if os.environ.get('JAVA_HOME') else None,JDK,Path(shutil.which('javac')).parent if shutil.which('javac') else None]
    java=next((p for p in java_candidates if p and executable(p,'javac').is_file()),None)
    sdk_candidates=[Path(android_sdk) if android_sdk else None,Path(os.environ['ANDROID_SDK_ROOT']) if os.environ.get('ANDROID_SDK_ROOT') else None,Path(os.environ['ANDROID_HOME']) if os.environ.get('ANDROID_HOME') else None,SDK,Path.home()/'AppData/Local/Android/Sdk']
    sdk=next((p for p in sdk_candidates if p and (p/'build-tools').is_dir()),None)
    if not java or not sdk:raise ValueError('需要JDK与Android SDK build-tools；使用--java-home、--android-sdk指定路径')
    build=next((p for p in sorted((sdk/'build-tools').iterdir(),key=version,reverse=True) if executable(p,'zipalign').is_file() and (p/'lib/apksigner.jar').is_file()),None)
    if not build:raise ValueError('未找到zipalign和apksigner.jar')
    return java,sdk,build
def run(command,log):
    with log.open('wb') as output:r=subprocess.run(list(map(str,command)),stdout=output,stderr=subprocess.STDOUT)
    if r.returncode:raise RuntimeError(log.read_text(encoding='utf-8',errors='replace')[-4000:])
def dependencies(cache):
    cache.mkdir(parents=True,exist_ok=True);result=[]
    for name,info in json.loads((ROOT/'repackage-deps.json').read_text(encoding='utf-8')).items():
        target=cache/name
        if not target.is_file() or digest(target.read_bytes())!=info['sha256']:
            with urllib.request.urlopen(info['url'],timeout=60) as response:data=response.read(10*1024*1024)
            if digest(data)!=info['sha256']:raise ValueError('依赖校验失败：'+name)
            target.write_bytes(data)
        result.append(target)
    return result
def icon_data(path):
    if path.suffix.lower()=='.zip':
        with zipfile.ZipFile(path) as z:
            choices=[i for i in z.infolist() if not i.is_dir() and Path(i.filename).suffix.lower() in {'.png','.jpg','.jpeg','.webp'}]
            if len(choices)!=1:raise ValueError('图标ZIP须恰好包含一张PNG/JPG/WebP图片')
            if choices[0].file_size>20*1024*1024:raise ValueError('图标超过20MB')
            data=z.read(choices[0])
    else:data=path.read_bytes()
    if data.startswith(b'\x89PNG\r\n\x1a\n'):extension='.png'
    elif data.startswith(b'\xff\xd8\xff'):extension='.jpg'
    elif data.startswith(b'RIFF') and data[8:12]==b'WEBP':extension='.webp'
    else:raise ValueError('图标须为真实PNG/JPG/WebP数据')
    return data,'res/carui_launcher_'+digest(data)[:12]+extension
def signed_entry(name):
    value=name.upper();return value=='META-INF/MANIFEST.MF' or value.startswith('META-INF/') and value.endswith(('.SF','.RSA','.DSA','.EC'))

def repackage(source,new_id,key,cert,out_dir,icon=None,protect=False,java_home=None,android_sdk=None):
    validate_package(new_id);source=source.resolve();key=key.resolve();cert=cert.resolve();out_dir=out_dir.resolve();out_dir.mkdir(parents=True,exist_ok=True)
    for path in [source,key,cert]:
        if not path.is_file():raise ValueError('文件不存在：'+str(path))
    java,sdk,build=tools(java_home,android_sdk);source_hash=digest(source.read_bytes());work=ROOT/'build/package-variants'/new_id/source_hash[:12];work.mkdir(parents=True,exist_ok=True)
    dependencies_dir=ROOT/'build/repackage-tools';jars=dependencies(dependencies_dir);classes=dependencies_dir/'classes';classes.mkdir(exist_ok=True)
    classpath=os.pathsep.join(map(str,jars));run([executable(java,'javac'),'-encoding','UTF-8','-cp',classpath,'-d',classes,ROOT/'tools/PackageDexRewriter.java'],work/'javac.log')
    classpath=os.pathsep.join([str(classes),*map(str,jars)])
    image,image_path=icon_data(icon.resolve()) if icon else (None,None)
    with zipfile.ZipFile(source) as before:
        if 'assets/carlito/protection.json' in before.namelist():raise ValueError('请使用兼容版或未加固基础APK，不能直接修改已加固载荷')
        info,mapping=identity_map(before.read('AndroidManifest.xml'),new_id);old_id=info['package']
        if old_id==new_id and not icon:raise ValueError('输入APK已经使用此包名；如只更换图标，请指定--icon')
        manifest,manifest_changes=rewrite_xml(before.read('AndroidManifest.xml'),old_id,new_id,mapping,True) if old_id!=new_id else (before.read('AndroidManifest.xml'),[])
        icon_ids={int(info['application'][k]) for k in ['icon','roundIcon'] if isinstance(info['application'].get(k),int)} if icon else set()
        resources,resource_report=rewrite_resources(before.read('resources.arsc'),old_id,new_id,icon_ids,image_path)
        mapping_file=work/'identities.tsv';mapping_file.write_text('\n'.join(base64.b64encode(a.encode()).decode()+'\t'+base64.b64encode(b.encode()).decode() for a,b in mapping.items()),encoding='utf-8')
        dex_names=sorted((n for n in before.namelist() if re.fullmatch(r'classes(?:[2-9]|[1-9][0-9]+)?\.dex',n)),key=lambda n:1 if n=='classes.dex' else int(n[7:-4]))
        if not dex_names:raise ValueError('APK不包含DEX')
        replacements={'AndroidManifest.xml':manifest,'resources.arsc':resources};dex_report={};xml_report={}
        for name in dex_names:
            if old_id==new_id:
                dex_report[name]={'classes':struct.unpack_from('<I',before.read(name),96)[0],'changed_sites':0,'comparisons_preserved':0,'symbols_preserved':True,'byte_identical':True};continue
            original=work/('original-'+name);updated=work/('updated-'+name);original.write_bytes(before.read(name));log=work/(name+'.log')
            run([executable(java,'java'),'-Xmx2g','-cp',classpath,'PackageDexRewriter',original,updated,old_id,new_id,mapping_file,source],log)
            lines=[line.split('\t',1) for line in log.read_text().splitlines() if '\t' in line]
            dex_report[name]={'original_edition_comparisons':[v for k,v in lines if k=='ORIGINAL_EDITION_COMPARISON'],**{k.lower():int(v) if v.isdigit() else v=='true' if v in ['true','false'] else v for k,v in lines if k!='ORIGINAL_EDITION_COMPARISON'}}
            if not dex_report[name].get('symbols_preserved'):raise ValueError('DEX符号验证失败')
            replacements[name]=updated.read_bytes()
        for name in before.namelist():
            if not name.startswith('res/') or not name.endswith('.xml'):continue
            data=before.read(name)
            if not data.startswith(b'\x03\x00'):continue
            updated,changes=rewrite_xml(data,old_id,new_id,mapping)
            if changes:replacements[name]=updated;xml_report[name]=len(changes)
        unsigned=work/'unsigned.apk';aligned=work/'aligned.apk'
        with zipfile.ZipFile(unsigned,'w',zipfile.ZIP_DEFLATED) as after:
            for entry in before.infolist():
                if signed_entry(entry.filename):continue
                if entry.filename==image_path:
                    if before.read(entry)!=image:raise ValueError('图标路径哈希冲突')
                after.writestr(entry,replacements.get(entry.filename,before.read(entry)))
            if image_path and image_path not in before.namelist():after.writestr(image_path,image)
    result=out_dir/('应用管家-'+new_id+'-兼容版.apk')
    if result.resolve()==source:raise ValueError('输出不能覆盖基础APK')
    run([executable(build,'zipalign'),'-P','16','-f','4',unsigned,aligned],work/'align.log')
    # Sign for the actual declared minimum; do not change the input's compatibility contract.
    parts_min=17
    from apk_identity import xml_parts,xml_nodes
    parts,pool=xml_parts(manifest)
    for tag,attrs,_ in xml_nodes(parts,pool):
        if tag=='uses-sdk' and isinstance(attrs.get('minSdkVersion',(None,))[0],int):parts_min=attrs['minSdkVersion'][0]
    signer=[executable(java,'java'),'-jar',build/'lib/apksigner.jar']
    run([*signer,'sign','--key',key,'--cert',cert,'--min-sdk-version',parts_min,'--v1-signing-enabled','true','--v2-signing-enabled','true','--v3-signing-enabled','true','--v4-signing-enabled','false','--out',result,aligned],work/'sign.log')
    run([*signer,'verify','--verbose','--print-certs','--min-sdk-version',parts_min,result],work/'signature.log');signed_copy=work/'signed.apk';signed_copy.write_bytes(result.read_bytes());run([executable(build,'zipalign'),'-c','-P','16','4',signed_copy],work/'alignment-check.log')
    expected_cert=digest(ssl.PEM_cert_to_DER_cert(cert.read_text(encoding='ascii')))
    if expected_cert not in (work/'signature.log').read_text():raise ValueError('签名证书不一致')
    with zipfile.ZipFile(source) as before,zipfile.ZipFile(result) as after:
        if after.testzip() is not None:raise ValueError('APK ZIP校验失败')
        final_info=manifest_info(after.read('AndroidManifest.xml'));assert final_info['package']==new_id
        assert [p['authorities'] for p in final_info['providers']]==[';'.join(mapping.get(v,v) for v in p['authorities'].split(';')) for p in info['providers']]
        preserved=0
        for name in before.namelist():
            if signed_entry(name) or name in replacements:continue
            assert before.read(name)==after.read(name),name;preserved+=1
        if image_path:assert after.read(image_path)==image
    report={'application_id':new_id,'source_application_id':old_id,'source_apk':source.name,'source_sha256':source_hash,'apk':result.name,'sha256':digest(result.read_bytes()),'bytes':result.stat().st_size,'certificate_sha256':expected_cert,'signed_and_aligned':True,'minimum_sdk':parts_min,'icon_sha256':digest(image) if image else None,'icon_resource':image_path,'manifest_changes':manifest_changes,'providers':[p['authorities'] for p in final_info['providers']],'permissions':final_info['permissions'],'resource_changes':resource_report,'dex':dex_report,'resource_xml_changes':xml_report,'unchanged_payload_entries':preserved,'native_libraries_and_embedded_apks':'byte-identical; original code namespace and native defaults preserved','private_signing_key_included':False,'device_tested':False}
    report['tool_sources_sha256']={n:digest((ROOT/n).read_bytes()) for n in ['apk_identity.py','repackage_apk.py','tools/PackageDexRewriter.java']}
    if protect:
        protected=out_dir/('应用管家-'+new_id+'-AES加固版.apk')
        run([sys.executable,ROOT/'protect_apk.py','--input',result,'--key',key,'--cert',cert,'--output',protected,'--java-home',java.parent,'--android-sdk',sdk,'--work-dir',work/'protection'],work/'protect.log')
        p=json.loads(protected.with_suffix('.verification.json').read_text(encoding='utf-8'));assert p['application_id']==new_id;report['protected']={'apk':protected.name,'sha256':p['sha256'],'bytes':p['bytes'],'minimum_sdk':p['minimum_sdk']}
    result.with_suffix('.verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in report.items() if k in ['application_id','apk','sha256','bytes','icon_sha256','protected']},ensure_ascii=False,indent=2),flush=True)
    return report

if __name__=='__main__':
    parser=argparse.ArgumentParser(description='应用管家一键生成包名/图标定制版；输入须为兼容版或未加固APK')
    parser.add_argument('--input',type=Path,required=True);parser.add_argument('--package',action='append',required=True);parser.add_argument('--key',type=Path,required=True);parser.add_argument('--cert',type=Path,default=ROOT/'platform.x509.pem');parser.add_argument('--icon',type=Path);parser.add_argument('--output-dir',type=Path,default=ROOT/'dist/package-variants');parser.add_argument('--protect',action='store_true');parser.add_argument('--java-home');parser.add_argument('--android-sdk')
    args=parser.parse_args()
    try:
        for name in args.package:validate_package(name)
        if len({name.casefold() for name in args.package})!=len(args.package):raise ValueError('批量包名不能重复或仅大小写不同')
        for name in args.package:repackage(args.input,name,args.key,args.cert,args.output_dir,args.icon,args.protect,args.java_home,args.android_sdk)
    except Exception as error:print('生成失败：'+str(error),file=sys.stderr);raise SystemExit(1)

"""Build an Android 10+ AES-256-GCM variant; keep the signed compatible input intact.

Requires cryptography. Uses public Android AppComponentFactory + InMemoryDexClassLoader.
Build-random client material raises static-analysis cost; it is not an unrecoverable secret.
"""
import argparse
import base64
import hashlib
import hmac
import json
import os
import re
import struct
import subprocess
import zipfile
from pathlib import Path
from cryptography import x509
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.ciphers.aead import AESGCM
from cryptography.exceptions import InvalidTag
from build_ui import BUILD, WORKSPACE, JDK, SDK, BUILDTOOLS
from apk_identity import manifest_info,protect_manifest,validate_package
from package_apk import signature, u16, u32

ROOT=Path(__file__).resolve().parent
INFO=b'carlito/dex/aes-gcm/v1\ncom.yunpan.appmanage'
FACTORY='com.carlito.secure.Factory'
PROTECTION_WORK=WORKSPACE/'.work/protection'
ANDROID_JAR=SDK/'platforms/android-36/android.jar'
ORIGINAL_FACTORY='androidx.core.app.CoreComponentFactory'

def sha(data):return hashlib.sha256(data).hexdigest()
def run(command,log):
    BUILD.mkdir(parents=True,exist_ok=True)
    with (BUILD/log).open('wb') as output:
        subprocess.run(list(map(str,command)),stdout=output,stderr=subprocess.STDOUT,check=True)

def derive(seed,cert,application_id='com.yunpan.appmanage'):
    prk=hmac.digest(bytes.fromhex(cert),seed,'sha256')
    return hmac.digest(prk,('carlito/dex/aes-gcm/v1\n'+application_id).encode()+b'\1','sha256')

def patch_manifest(original):
    info=manifest_info(original)
    return protect_manifest(original,FACTORY,max(29,int(info['sdk'].get('minSdkVersion',1))))

def tamper_checks(key,nonce,plain,aad,ciphertext):
    assert AESGCM(key).decrypt(nonce,ciphertext,aad)==plain
    cases=[(key,nonce,ciphertext[:-1]+bytes([ciphertext[-1]^1]),aad),
           (key,nonce,ciphertext,aad+b'!'),
           (bytes([key[0]^1])+key[1:],nonce,ciphertext,aad)]
    for args in cases:
        try:AESGCM(args[0]).decrypt(args[1],args[2],args[3])
        except InvalidTag:continue
        raise AssertionError('Tampering was accepted')

def protect(source,keyfile,certificate,output):
    assert source.is_file() and source.resolve()!=output.resolve()
    assert output.suffix.lower()=='.apk'
    output.parent.mkdir(parents=True,exist_ok=True)
    cert=x509.load_pem_x509_certificate(certificate.read_bytes()).fingerprint(hashes.SHA256()).hex()
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs',source],'protection-input-signature.log')
    assert 'certificate SHA-256 digest: '+cert in (BUILD/'protection-input-signature.log').read_text()
    work=PROTECTION_WORK;work.mkdir(parents=True,exist_ok=True)
    seed=os.urandom(32);share=os.urandom(32);payload={};items=[];nonces=set()
    with zipfile.ZipFile(source) as z:
        if 'assets/carlito/protection.json' in z.namelist():raise ValueError('输入已加固，请使用兼容版')
        info=manifest_info(z.read('AndroidManifest.xml'));application_id=validate_package(info['package']);minimum=max(29,int(info['sdk'].get('minSdkVersion',1)));key=derive(seed,cert,application_id)
        original_factory=info['application'].get('appComponentFactory','')
        if not re.fullmatch(r'[A-Za-z_$][A-Za-z0-9_$]*(?:\.[A-Za-z_$][A-Za-z0-9_$]*)+',original_factory):raise ValueError('无可用原组件工厂')
        dex=sorted((n for n in z.namelist() if re.fullmatch(r'classes(?:[2-9]|[1-9][0-9]+)?\.dex',n)),key=lambda n:1 if n=='classes.dex' else int(n[7:-4]))
        assert dex and len(dex)<=64 and dex[0]=='classes.dex',dex
        for i,name in enumerate(dex):
            plain=z.read(name);digest=sha(plain);entry=f'assets/carlito/payload/{i}.gcm'
            aad=('carlito/dex/aes-gcm/v1\n'+application_id+'\ncarlito\n应用管家社区官方【应用管家】\nhttps://pd.qq.com/s/7eyokceit?b=5\n'+name+'\n'+digest).encode()
            nonce=os.urandom(12);assert nonce not in nonces;nonces.add(nonce)
            encrypted=AESGCM(key).encrypt(nonce,plain,aad);tamper_checks(key,nonce,plain,aad,encrypted)
            payload[entry]=nonce+encrypted;items.append({'name':name,'entry':entry,'bytes':len(plain),'sha256':digest,'aad':aad.decode()})
        metadata=json.dumps({'format':1,'algorithm':'AES-256-GCM','tag_bits':128,'nonce_bytes':12,'minimum_sdk':minimum,'application_id':application_id,'original_component_factory':original_factory,'author':'carlito','source':'应用管家社区官方【应用管家】','source_url':'https://pd.qq.com/s/7eyokceit?b=5','input_apk_sha256':sha(source.read_bytes()),'certificate_sha256':cert,'dex':items},ensure_ascii=False,separators=(',',':')).encode()
        payload['assets/carlito/protection.json']=metadata
        template=(ROOT/'protection/Factory.java.in').read_text(encoding='utf-8')
        for name,value in {'PACKAGE':application_id,'DEX_COUNT':str(len(dex)),'ORIGINAL_FACTORY':original_factory,'CERT':cert,'META_SHA':sha(metadata),'SHARE_A':base64.b64encode(share).decode(),'SHARE_B':base64.b64encode(bytes(a^b for a,b in zip(seed,share))).decode()}.items():template=template.replace('@@'+name+'@@',value)
        assert '@@' not in template
        java=work/'Factory.java';java.write_text(template,encoding='utf-8')
        classes=work/'classes';classes.mkdir(exist_ok=True)
        run([JDK/'javac.exe','-encoding','UTF-8','--release','8','-cp',ANDROID_JAR,'-d',classes,java],'protection-javac.log')
        jar=work/'bootstrap.jar'
        with zipfile.ZipFile(jar,'w') as j:
            j.write(classes/'com/carlito/secure/Factory.class','com/carlito/secure/Factory.class')
        dexdir=work/'dex';dexdir.mkdir(exist_ok=True)
        run([JDK/'java.exe','-cp',BUILDTOOLS/'lib/d8.jar','com.android.tools.r8.D8','--min-api','29','--lib',ANDROID_JAR,'--output',dexdir,jar],'protection-d8.log')
        bootstrap=(dexdir/'classes.dex').read_bytes();assert struct.unpack_from('<I',bootstrap,96)[0]==1
        unsigned=work/'unsigned.apk';aligned=work/'aligned.apk';manifest=patch_manifest(z.read('AndroidManifest.xml'))
        with zipfile.ZipFile(unsigned,'w',zipfile.ZIP_DEFLATED) as out:
            for entry in z.infolist():
                if signature(entry.filename) or entry.filename in dex:continue
                out.writestr(entry,manifest if entry.filename=='AndroidManifest.xml' else z.read(entry))
            out.writestr('classes.dex',bootstrap)
            for name,data in payload.items():out.writestr(name,data)
    run([BUILDTOOLS/'zipalign.exe','-P','16','-f','4',unsigned,aligned],'protection-align.log')
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','sign','--key',keyfile,'--cert',certificate,'--min-sdk-version',str(minimum),'--v1-signing-enabled','true','--v2-signing-enabled','true','--v3-signing-enabled','true','--v4-signing-enabled','false','--out',output,aligned],'protection-sign.log')
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs','--min-sdk-version',str(minimum),output],'protection-signature-verification.log')
    # API 29 verification selects V3; force the supported V1 digest range to check all schemes too.
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs','--min-sdk-version','18',output],'protection-all-schemes-verification.log')
    schemes=(BUILD/'protection-all-schemes-verification.log').read_text()
    for version in [1,2,3]:assert re.search(r'Verified using v'+str(version)+r' scheme .*: true',schemes)
    signed=work/'signed.apk';signed.write_bytes(output.read_bytes())
    run([BUILDTOOLS/'zipalign.exe','-c','-P','16','4',signed],'protection-zipalign-verification.log')
    with zipfile.ZipFile(source) as before,zipfile.ZipFile(output) as after:
        assert after.testzip() is None
        assert [n for n in after.namelist() if re.fullmatch(r'classes[0-9]*\.dex',n)]==['classes.dex']
        preserved=0
        for name in before.namelist():
            if signature(name) or name in dex or name=='AndroidManifest.xml':continue
            assert before.read(name)==after.read(name),name;preserved+=1
        assert after.read('AndroidManifest.xml')==manifest and after.read('classes.dex')==bootstrap
        for item in items:
            encrypted=after.read(item['entry']);assert AESGCM(key).decrypt(encrypted[:12],encrypted[12:],item['aad'].encode())==before.read(item['name'])
    report={'apk':output.name,'bytes':output.stat().st_size,'sha256':sha(output.read_bytes()),'compatible_apk':source.name,'compatible_sha256':sha(source.read_bytes()),'algorithm':'AES-256-GCM','key_bits':256,'tag_bits':128,'unique_nonce_bytes':12,'encrypted_top_level_dex':len(dex),'clear_bootstrap_classes':1,'minimum_sdk':minimum,'application_id':application_id,'loader':'AppComponentFactory / InMemoryDexClassLoader; original Application unchanged','certificate_sha256':cert,'v1_v2_v3_verified':True,'zip_alignment_verified':True,'preserved_non_dex_entries':preserved,'all_dex_roundtrip_verified':True,'tamper_checks':{'changed_tag':'rejected','changed_aad':'rejected','wrong_key':'rejected'},'source_template_sha256':sha((ROOT/'protection/Factory.java.in').read_bytes()),'generated_key_material_in_repository':False,'vm_tested':False,'limitations':['Client-side key material and decrypted code can be recovered by a determined analyst.','Embedded plugin APKs, resources and native libraries are preserved, not encrypted.','Only tested VM/API versions are acceptance evidence; root/ADB/isolated service business paths require device testing.']}
    output.with_suffix('.verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    (BUILD/'protection-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(report,ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--input',type=Path,required=True);p.add_argument('--key',type=Path,required=True);p.add_argument('--cert',type=Path,required=True);p.add_argument('--output',required=True)
    p.add_argument('--java-home',type=Path);p.add_argument('--android-sdk',type=Path);p.add_argument('--work-dir',type=Path)
    a=p.parse_args()
    if a.java_home:JDK=a.java_home/'bin'
    if a.android_sdk:
        SDK=a.android_sdk;BUILDTOOLS=next(d for d in sorted((SDK/'build-tools').iterdir(),key=lambda p:tuple(int(n) for n in re.findall(r'\d+',p.name)),reverse=True) if (d/'lib/apksigner.jar').is_file())
        candidates=[p for p in (SDK/'platforms').glob('android-*/android.jar') if p.parent.name.removeprefix('android-').isdigit() and int(p.parent.name.removeprefix('android-'))>=29]
        ANDROID_JAR=next(iter(sorted(candidates,key=lambda p:int(p.parent.name.removeprefix('android-')),reverse=True)),None)
        if ANDROID_JAR is None:raise ValueError('加固编译需要已安装Android平台android.jar（API29及以上）')
    if a.work_dir:PROTECTION_WORK=a.work_dir.resolve();BUILD=PROTECTION_WORK/'logs'
    protect(a.input.resolve(),a.key.resolve(),a.cert.resolve(),ROOT/a.output)

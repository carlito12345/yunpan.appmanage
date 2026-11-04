"""Preserve original resources and business payload; replace verified UI DEX and orientation attributes."""
import argparse
import hashlib
import json
import re
import struct
import subprocess
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parent
WORKSPACE=ROOT.parent
BUILD=ROOT/'build'
TOOLS=Path(r'C:/Users/di-yu/Documents/Codex/2026-10-10/gd-gd/toolchain/android-sdk/build-tools/36.0.0')
JAVA=Path(r'C:/Users/di-yu/Documents/Codex/2026-10-10/gd-gd/toolchain/java/jdk-17.0.20.1+1/bin/java.exe')

def u16(data,offset):return struct.unpack_from('<H',data,offset)[0]
def u32(data,offset):return struct.unpack_from('<I',data,offset)[0]
def patch_orientation(original):
    data=bytearray(original);strings=[];changes=[];offset=u16(data,2)
    while offset<len(data):
        kind,header,length=struct.unpack_from('<HHI',data,offset)
        assert length>=header>=8 and offset+length<=len(data)
        if kind==1:
            count,flags,start=u32(data,offset+8),u32(data,offset+16),u32(data,offset+20)
            def read8(at):
                value=data[at];at+=1
                if value&128:value=((value&127)<<8)|data[at];at+=1
                return value,at
            for index in range(count):
                at=offset+start+u32(data,offset+header+4*index)
                if flags&0x100:
                    _,at=read8(at);size,at=read8(at);strings.append(bytes(data[at:at+size]).decode('utf-8',errors='replace'))
                else:
                    size=u16(data,at);at+=2
                    if size&0x8000:size=((size&0x7fff)<<16)|u16(data,at);at+=2
                    strings.append(bytes(data[at:at+size*2]).decode('utf-16le'))
        elif kind==0x102:
            element=strings[u32(data,offset+20)]
            first=offset+16+u16(data,offset+24);size=u16(data,offset+26);count=u16(data,offset+28)
            attributes={strings[u32(data,first+i*size+4)]:first+i*size for i in range(count)}
            if element=='activity' and 'screenOrientation' in attributes:
                at=attributes['screenOrientation'];assert data[at+15] in (16,17)
                previous=struct.unpack_from('<i',data,at+16)[0]
                struct.pack_into('<I',data,at+8,0xffffffff)
                struct.pack_into('<i',data,at+16,-1)
                name_at=attributes.get('name');name=''
                if name_at is not None:
                    name_index=u32(data,name_at+16)
                    if data[name_at+15]==3:name=strings[name_index]
                changes.append({'activity':name,'original':previous,'new':-1})
        offset+=length
    assert offset==len(data) and changes
    assert len(data)==len(original)
    return bytes(data),changes

def signature(name):
    name=name.upper()
    return name=='META-INF/MANIFEST.MF' or(name.startswith('META-INF/')and name.endswith(('.SF','.RSA','.DSA','.EC')))

def run(command,log):
    with(BUILD/log).open('wb')as output:
        subprocess.run(list(map(str,command)),cwd=WORKSPACE,stdout=output,stderr=subprocess.STDOUT,check=True)

def package(key,certificate,output='应用管家-UI修复测试-R3-20261104.apk'):
    original=WORKSPACE/'input/公签版.apk'
    compiled=WORKSPACE/'.work/car-ui-compiled.apk'
    helper=BUILD/'dex/classes.dex'
    unsigned=BUILD/'car-ui-unsigned.apk';aligned=BUILD/'car-ui-aligned.apk'
    assert Path(output).name==output and output.lower().endswith('.apk')
    result=ROOT/output
    with zipfile.ZipFile(original)as before,zipfile.ZipFile(compiled)as generated,zipfile.ZipFile(unsigned,'w',zipfile.ZIP_DEFLATED)as output:
        assert 'classes4.dex' not in before.namelist()
        manifest,changes=patch_orientation(before.read('AndroidManifest.xml'))
        # The parser must be idempotent; a second pass cannot change already-unlocked orientations.
        assert patch_orientation(manifest)[0]==manifest
        for entry in before.infolist():
            if signature(entry.filename):continue
            content=generated.read(entry.filename)if entry.filename=='classes.dex' else manifest if entry.filename=='AndroidManifest.xml' else before.read(entry)
            output.writestr(entry,content)
        output.writestr('classes4.dex',helper.read_bytes())
        for asset in sorted((ROOT/'src/main/assets').rglob('*')):
            if asset.is_file():
                name='assets/'+asset.relative_to(ROOT/'src/main/assets').as_posix()
                assert name not in before.namelist(),name
                output.writestr(name,asset.read_bytes())
    run([TOOLS/'zipalign.exe','-P','16','-f','4',unsigned,aligned],'zipalign-build.log')
    run([JAVA,'-jar',TOOLS/'lib/apksigner.jar','sign','--key',key,'--cert',certificate,'--min-sdk-version','17',
         '--v1-signing-enabled','true','--v2-signing-enabled','true','--v3-signing-enabled','true','--v4-signing-enabled','false','--out',result,aligned],'sign.log')
    run([JAVA,'-jar',TOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs','--min-sdk-version','17',result],'signature-verification.log')
    # Native zipalign requires an ASCII path on Windows.
    signed_copy=BUILD/'car-ui-signed.apk';signed_copy.write_bytes(result.read_bytes())
    run([TOOLS/'zipalign.exe','-c','-P','16','4',signed_copy],'zipalign-verification.log')
    preserved=0
    with zipfile.ZipFile(original)as before,zipfile.ZipFile(result)as after,zipfile.ZipFile(compiled)as generated:
        assert after.testzip()is None
        for name in before.namelist():
            if signature(name)or name=='classes.dex'or name=='AndroidManifest.xml':continue
            assert before.read(name)==after.read(name),name
            preserved+=1
        assert after.read('classes.dex')==generated.read('classes.dex')
        assert after.read('classes4.dex')==helper.read_bytes()
        assert after.read('AndroidManifest.xml')==manifest
    cert_log=(BUILD/'signature-verification.log').read_text(encoding='utf-8')
    cert_sha=re.search(r'certificate SHA-256 digest: (\w+)',cert_log)[1]
    expected='c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8'
    assert cert_sha==expected
    snapshot=json.loads((BUILD/'compiled-sources.json').read_text(encoding='utf-8'))
    assert snapshot['ui_dex_sha256']==hashlib.sha256(helper.read_bytes()).hexdigest()
    assert all(hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==digest for name,digest in snapshot['source_files'].items())
    allowed={'classes.dex L'+name.removesuffix('.smali')+';' for name in json.loads((BUILD/'source-patches.json').read_text())}
    found=set((BUILD/'dex-review/dex-differences.txt').read_text().splitlines())
    assert found==allowed,(found,allowed)
    report={'apk':result.name,'bytes':result.stat().st_size,'sha256':hashlib.sha256(result.read_bytes()).hexdigest(),
            'certificate_sha256':cert_sha,'v1_v2_v3_verified':True,'zip_alignment_verified':True,
            'unchanged_original_payload_entries':preserved,'original_resources_byte_identical':True,
            'original_classes2_classes3_byte_identical':True,'additional_ui_dex':'classes4.dex',
            'ui_java_sources_current':True,'ui_classes':snapshot['ui_classes'],'legacy_changed_classes':len(allowed),
            'author':'carlito','source':'应用管家社区官方【应用管家】','source_url':'https://pd.qq.com/s/7eyokceit?b=5',
            'public_source_poster_sha256':hashlib.sha256((ROOT/'src/main/assets/carui/source_channel.jpg').read_bytes()).hexdigest(),
            'unmodified_legacy_classes_compared':16415-len(allowed),
            'orientation_attributes_changed':len(changes),'orientation':'unspecified; follows device configuration',
            'orientation_details':changes,'real_device_tested':False}
    (BUILD/'package-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in report.items()if k!='orientation_details'},ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
    parser=argparse.ArgumentParser();parser.add_argument('--key',type=Path,required=True);parser.add_argument('--cert',type=Path,required=True);parser.add_argument('--output',default='应用管家-UI修复测试-R3-20261104.apk')
    args=parser.parse_args();package(args.key.resolve(),args.cert.resolve(),args.output)

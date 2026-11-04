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
from build_ui import BUILD, WORKSPACE, JDK, SDK, BUILDTOOLS, run
from package_apk import signature, u16, u32

ROOT=Path(__file__).resolve().parent
INFO=b'carlito/dex/aes-gcm/v1\ncom.yunpan.appmanage'
FACTORY='com.carlito.secure.Factory'
ORIGINAL_FACTORY='androidx.core.app.CoreComponentFactory'

def sha(data):return hashlib.sha256(data).hexdigest()
def derive(seed,cert):
    prk=hmac.digest(bytes.fromhex(cert),seed,'sha256')
    return hmac.digest(prk,INFO+b'\1','sha256')

def patch_manifest(original):
    data=bytearray(original);offset=u16(data,2);strings=[];factory_changes=minimum_changes=0
    while offset<len(data):
        kind,header,length=struct.unpack_from('<HHI',data,offset)
        assert length>=header>=8 and offset+length<=len(data)
        if kind==1:
            count,flags,start=u32(data,offset+8),u32(data,offset+16),u32(data,offset+20)
            for index in range(count):
                at=offset+start+u32(data,offset+header+4*index);begin=at
                if flags&0x100:
                    def read8(pos):
                        n=data[pos];pos+=1
                        if n&128:n=((n&127)<<8)|data[pos];pos+=1
                        return n,pos
                    _,at=read8(at);size,at=read8(at);s=bytes(data[at:at+size]).decode('utf-8');end=at+size+1
                    replacement=bytes([len(FACTORY),len(FACTORY)])+FACTORY.encode()+b'\0'
                else:
                    size=u16(data,at);at+=2
                    if size&0x8000:size=((size&0x7fff)<<16)|u16(data,at);at+=2
                    s=bytes(data[at:at+size*2]).decode('utf-16le');end=at+size*2+2
                    replacement=struct.pack('<H',len(FACTORY))+FACTORY.encode('utf-16le')+b'\0\0'
                strings.append(s)
                if s==ORIGINAL_FACTORY:
                    assert len(replacement)<=end-begin
                    data[begin:end]=replacement+b'\0'*(end-begin-len(replacement));factory_index=index;factory_changes+=1
        elif kind==0x102:
            element=strings[u32(data,offset+20)];first=offset+16+u16(data,offset+24);size=u16(data,offset+26);count=u16(data,offset+28)
            attrs={strings[u32(data,first+i*size+4)]:first+i*size for i in range(count)}
            if element=='uses-sdk':
                at=attrs['minSdkVersion'];assert data[at+15] in (16,17)
                struct.pack_into('<I',data,at+8,0xffffffff);struct.pack_into('<I',data,at+16,29);minimum_changes+=1
            if element=='application':
                at=attrs['appComponentFactory'];assert data[at+15]==3 and u32(data,at+16)==factory_index
    # Original uses-sdk/appComponentFactory are required; never silently produce an unloadable APK.
        offset+=length
    assert offset==len(data) and factory_changes==minimum_changes==1
    assert len(data)==len(original)
    return bytes(data)

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
    assert output.parent.resolve()==ROOT.resolve() and output.suffix.lower()=='.apk'
    cert=x509.load_pem_x509_certificate(certificate.read_bytes()).fingerprint(hashes.SHA256()).hex()
    assert cert=='c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8'
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs',source],'protection-input-signature.log')
    assert 'certificate SHA-256 digest: '+cert in (BUILD/'protection-input-signature.log').read_text()
    work=WORKSPACE/'.work/protection';work.mkdir(parents=True,exist_ok=True)
    seed=os.urandom(32);share=os.urandom(32);key=derive(seed,cert);payload={};items=[];nonces=set()
    with zipfile.ZipFile(source) as z:
        dex=sorted((n for n in z.namelist() if re.fullmatch(r'classes(?:[2-9][0-9]*)?\.dex',n)),key=lambda n:1 if n=='classes.dex' else int(n[7:-4]))
        assert dex==['classes.dex','classes2.dex','classes3.dex','classes4.dex'],dex
        for i,name in enumerate(dex):
            plain=z.read(name);digest=sha(plain);entry=f'assets/carlito/payload/{i}.gcm'
            aad=('carlito/dex/aes-gcm/v1\ncom.yunpan.appmanage\ncarlito\n应用管家社区官方【应用管家】\nhttps://pd.qq.com/s/7eyokceit?b=5\n'+name+'\n'+digest).encode()
            nonce=os.urandom(12);assert nonce not in nonces;nonces.add(nonce)
            encrypted=AESGCM(key).encrypt(nonce,plain,aad);tamper_checks(key,nonce,plain,aad,encrypted)
            payload[entry]=nonce+encrypted;items.append({'name':name,'entry':entry,'bytes':len(plain),'sha256':digest,'aad':aad.decode()})
        metadata=json.dumps({'format':1,'algorithm':'AES-256-GCM','tag_bits':128,'nonce_bytes':12,'minimum_sdk':29,'author':'carlito','source':'应用管家社区官方【应用管家】','source_url':'https://pd.qq.com/s/7eyokceit?b=5','input_apk_sha256':sha(source.read_bytes()),'certificate_sha256':cert,'dex':items},ensure_ascii=False,separators=(',',':')).encode()
        payload['assets/carlito/protection.json']=metadata
        template=(ROOT/'protection/Factory.java.in').read_text(encoding='utf-8')
        for name,value in {'CERT':cert,'META_SHA':sha(metadata),'SHARE_A':base64.b64encode(share).decode(),'SHARE_B':base64.b64encode(bytes(a^b for a,b in zip(seed,share))).decode()}.items():template=template.replace('@@'+name+'@@',value)
        assert '@@' not in template
        java=work/'Factory.java';java.write_text(template,encoding='utf-8')
        classes=work/'classes';classes.mkdir(exist_ok=True)
        run([JDK/'javac.exe','-encoding','UTF-8','--release','8','-cp',SDK/'platforms/android-36/android.jar','-d',classes,java],'protection-javac.log')
        jar=work/'bootstrap.jar'
        with zipfile.ZipFile(jar,'w') as j:
            j.write(classes/'com/carlito/secure/Factory.class','com/carlito/secure/Factory.class')
        dexdir=work/'dex';dexdir.mkdir(exist_ok=True)
        run([JDK/'java.exe','-cp',BUILDTOOLS/'lib/d8.jar','com.android.tools.r8.D8','--min-api','29','--lib',SDK/'platforms/android-36/android.jar','--output',dexdir,jar],'protection-d8.log')
        bootstrap=(dexdir/'classes.dex').read_bytes();assert struct.unpack_from('<I',bootstrap,96)[0]==1
        unsigned=work/'unsigned.apk';aligned=work/'aligned.apk';manifest=patch_manifest(z.read('AndroidManifest.xml'))
        with zipfile.ZipFile(unsigned,'w',zipfile.ZIP_DEFLATED) as out:
            for entry in z.infolist():
                if signature(entry.filename) or entry.filename in dex:continue
                out.writestr(entry,manifest if entry.filename=='AndroidManifest.xml' else z.read(entry))
            out.writestr('classes.dex',bootstrap)
            for name,data in payload.items():out.writestr(name,data)
    run([BUILDTOOLS/'zipalign.exe','-P','16','-f','4',unsigned,aligned],'protection-align.log')
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','sign','--key',keyfile,'--cert',certificate,'--min-sdk-version','29','--v1-signing-enabled','true','--v2-signing-enabled','true','--v3-signing-enabled','true','--v4-signing-enabled','false','--out',output,aligned],'protection-sign.log')
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','verify','--verbose','--print-certs','--min-sdk-version','29',output],'protection-signature-verification.log')
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
    report={'apk':output.name,'bytes':output.stat().st_size,'sha256':sha(output.read_bytes()),'compatible_apk':source.name,'compatible_sha256':sha(source.read_bytes()),'algorithm':'AES-256-GCM','key_bits':256,'tag_bits':128,'unique_nonce_bytes':12,'encrypted_top_level_dex':4,'clear_bootstrap_classes':1,'minimum_sdk':29,'loader':'AppComponentFactory / InMemoryDexClassLoader; original Application unchanged','certificate_sha256':cert,'v1_v2_v3_verified':True,'zip_alignment_verified':True,'preserved_non_dex_entries':preserved,'all_four_dex_roundtrip_verified':True,'tamper_checks':{'changed_tag':'rejected','changed_aad':'rejected','wrong_key':'rejected'},'source_template_sha256':sha((ROOT/'protection/Factory.java.in').read_bytes()),'generated_key_material_in_repository':False,'vm_tested':False,'limitations':['Client-side key material and decrypted code can be recovered by a determined analyst.','Embedded plugin APKs, resources and native libraries are preserved, not encrypted.','Only tested VM/API versions are acceptance evidence; root/ADB/isolated service business paths require device testing.']}
    (BUILD/'protection-verification.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(report,ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--input',type=Path,required=True);p.add_argument('--key',type=Path,required=True);p.add_argument('--cert',type=Path,required=True);p.add_argument('--output',required=True)
    a=p.parse_args();protect(a.input.resolve(),a.key.resolve(),a.cert.resolve(),ROOT/a.output)

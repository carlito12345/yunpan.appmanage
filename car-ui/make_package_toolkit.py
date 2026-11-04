"""Allowlisted Windows toolkit export; private/local build material is never traversed."""
import argparse
import hashlib
import json
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parent
FILES=['PACKAGE_VARIANTS.md','R10修复与验证.md','THIRD_PARTY_PACKAGE_TOOLS.txt','OneClickPackage.ps1','一键改包名.cmd',
       'repackage.example.json','repackage-deps.json','apk_identity.py','repackage_apk.py',
       'protect_apk.py','build_ui.py','package_apk.py','test_repackage.py','make_package_toolkit.py',
       'tools/PackageDexRewriter.java','protection/Factory.java.in','branding/gj_ico.jpg','platform.x509.pem']

def make_toolkit(base,verification,output):
    base=base.resolve();verification=verification.resolve();output=output.resolve()
    assert base.is_file() and output!=base
    with zipfile.ZipFile(base) as z:
        assert 'assets/carlito/protection.json' not in z.namelist(),'Use an unprotected base APK'
    entries={'car-ui/'+name:ROOT/name for name in FILES}
    deps=json.loads((ROOT/'repackage-deps.json').read_text(encoding='utf-8'))
    for name,info in deps.items():
        path=ROOT/'build/repackage-tools'/name
        assert hashlib.sha256(path.read_bytes()).hexdigest()==info['sha256'],name
        entries['car-ui/build/repackage-tools/'+name]=path
    entries['car-ui/input/base.apk']=base
    for path in sorted(verification.rglob('*')):
        if path.is_file() and path.suffix in {'.json','.txt','.png'}:
            entries['verification/package-variants/'+path.relative_to(verification).as_posix()]=path
    forbidden={'.pk8','.jks','.keystore','.p12','.pfx'}
    for name,path in entries.items():
        assert path.is_file(),path
        assert path.suffix.lower() not in forbidden and 'repackage.local.json' not in name
        assert name.count('Factory.java')==0 or name.endswith('Factory.java.in')
    manifest={name:{'bytes':path.stat().st_size,'sha256':hashlib.sha256(path.read_bytes()).hexdigest()} for name,path in entries.items()}
    output.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(output,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
        for name,path in entries.items():z.write(path,name)
        z.writestr('SHA256.json',json.dumps(manifest,ensure_ascii=False,indent=2))
        z.writestr('开始使用.txt','先阅读 car-ui/PACKAGE_VARIANTS.md，再双击 car-ui/一键改包名.cmd。\n默认图标已附，当前基础APK为 car-ui/input/base.apk。签名私钥需自行选择；环境要求见说明。\n')
    with zipfile.ZipFile(output) as z:
        assert z.testzip() is None
        for name,item in manifest.items():assert hashlib.sha256(z.read(name)).hexdigest()==item['sha256'],name
    print(json.dumps({'file':str(output),'bytes':output.stat().st_size,'sha256':hashlib.sha256(output.read_bytes()).hexdigest(),'allowlisted_files':len(entries),'private_key_included':False},ensure_ascii=False,indent=2))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--base',type=Path,required=True);p.add_argument('--verification',type=Path,required=True);p.add_argument('--output',type=Path,required=True)
    a=p.parse_args();make_toolkit(a.base,a.verification,a.output)

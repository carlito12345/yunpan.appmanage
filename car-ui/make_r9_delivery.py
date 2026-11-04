"""Archive tracked recovered source + two signed R9 APKs + an explicit safe evidence list.

Never walk the workspace/attachments or temporary bootstrap material. Run after source sync.
"""
import argparse
import hashlib
import json
import shutil
import subprocess
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT=Path(__file__).resolve().parent
WORKSPACE=ROOT.parent

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def archive(repo,output,source_zip=None):
    assert (repo/'.git').is_dir() and output.parent.resolve()==WORKSPACE.resolve()
    revision=subprocess.check_output(['git','-C',str(repo),'rev-parse','HEAD'],text=True).strip()
    subprocess.run(['git','-C',str(repo),'diff','--cached','--quiet','HEAD'],check=True)
    entries=subprocess.check_output(['git','-C',str(repo),'ls-files','-s','-z']).split(b'\0');blobs={}
    for entry in entries:
        if entry:
            meta,name=entry.split(b'\t',1);assert meta.split()[2]==b'0';blobs[name.decode('utf-8')]=meta.split()[1].decode()
    names=list(blobs)
    assert len(names)>33000
    forbidden={'.pk8','.jks','.keystore','.p12','.pfx','.pyc'}
    for name in names:
        p=Path(name);assert not p.is_absolute() and '..' not in p.parts
        assert p.suffix.lower() not in forbidden and not any(v in p.parts for v in ['.git','.work','.codex-attachments'])
        assert 'build/vm-' not in name and '/previews/' not in name
    standard=json.loads((ROOT/'build/package-verification.json').read_text(encoding='utf-8'))
    protected=json.loads((ROOT/'build/protection-verification.json').read_text(encoding='utf-8'))
    runtime=json.loads((ROOT/'build/vm-r9/runtime-report.json').read_text(encoding='utf-8'))
    assert runtime['installed_apk_sha256']==protected['sha256'] and runtime['preferences_modified'] is False
    snapshot=json.loads((ROOT/'build/compiled-sources.json').read_text())
    assert len(snapshot['source_files'])==17 and all(sha(ROOT/n)==h for n,h in snapshot['source_files'].items())
    tests=[ET.parse(p).getroot() for p in (ROOT/'build/test-results/test').glob('TEST-*.xml')]
    assert len(tests)==10 and sum(int(t.get('tests')) for t in tests)==59
    assert all(t.get('failures')==t.get('errors')=='0' for t in tests)
    extras={}
    for report in [standard,protected]:
        p=ROOT/report['apk'];assert sha(p)==report['sha256']
        extras['car-ui/'+p.name]=p
    for entry in runtime['screenshots']:
        name=entry['path'];assert name in {'lan-portrait-redacted.png','lan-landscape-redacted.png','file-after-close.png'} and Path(name).name==name
        p=ROOT/'build/vm-r9'/name;assert sha(p)==entry['sha256'];extras['checks/vm-r9/'+name]=p
    for name in ['runtime-report.json','final-installation.json','qr-evidence.json']:
        extras['checks/vm-r9/'+name]=ROOT/'build/vm-r9'/name
    for name in ['package-verification.json','protection-verification.json','compiled-sources.json','source-patches.json','gradle-test-r9-final.log','signature-verification.log','zipalign-verification.log','protection-signature-verification.log','protection-all-schemes-verification.log','protection-zipalign-verification.log','dex-review/dex-comparison.json']:
        extras['checks/'+name]=ROOT/'build'/name
    # Offline test fixtures, not VM data; original APK input and Maven dependencies remain external.
    for folder,pattern in [('test-deps','*.jar'),('test-r','*.java'),('test-legacy','*.java')]:
        for p in (ROOT/'build'/folder).rglob(pattern):extras['car-ui/build/'+p.relative_to(ROOT/'build').as_posix()]=p
    for name in runtime['native_fixture_screenshots']:
        assert name.startswith('r9-lan-') and Path(name).name==name
        extras['checks/native-fixtures/'+name]=ROOT/'previews/regressions-r4'/name
    delivery={'revision':'R9','source_commit':revision,'source_commit_url':'https://github.com/carlito12345/yunpan.appmanage/commit/'+revision,'tracked_source_files':len(names),'tests':59,'compatible_apk':standard,'protected_apk':protected,'public_source_poster_sha256':standard['public_source_poster_sha256'],'private_signing_key_included':False,'temporary_encryption_sources_included':False,'runtime_material_embedded_in_delivered_apk':True,'original_input_apk_included':False,'jvm_scope':'UI/real layouts and bounded bindings; not all business controllers','vm_scope':'Android11/API30 protected APK launch, file entry, LAN QR, rotation, offline decode and Return only'}
    prefix=''
    if source_zip:
        # A GitHub snapshot of this exact commit avoids opening 34k loose files on Windows.
        with zipfile.ZipFile(source_zip) as source:
            files=[n for n in source.namelist() if not n.endswith('/')];prefix=files[0].split('/')[0]+'/'
            assert all(n.startswith(prefix) for n in files)
            assert {n[len(prefix):] for n in files}==set(names)
            for name,expected in blobs.items():
                content=source.read(prefix+name)
                assert hashlib.sha1(b'blob '+str(len(content)).encode()+b'\0'+content).hexdigest()==expected,name
            for name,digest in snapshot['source_files'].items():assert hashlib.sha256(source.read(prefix+'car-ui/'+name)).hexdigest()==digest
            assert source.testzip() is None
        shutil.copyfile(source_zip,output)
    with zipfile.ZipFile(output,'a' if source_zip else 'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
        if not source_zip:
            for name in names:
                p=repo/Path(name)
                # Long recovered Java file paths exceed traditional Windows MAX_PATH.
                z.writestr(name,Path('\\\\?\\'+str(p.resolve())).read_bytes())
        for name,p in sorted(extras.items()):z.writestr(prefix+name,p.read_bytes())
        z.writestr(prefix+'DELIVERY.json',json.dumps(delivery,ensure_ascii=False,indent=2).encode())
    with zipfile.ZipFile(output) as z:
        assert z.testzip() is None and len(z.namelist())==len(set(z.namelist()))
        assert not any(Path(n).suffix.lower() in forbidden or '-private.png' in n for n in z.namelist())
    result={'archive':str(output),'bytes':output.stat().st_size,'sha256':sha(output),'source_commit':revision,'files':len(names)+len(extras)+1,'tests':59}
    (ROOT/'build/delivery-r9.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(result,ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--repo',type=Path,default=WORKSPACE/'.work/github-sync');p.add_argument('--output',default='应用管家_R9_完整还原源码与双安装包_20261104.zip');p.add_argument('--source-zip',type=Path)
    a=p.parse_args();assert Path(a.output).name==a.output;archive(a.repo.resolve(),WORKSPACE/a.output,a.source_zip)

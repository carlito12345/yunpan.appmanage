"""Archive tracked recovered source + two signed R8 APKs + an explicit safe evidence list.

Never walk the workspace/attachments or temporary bootstrap material. Run after source sync.
"""
import argparse
import hashlib
import json
import subprocess
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT=Path(__file__).resolve().parent
WORKSPACE=ROOT.parent

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def archive(repo,output):
    assert (repo/'.git').is_dir() and output.parent.resolve()==WORKSPACE.resolve()
    revision=subprocess.check_output(['git','-C',str(repo),'rev-parse','HEAD'],text=True).strip()
    names=subprocess.check_output(['git','-C',str(repo),'ls-files','-z']).decode('utf-8').split('\0');names=[n for n in names if n]
    assert len(names)>33000
    forbidden={'.pk8','.jks','.keystore','.p12','.pfx','.pyc'}
    for name in names:
        p=Path(name);assert not p.is_absolute() and '..' not in p.parts
        assert p.suffix.lower() not in forbidden and not any(v in p.parts for v in ['.git','.work','.codex-attachments'])
        assert 'build/vm-' not in name and '/previews/' not in name
    standard=json.loads((ROOT/'build/package-verification.json').read_text(encoding='utf-8'))
    protected=json.loads((ROOT/'build/protection-verification.json').read_text(encoding='utf-8'))
    runtime=json.loads((ROOT/'build/vm-r8/runtime-report.json').read_text(encoding='utf-8'))
    assert runtime['installed_apk_sha256']==protected['sha256'] and runtime['preferences_modified'] is False
    snapshot=json.loads((ROOT/'build/compiled-sources.json').read_text())
    assert len(snapshot['source_files'])==17 and all(sha(ROOT/n)==h for n,h in snapshot['source_files'].items())
    tests=[ET.parse(p).getroot() for p in (ROOT/'build/test-results/test').glob('TEST-*.xml')]
    assert len(tests)==9 and sum(int(t.get('tests')) for t in tests)==57
    assert all(t.get('failures')==t.get('errors')=='0' for t in tests)
    extras={}
    for report in [standard,protected]:
        p=ROOT/report['apk'];assert sha(p)==report['sha256']
        extras['car-ui/'+p.name]=p
    for entry in runtime['screenshots']:
        name=entry['path'];assert name.startswith('protected-') and Path(name).name==name and name.endswith('.png')
        p=ROOT/'build/vm-r8'/name;assert sha(p)==entry['sha256'];extras['checks/vm-r8/'+name]=p
    for name in ['runtime-report.json','final-installation.json']:
        extras['checks/vm-r8/'+name]=ROOT/'build/vm-r8'/name
    for name in ['package-verification.json','protection-verification.json','compiled-sources.json','source-patches.json','gradle-test-r8-final.log','signature-verification.log','zipalign-verification.log','protection-signature-verification.log','protection-all-schemes-verification.log','protection-zipalign-verification.log','dex-review/dex-comparison.json']:
        extras['checks/'+name]=ROOT/'build'/name
    # Offline test fixtures, not VM data; original APK input and Maven dependencies remain external.
    for folder,pattern in [('test-deps','*.jar'),('test-r','*.java'),('test-legacy','*.java')]:
        for p in (ROOT/'build'/folder).rglob(pattern):extras['car-ui/build/'+p.relative_to(ROOT/'build').as_posix()]=p
    delivery={'revision':'R8','source_commit':revision,'source_commit_url':'https://github.com/carlito12345/yunpan.appmanage/commit/'+revision,'tracked_source_files':len(names),'tests':57,'compatible_apk':standard,'protected_apk':protected,'public_source_poster_sha256':standard['public_source_poster_sha256'],'private_signing_key_included':False,'temporary_encryption_sources_included':False,'runtime_material_embedded_in_delivered_apk':True,'original_input_apk_included':False,'jvm_scope':'UI/real layouts and bounded bindings; not all business controllers','vm_scope':'Android11/API30 protected APK launch, home, catalogue, theme, public-source dialog and rotation only'}
    with zipfile.ZipFile(output,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
        for name in names:
            p=repo/Path(name)
            # Long recovered Java file paths exceed traditional Windows MAX_PATH.
            z.writestr(name,Path('\\\\?\\'+str(p.resolve())).read_bytes())
        for name,p in sorted(extras.items()):z.writestr(name,p.read_bytes())
        z.writestr('DELIVERY.json',json.dumps(delivery,ensure_ascii=False,indent=2).encode())
    with zipfile.ZipFile(output) as z:
        assert z.testzip() is None and len(z.namelist())==len(set(z.namelist()))
        assert not any(Path(n).suffix.lower() in forbidden or '/qr-private' in n for n in z.namelist())
    result={'archive':str(output),'bytes':output.stat().st_size,'sha256':sha(output),'source_commit':revision,'files':len(names)+len(extras)+1,'tests':57}
    (ROOT/'build/delivery-r8.json').write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(result,ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--repo',type=Path,default=WORKSPACE/'.work/github-sync');p.add_argument('--output',default='应用管家_R8_完整还原源码与双安装包_20261104.zip')
    a=p.parse_args();assert Path(a.output).name==a.output;archive(a.repo.resolve(),WORKSPACE/a.output)

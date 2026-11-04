"""Archive current R5 source, checks and explicitly labelled native previews; no private key or raw VM data."""
import hashlib
import json
import xml.etree.ElementTree as ET
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parent
WORKSPACE=ROOT.parent
report=json.loads((ROOT/'build/package-verification.json').read_text(encoding='utf-8'))
assert '-R5-' in report['apk']
assert report['ui_java_sources_current'] and report['v1_v2_v3_verified'] and report['zip_alignment_verified']
assert hashlib.sha256((ROOT/report['apk']).read_bytes()).hexdigest()==report['sha256']
snapshot=json.loads((ROOT/'build/compiled-sources.json').read_text(encoding='utf-8'))
assert all(hashlib.sha256((ROOT/p).read_bytes()).hexdigest()==h for p,h in snapshot['source_files'].items())
tests=list((ROOT/'build/test-results/test').glob('TEST-*.xml'))
results=[ET.parse(p).getroot() for p in tests]
assert len(results)==5 and all(t.get('failures')=='0' and t.get('errors')=='0' for t in results)
assert (WORKSPACE/'.impeccable/finish-review-r5.md').is_file()
files=[]
for folder in ['src','baseline','patched-smali','previews/regressions-r3','previews/regressions-r4','previews/regressions-r5']:
    files.extend(p for p in (ROOT/folder).rglob('*') if p.is_file() and not p.name.endswith('-1640.png'))
for name in ['README.md','交付说明.md','模块检查记录-R3.md','模块检查记录-R4.md','VM测试记录-R3.md','R4修复与验证.md','R5修复与验证.md','模块检查记录-R5.md','build.gradle','settings.gradle','build_ui.py','generate_layouts.py','prepare_test_resources.py','prepare_binding_tests.py','module_report.py','package_apk.py','make_r4_delivery.py','make_r5_delivery.py','platform.x509.pem',report['apk']]:
    files.append(ROOT/name)
for name in ['package-verification.json','package-verification-r3-vm.json','compiled-sources.json','source-patches.json','module-audit-summary.json','module-coverage.json','legacy-layout-inventory.json','legacy-module-inventory.json','test-resource-dependencies.json','original-binding-test-provenance.json','gradle-test-r5-final.log','javac.log','d8.log','signature-verification.log','zipalign-verification.log','dex-review/dex-comparison.json','dex-review/dex-differences.txt']:
    files.append(ROOT/'build'/name)
files.extend(tests)
files.extend((ROOT/'build/test-deps').glob('*.jar'))
files.extend((ROOT/'build/test-r').rglob('*.java'))
files.extend((ROOT/'build/test-legacy').rglob('*.java'))
runtime=json.loads((ROOT/'build/vm-r5/runtime-report.json').read_text(encoding='utf-8'))
assert runtime['installed_apk_sha256']==report['sha256']
assert runtime['theme_restored']=='mono/day' and runtime['rotation_restored']=={'user_rotation':0,'accelerometer_rotation':0}
assert sum(int(t.get('tests')) for t in results)==39
files.append(ROOT/'build/vm-r5/runtime-report.json')
for name in runtime['delivery_screenshots']:
    assert name.startswith('release/') and name.endswith('.png')
    files.append(ROOT/'build/vm-r5'/name)
archive=WORKSPACE/'应用管家_弹窗与子页修复_R5_源码与检查_20261104.zip'
with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as z:
    for p in sorted(set(files)):
        assert p.suffix.lower()!='.pk8'
        z.write(p,'car-ui/'+p.relative_to(ROOT).as_posix())
    for name in ['PRODUCT.md','DESIGN.md','.impeccable/design.json','.impeccable/failure-review-r5.md','.impeccable/finish-review-r5.md','.impeccable/vm-review-r3.md']:
        z.write(WORKSPACE/name,name)
with zipfile.ZipFile(archive) as z:
    assert z.testzip() is None
    assert not any(n.lower().endswith('.pk8') or 'vm-validation/' in n for n in z.namelist())
print(json.dumps({'archive':str(archive),'bytes':archive.stat().st_size,'sha256':hashlib.sha256(archive.read_bytes()).hexdigest(),'tests':sum(int(t.get('tests')) for t in results)},ensure_ascii=False,indent=2))

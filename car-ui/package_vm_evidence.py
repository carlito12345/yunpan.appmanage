"""Package only reviewed, credential-free VM evidence. Never glob raw captures."""
import hashlib
import json
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent
WORKSPACE = ROOT.parent
OUT = ROOT / 'build/vm-validation'
names = [
    'r3-functions-cyan', 'r3-functions-landscape-cyan',
    'r3-automation-cyan', 'r3-automation-landscape-cyan',
    'r3-files-cyan', 'r3-files-landscape-warm', 'r3-files-warm-to-cyan-live',
    'r3-network-cyan', 'r3-network-landscape-cyan',
    'r3-installer-menu-only', 'r3-theme-dialog-mono', 'r3-theme-dialog-landscape',
    'r3-settings-display-cyan', 'r3-settings-install-cyan',
    'r3-settings-connection-cyan', 'r3-settings-landscape-cyan',
    'r3-apps-cyan', 'r3-apps-search-result',
    'r3-home-landscape-mono', 'r3-home-edit-dialog',
    'r3-home-add-picker', 'r3-home-custom-link', 'r3-final-home',
]
files = {f'screenshots/{n}.png': OUT / (n + '.png') for n in names}
files.update({
    'VM测试记录-R3.md': ROOT / 'VM测试记录-R3.md',
    'vm-verification.json': OUT / 'vm-verification.json',
    'package-verification.json': ROOT / 'build/package-verification.json',
    'runtime-errors.log': OUT / 'r3-runtime-errors.log',
    'vm-review-r3.md': WORKSPACE / '.impeccable/vm-review-r3.md',
    'context/README.md': ROOT / 'README.md',
    'context/交付说明.md': ROOT / '交付说明.md',
    'context/DESIGN.md': WORKSPACE / 'DESIGN.md',
    'context/design.json': WORKSPACE / '.impeccable/design.json',
})
for p in (WORKSPACE / '.impeccable/surfaces').glob('*'):
    if p.is_file(): files['context/surfaces/' + p.name] = p
manifest = {
    'type': 'installed R3 test VM evidence supplement; original APK unchanged',
    'screenshots': 'ADB screencap; menu-only crop is (338,690,1102,1230)',
    'source_apk_sha256': 'ca7eac737e65e4afe55d3283c3e228f5672997b0a51622851a0b50603022eed2',
    'files': {name: hashlib.sha256(p.read_bytes()).hexdigest() for name, p in files.items()},
}
archive = WORKSPACE / '应用管家_R3_VM测试报告与截图_20261104.zip'
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as z:
    for name, p in files.items(): z.write(p, name)
    z.writestr('manifest.json', json.dumps(manifest, ensure_ascii=False, indent=2))
with zipfile.ZipFile(archive) as z:
    assert z.testzip() is None
    assert set(z.namelist()) == set(files) | {'manifest.json'}
    assert not any(n.lower().endswith(('.pk8', '.apk')) or 'advanced-cyan' in n or n.endswith('installer-menu-cyan.png') for n in z.namelist())
print(json.dumps({'archive': str(archive), 'bytes': archive.stat().st_size,
                  'sha256': hashlib.sha256(archive.read_bytes()).hexdigest(),
                  'screenshots': len(names)}, ensure_ascii=False, indent=2))

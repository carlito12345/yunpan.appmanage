"""Small ADB evidence helper for the explicitly supplied test VM; never clears app data."""
import argparse
import hashlib
import json
import subprocess
import xml.etree.ElementTree as ET
from pathlib import Path

ROOT=Path(__file__).resolve().parent
ADB=Path('C:/Users/di-yu/Documents/Codex/2026-10-10/gd-gd/toolchain/android-sdk/platform-tools/adb.exe')
SERIAL='192.168.1.18:10000'
OUT=ROOT/'build/vm-validation'
OUT.mkdir(exist_ok=True)

def adb(*args,binary=False,timeout=45):
    r=subprocess.run([str(ADB),'-s',SERIAL,*args],stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=timeout)
    if r.returncode:raise RuntimeError(r.stderr.decode('utf-8',errors='replace')+r.stdout.decode('utf-8',errors='replace'))
    return r.stdout if binary else r.stdout.decode('utf-8',errors='replace').strip()

def snapshot(name):
    path=OUT/(name+'.png');path.write_bytes(adb('exec-out','screencap','-p',binary=True));print('SCREEN',path)
    try:
        adb('shell','uiautomator','dump','--compressed','/data/local/tmp/codex-ui-check.xml',timeout=30)
        xml=adb('exec-out','cat','/data/local/tmp/codex-ui-check.xml',binary=True)
    except (RuntimeError,subprocess.TimeoutExpired) as error:
        print('UI hierarchy unavailable; screenshot retained:',str(error));return
    (OUT/(name+'.xml')).write_bytes(xml)
    root=ET.fromstring(xml);nodes=[]
    for n in root.iter('node'):
        a=n.attrib
        if a.get('text') or a.get('content-desc'):
            nodes.append({k:a.get(k) for k in ['text','content-desc','resource-id','class','bounds','clickable','scrollable']})
    (OUT/(name+'-nodes.json')).write_text(json.dumps(nodes,ensure_ascii=False,indent=2),encoding='utf-8')
    print(json.dumps(nodes,ensure_ascii=False,indent=2))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('action',choices=['screen','snapshot','backup','shell']);p.add_argument('args',nargs='*');a=p.parse_args()
    if a.action=='snapshot':snapshot(a.args[0])
    elif a.action=='screen':
        path=OUT/(a.args[0]+'.png');path.write_bytes(adb('exec-out','screencap','-p',binary=True));print(path)
    elif a.action=='backup':
        package_path=adb('shell','pm','path','com.yunpan.appmanage').splitlines()[0].removeprefix('package:')
        target=OUT/'before-installed.apk';print(adb('pull',package_path,str(target)));print('SHA256',hashlib.sha256(target.read_bytes()).hexdigest())
    else:print(adb('shell',*a.args))

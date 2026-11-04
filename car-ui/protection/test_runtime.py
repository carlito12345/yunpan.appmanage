"""Build/run an isolated API28+ ART integration probe using the production AES loader.

Requires a disposable emulator or an authorized device; refuses to replace an installed app.
Example: python protection/test_runtime.py --key signing/platform.pk8 --cert platform.x509.pem --serial emulator-5580
The test APK, generated key-bearing loader and logs stay under build/; only a summary is exported.
"""
import argparse
import json
import re
import subprocess
import sys
import time
import uuid
import zipfile
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
import protect_apk
from build_ui import JDK,SDK,BUILDTOOLS

PACKAGE='com.carlito.secureprobe.r12'
FIXTURE=ROOT/'protection/probe'
STAGES={'original-factory','attach','provider','application','activity','custom-view','xml-inflation','service-process','receiver-process'}

def run(command):
    result=subprocess.run(list(map(str,command)),capture_output=True,encoding='utf-8',errors='replace',timeout=180)
    if result.returncode:raise RuntimeError(result.stdout+result.stderr)
    return result.stdout.strip()

def build(work,key,cert):
    work.mkdir(parents=True,exist_ok=True);token=uuid.uuid4().hex
    source=work/'Probe.java';source.write_text((FIXTURE/'Probe.java').read_text(encoding='utf-8').replace('@@TOKEN@@',token),encoding='utf-8')
    classes=work/'classes';classes.mkdir(exist_ok=True)
    android=SDK/'platforms/android-36/android.jar'
    run([JDK/'javac.exe','-encoding','UTF-8','--release','8','-cp',android,'-d',classes,source,FIXTURE/'Extra.java'])
    dex=[]
    for secondary in [False,True]:
        jar=work/('secondary.jar' if secondary else 'primary.jar')
        with zipfile.ZipFile(jar,'w') as z:
            for p in sorted(classes.rglob('*.class')):
                if (p.name=='Extra.class')==secondary:z.write(p,p.relative_to(classes).as_posix())
        folder=work/('secondary-dex' if secondary else 'primary-dex');folder.mkdir(exist_ok=True)
        run([JDK/'java.exe','-cp',BUILDTOOLS/'lib/d8.jar','com.android.tools.r8.D8','--min-api','28','--lib',android,'--output',folder,jar]);dex.append(folder/'classes.dex')
    resource=work/'res/layout';resource.mkdir(parents=True,exist_ok=True);(resource/'probe.xml').write_bytes((FIXTURE/'probe.xml').read_bytes())
    compiled=work/'compiled.zip';run([BUILDTOOLS/'aapt2.exe','compile','--dir',work/'res','-o',compiled])
    linked=work/'resources.apk';run([BUILDTOOLS/'aapt2.exe','link','--manifest',FIXTURE/'AndroidManifest.xml','-I',android,'-o',linked,compiled])
    ndk=next(p for p in sorted((SDK/'ndk').iterdir(),reverse=True) if (p/'toolchains/llvm/prebuilt/windows-x86_64/bin/clang.exe').is_file())
    native={}
    for abi,triple in [('x86','i686-linux-android28'),('x86_64','x86_64-linux-android28'),('arm64-v8a','aarch64-linux-android28')]:
        library=work/(abi+'-libloader_probe.so')
        run([ndk/'toolchains/llvm/prebuilt/windows-x86_64/bin/clang.exe','--target='+triple,'-shared','-fPIC','-Wl,-z,max-page-size=16384','-o',library,FIXTURE/'native.c']);native[abi]=library
    unsigned=work/'unsigned.apk'
    with zipfile.ZipFile(linked) as before,zipfile.ZipFile(unsigned,'w',zipfile.ZIP_DEFLATED) as after:
        for item in before.infolist():after.writestr(item,before.read(item))
        for i,path in enumerate(dex):after.writestr('classes'+(str(i+1) if i else '')+'.dex',path.read_bytes())
        for abi,path in native.items():after.writestr('lib/'+abi+'/libloader_probe.so',path.read_bytes())
    aligned=work/'aligned.apk';plain=work/'compatible.apk'
    run([BUILDTOOLS/'zipalign.exe','-P','16','-f','4',unsigned,aligned])
    run([JDK/'java.exe','-jar',BUILDTOOLS/'lib/apksigner.jar','sign','--min-sdk-version','28','--key',key,'--cert',cert,'--out',plain,aligned])
    protect_apk.PROTECTION_WORK=work/'protection';protect_apk.BUILD=work/'logs'
    protected=work/'protected.apk';protect_apk.protect(plain,key,cert,protected)
    (work/'run-token.txt').write_text(token,encoding='ascii');return protected,token

def exercise(work,apk,token,serial):
    def adb(*args):return run([SDK/'platform-tools/adb.exe','-s',serial,*args])
    if 'package:'+PACKAGE in adb('shell','pm','list','packages',PACKAGE).splitlines():raise RuntimeError('Probe package already exists; refusing to replace it')
    installed=False;report={'serial':serial,'api':int(adb('shell','getprop','ro.build.version.sdk')),'application_id':PACKAGE,'aes_apk_sha256':protect_apk.sha(apk.read_bytes()),'stages':[],'cold_starts':0,'removed':False}
    try:
        result=adb('install',str(apk));assert 'Success' in result,result;installed=True
        for i in range(2):
            adb('shell','am','force-stop',PACKAGE)
            baseline=sum(token in line for line in adb('logcat','-d','-v','brief','-s','AES_RUNTIME_PROBE:I').splitlines())
            launch=adb('shell','am','start','-W','-n',"'"+PACKAGE+"/com.carlito.probe.Probe$Screen'")
            deadline=time.monotonic()+60
            while True:
                logs='\n'.join(line for line in adb('logcat','-d','-v','brief','-s','AES_RUNTIME_PROBE:I').splitlines() if token in line)
                (work/'runtime.log').write_text(logs,encoding='utf-8')
                cycle='\n'.join(logs.splitlines()[baseline:])
                if token+' FAIL ' in cycle:raise RuntimeError(cycle)
                stages=set(re.findall(re.escape(token)+r' PASS ([a-z-]+)',cycle))
                if STAGES<=stages:break
                if time.monotonic()>deadline:raise RuntimeError('Missing runtime stages: '+str(STAGES-stages)+'\n'+launch+'\n'+logs)
                time.sleep(1)
            report['cold_starts']+=1;report['stages']=sorted(stages)
    finally:
        if installed:report['removed']='Success' in adb('uninstall',PACKAGE)
        (work/'runtime-summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf-8')
    assert report['removed'];print(json.dumps(report,ensure_ascii=False,indent=2))

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--key',type=Path,required=True);p.add_argument('--cert',type=Path,default=ROOT/'platform.x509.pem');p.add_argument('--serial');p.add_argument('--work-dir',type=Path,default=ROOT/'build/protection-probe');p.add_argument('--reuse',action='store_true')
    a=p.parse_args();work=a.work_dir.resolve()
    if a.reuse:apk=work/'protected.apk';token=(work/'run-token.txt').read_text(encoding='ascii')
    else:apk,token=build(work,a.key.resolve(),a.cert.resolve())
    if a.serial:exercise(work,apk,token,a.serial)

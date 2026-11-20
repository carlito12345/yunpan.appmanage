"""Test-only AndroidX jars and R tables for inflating the APK's real binary XML."""
import hashlib
import json
import re
import shutil
import sys
import zipfile
import xml.etree.ElementTree as ET
from pathlib import Path

from generate_layouts import RES

ROOT=Path(__file__).resolve().parent
CACHE=Path(sys.argv[1]) if len(sys.argv)>1 else Path('C:/Users/di-yu/Documents/Codex/2026-10-10/gd-gd/toolchain/gradle-cache/caches/modules-2/files-2.1')
TARGET=ROOT/'build/test-deps'
TARGET.mkdir(exist_ok=True)
dependencies=[('androidx.constraintlayout','constraintlayout','2.0.1'),('androidx.recyclerview','recyclerview','1.1.0'),('androidx.core','core','1.13.1'),('androidx.customview','customview','1.1.0')]
proof=[]
public={(x.get('type'),x.get('name')):x.get('id') for x in ET.parse(RES/'values/public.xml').getroot()}
packages={'constraintlayout':'androidx.constraintlayout.widget','recyclerview':'androidx.recyclerview','core':'androidx.core','customview':'androidx.customview'}
for group,artifact,version in dependencies:
    aar=next((CACHE/group/artifact/version).rglob('*.aar'))
    with zipfile.ZipFile(aar) as z:
        (TARGET/(artifact+'.jar')).write_bytes(z.read('classes.jar'))
        symbols=[line.split(' ',3) for line in z.read('R.txt').decode().splitlines()]
    arrays={name:re.findall(r'0x[0-9a-fA-F]+|\b\d+\b',value) for typ,kind,name,value in symbols if typ=='int[]'}
    for typ,kind,name,value in symbols:
        if kind!='styleable' or typ!='int':continue
        array=next((n for n in sorted(arrays,key=len,reverse=True) if name.startswith(n+'_')),None)
        if array:
            attr=name[len(array)+1:]
            if not attr.startswith('android_') and ('attr',attr) in public:arrays[array][int(value)]=public['attr',attr]
    by_type={}
    for typ,kind,name,value in symbols:
        if typ=='int[]':value='{'+','.join(arrays[name])+'}'
        elif kind!='styleable':value=public.get((kind,name),value)
        by_type.setdefault(kind,[]).append('public static final '+typ+' '+name+'='+value+';')
    package=packages[artifact]
    path=ROOT/'build/test-r'/Path(package.replace('.','/'))/'R.java';path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text('package '+package+'; public final class R {'+'\n'.join('public static final class '+k+' {'+'\n'.join(v)+'}' for k,v in by_type.items())+'}',encoding='utf-8')
    proof.append({'artifact':f'{group}:{artifact}:{version}','aar_sha256':hashlib.sha256(aar.read_bytes()).hexdigest()})

# Robolectric's AndroidX runtime AARs need their classes.jar on this Java-only classpath.
for group, artifact, version in (
    ('androidx.test', 'monitor', '1.8.0'),
    ('androidx.test.espresso', 'espresso-idling-resource', '3.7.0'),
):
    aar = next((CACHE / group / artifact / version).rglob('*.aar'))
    with zipfile.ZipFile(aar) as archive:
        (TARGET / f'{artifact}.jar').write_bytes(archive.read('classes.jar'))
    proof.append({'artifact': f'{group}:{artifact}:{version}', 'aar_sha256': hashlib.sha256(aar.read_bytes()).hexdigest()})

solver=next((CACHE/'androidx.constraintlayout/constraintlayout-solver/2.0.1').rglob('*.jar'))
shutil.copyfile(solver,TARGET/'constraintlayout-solver.jar')
collection=next((CACHE/'androidx.collection/collection/1.1.0').rglob('*.jar'))
shutil.copyfile(collection,TARGET/'collection.jar')
kotlin=next((CACHE/'org.jetbrains.kotlin/kotlin-stdlib/1.9.22').rglob('*.jar'))
shutil.copyfile(kotlin,TARGET/'kotlin-stdlib.jar')
(ROOT/'build/test-resource-dependencies.json').write_text(json.dumps(proof,indent=2),encoding='utf-8')
print('Prepared real-APK binary resource inflation dependencies (test-only).')

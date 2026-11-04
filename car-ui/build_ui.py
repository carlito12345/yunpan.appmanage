import hashlib
import json
import re
import shutil
import struct
import subprocess
import sys
import zipfile
from pathlib import Path

PROJECT = Path(__file__).resolve().parent
WORKSPACE = PROJECT.parent
BASE = Path(r'C:/Users/di-yu/Documents/Codex/2026-10-10/gd-gd/toolchain')
JDK = BASE / 'java/jdk-17.0.20.1+1/bin'
SDK = BASE / 'android-sdk'
BUILDTOOLS = SDK / 'build-tools/36.0.0'
APKTOOL = Path(r'C:/Users/di-yu/Documents/Codex/2026-11-02/homes-linecode-codex-cache-workspace-files/apktool.jar')
DECODED = WORKSPACE / '公签版_反编译/apktool'
BUILD = PROJECT / 'build'
BUILD.mkdir(exist_ok=True)

def run(args, log):
    with (BUILD/log).open('wb') as output:
        result = subprocess.run(list(map(str,args)),cwd=WORKSPACE,stdout=output,stderr=subprocess.STDOUT)
    if result.returncode:
        print((BUILD/log).read_text(encoding='utf-8',errors='replace')[-10000:],flush=True)
        raise RuntimeError(f'{log} failed: {result.returncode}')

def compile_ui():
    from generate_layouts import generate
    generate()
    sources = sorted((PROJECT/'src/main/java').rglob('*.java'))
    args = BUILD/'sources.args'
    args.write_text('\n'.join('"'+p.as_posix()+'"' for p in sources),encoding='utf-8')
    classes=BUILD/'native-classes'
    assert classes.resolve().is_relative_to(BUILD.resolve())
    if classes.exists(): shutil.rmtree(classes)
    classes.mkdir()
    run([JDK/'javac.exe','-J-Dfile.encoding=UTF-8','-encoding','UTF-8','--release','8','-cp',SDK/'platforms/android-36/android.jar','-d',classes,'@'+str(args)],'javac.log')
    class_jar=BUILD/'car-ui.jar'
    with zipfile.ZipFile(class_jar,'w',zipfile.ZIP_DEFLATED) as archive:
        for path in sorted(classes.rglob('*.class')): archive.write(path,path.relative_to(classes).as_posix())
    dex=BUILD/'dex';dex.mkdir(exist_ok=True)
    run([JDK/'java.exe','-cp',BUILDTOOLS/'lib/d8.jar','com.android.tools.r8.D8','--min-api','17','--lib',SDK/'platforms/android-36/android.jar','--output',dex,class_jar],'d8.log')
    assert (dex/'classes.dex').read_bytes().startswith(b'dex\n')
    snapshot={'source_files':{p.relative_to(PROJECT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sources},
              'ui_dex_sha256':hashlib.sha256((dex/'classes.dex').read_bytes()).hexdigest(),
              'ui_classes':struct.unpack_from('<I',(dex/'classes.dex').read_bytes(),96)[0]}
    (BUILD/'compiled-sources.json').write_text(json.dumps(snapshot,indent=2),encoding='utf-8')
    print('Native Java UI compiled to DEX.',flush=True)

def method(text, signature, transform):
    pattern=re.compile(r'(^\.method[^\n]*'+re.escape(signature)+r'\n)(.*?)(^\.end method)',re.M|re.S)
    count=0
    def replace(match):
        nonlocal count
        count+=1
        body=re.sub(r'^\s*\.line \d+\s*$', '', match[2],flags=re.M)
        return match[1]+transform(body)+match[3]
    result=pattern.sub(replace,text)
    assert count==1,(signature,count)
    return result

def patch_sources():
    changes={}
    def patch(relative, transform):
        path=DECODED/'smali'/relative
        backup=PROJECT/'baseline'/relative
        backup.parent.mkdir(parents=True,exist_ok=True)
        if not backup.exists(): shutil.copyfile(path,backup)
        original=backup.read_text(encoding='utf-8')
        updated=transform(original)
        assert updated!=original,relative
        if path.read_text(encoding='utf-8')!=updated: path.write_text(updated,encoding='utf-8')
        changes[relative]={'original_sha256':hashlib.sha256(backup.read_bytes()).hexdigest(),'patched_sha256':hashlib.sha256(path.read_bytes()).hexdigest()}
    def app(text):
        needle='invoke-super {p0}, Landroid/app/Application;->onCreate()V'
        assert text.count(needle)==1
        return text.replace(needle,needle+'\n\n    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->install(Landroid/app/Application;)V')
    patch('com/yunpan/appmanage/base/AppStart.smali',app)
    def base(text):
        text=method(text,'attachBaseContext(Landroid/content/Context;)V',lambda body: '    .locals 0\n\n    invoke-super {p0, p1}, Lq/i;->attachBaseContext(Landroid/content/Context;)V\n    return-void\n')
        def density(body):
            pattern=r'sget-object (v\d+), Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;\s+iget \1, \1, Lcom/yunpan/appmanage/util/w;->r:I\s+int-to-float \1, \1'
            def replace(match): return 'invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->designWidth(Landroid/content/Context;)F\n\n    move-result '+match[1]
            updated,count=re.subn(pattern,replace,body)
            assert count==1,body[-2500:]
            return updated
        text=method(text,'getResources()Landroid/content/res/Resources;',density)
        text=method(text,'getSizeInDp()F',lambda body: '    .locals 1\n    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->designWidth(Landroid/content/Context;)F\n    move-result v0\n    return v0\n')
        def configuration(body):
            needle='invoke-super {p0, p1}, Lq/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V'
            assert body.count(needle)==1
            return body.replace(needle,needle+'\n\n    invoke-virtual {p0}, Lda/g;->v()V')
        text=method(text,'onConfigurationChanged(Landroid/content/res/Configuration;)V',configuration)
        text=method(text,'v()V',density)
        def init(body):
            needle='invoke-virtual {p0}, Lda/g;->u()V'
            assert body.count(needle)==1
            return body.replace(needle,needle+'\n\n    invoke-static {p0}, Lcom/yunpan/appmanage/carui/LegacyUi;->activity(Landroid/app/Activity;)V')
        return method(text,'onCreate(Landroid/os/Bundle;)V',init)
    patch('da/g.smali',base)
    def grids(text):
        for signature in ['<init>(Landroid/content/Context;I)V','<init>(Landroid/content/Context;IIZ)V']:
            text=method(text,signature,lambda body: body.replace('.locals 0','.locals 0\n\n    invoke-static {p1, p2}, Lcom/yunpan/appmanage/carui/CarUi;->adaptColumns(Landroid/content/Context;I)I\n    move-result p2',1))
        return text
    patch('com/owen/tvrecyclerview/widget/V7GridLayoutManager.smali',grids)
    def adapter(text):
        needle=re.compile(r'(    invoke-virtual \{p0, p1, p2, (p3|v0)\}, Lc6/g;->z\(Landroidx/recyclerview/widget/RecyclerView\$ViewHolder;ILjava/lang/Object;\)V)')
        updated,count=needle.subn(lambda m:m[1]+'\n\n    invoke-static {p1, '+m[2]+'}, Lcom/yunpan/appmanage/carui/LegacyUi;->holder(Ljava/lang/Object;Ljava/lang/Object;)V',text)
        assert count==2,count
        return updated
    patch('c6/g.smali',adapter)
    def holder(text):
        def init(body):
            body=body.replace('.locals 2','.locals 3\n    move v2, p1',1)
            needle='move-result-object p1'
            assert body.count(needle)==1
            return body.replace(needle,needle+'\n\n    invoke-static {p1, v2}, Lcom/yunpan/appmanage/carui/LegacyUi;->inflated(Landroid/view/View;I)V')
        return method(text,'<init>(ILandroid/view/ViewGroup;)V',init)
    patch('h6/a.smali',holder)
    def fragment(text):
        def init(body):
            needle='invoke-virtual {p0}, Lda/h;->k()V'
            assert body.count(needle)==1
            return body.replace(needle,needle+'\n\n    invoke-static {p0}, Lcom/yunpan/appmanage/carui/LegacyUi;->fragment(Ljava/lang/Object;)V')
        return method(text,'h(Z)V',init)
    patch('da/h.smali',fragment)
    def floating(text):
        def inflate(body):
            body=body.replace('.locals 3','.locals 4\n    move v3, p1',1)
            needle='move-result-object p1'
            assert body.count(needle)==1
            return body.replace(needle,needle+'\n\n    invoke-static {p1, v3}, Lcom/yunpan/appmanage/carui/LegacyUi;->surface(Landroid/view/View;I)V')
        return method(text,'j(I)V',inflate)
    patch('v8/a.smali',floating)
    patch('ha/a4.smali',lambda text: method(text,'show()V',lambda body: body.replace('    return-void','    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->dialog(Landroid/app/Dialog;)V\n\n    return-void')))
    def back(text):
        def insert(body):
            return body.replace('.locals 7','.locals 7\n\n    invoke-static {p0}, Lcom/yunpan/appmanage/carui/CarUi;->back(Landroid/app/Activity;)Z\n    move-result v0\n    if-eqz v0, :carui_original_back\n    return-void\n    :carui_original_back',1)
        return method(text,'onBackPressed()V',insert)
    patch('com/yunpan/appmanage/ui/ActivityHome.smali',back)
    (BUILD/'source-patches.json').write_text(json.dumps(changes,indent=2),encoding='utf-8')
    print('Patched '+str(len(changes))+' UI integration classes; backups retained.',flush=True)

if __name__=='__main__':
    compile_ui()
    if '--patch' in sys.argv: patch_sources()

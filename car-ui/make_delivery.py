import hashlib
import json
import re
import shutil
import xml.etree.ElementTree as ET
import zipfile
from pathlib import Path

root=Path(__file__).resolve().parent
workspace=root.parent
report=json.loads((root/'build/package-verification.json').read_text(encoding='utf-8'))
test_reports=list((root/'build/test-results/test').glob('TEST-*.xml'))
assert len(test_reports)>=2
tests=[ET.parse(p).getroot() for p in test_reports]
assert all(t.get('failures')=='0' and t.get('errors')=='0' for t in tests)
test_count=sum(int(t.get('tests')) for t in tests)
review=workspace/'.impeccable/finish-review-r3.md'
assert review.is_file()
review_text=review.read_text(encoding='utf-8')
disposition=re.search(r'^Disposition:\s*\*{0,2}(\w+)',review_text,re.M|re.I)
assert disposition and disposition[1].lower() in ('ship','recapture')
assert len(re.findall(r'^## ',review_text,re.M))==5
assert report['ui_java_sources_current'] and report['v1_v2_v3_verified'] and report['original_resources_byte_identical']
json.loads((workspace/'.impeccable/design.json').read_text(encoding='utf-8'))
apk=root/report['apk'];assert hashlib.sha256(apk.read_bytes()).hexdigest()==report['sha256']
snapshot=json.loads((root/'build/compiled-sources.json').read_text(encoding='utf-8'))
assert all(hashlib.sha256((root/name).read_bytes()).hexdigest()==digest for name,digest in snapshot['source_files'].items())
patches=json.loads((root/'build/source-patches.json').read_text(encoding='utf-8'))
for relative,hashes in patches.items():
    source=workspace/'公签版_反编译/apktool/smali'/relative
    assert hashlib.sha256(source.read_bytes()).hexdigest()==hashes['patched_sha256']
    target=root/'patched-smali'/relative;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(source,target)
shutil.copyfile(workspace/'build-validation/platform.x509.pem',root/'platform.x509.pem')
audit=json.loads((root/'build/module-audit-summary.json').read_text(encoding='utf-8'))
(root/'交付说明.md').write_text(f'''# 应用管家 R3 · UI 修复测试包

安装包：`{report['apk']}`。保留原包名、版本号、公签身份与原业务代码。本包用于车机重新验证，不代表设备验收已通过。

本轮修复：

- 主题按钮文字居中；自绘工具图标随主题刷新颜色，保留原内容图标颜色。
- 自动化操作栏与功能行保持横向图标/文字布局，取消通用竖列拆分。
- 功能页版本信息移回底部，支持原异步文字更新。
- 文件与网络采用真实 item_root/item_wp_path/item_dir_gn 绑定，标签不因失焦隐藏；数据/路径/错误/加载状态决定提示。
- Hive 加载控件保留原 100dp 约束，不再按数据区宽度放大。
- 安装方式菜单按内容决定高度，宽度上限 380dp，选项保留横向布局；设置四分区保留。

- 暖橙奶油、冰蓝荧光科技、黑白阴影三套主题；每套均提供日夜模式。在主页侧栏“主题”或设置“显示”分区选择，自动保存。
- 设置采用显示、安装、连接、高级四分区。竖屏顶部标签、宽窗口侧边分区导航；短开关两至三列，高级字段成组分栏。切换分区保留原控件和输入值，完成/关闭继续执行原保存逻辑。
- 应用管理重排独立工具栏、筛选和可见搜索行；应用网格根据可用宽度与字体缩放计算列数。
- 文件管理分开存储位置、带文字的操作区、路径和真实数据/权限状态；网络工作区按宽度切换上下/左右双面板。
- 通用列表、表单、弹窗及适配器行接入结构重排与角色样式；保留原控件实例、ID、监听器、适配器和权限处理。
- 常用主页继续支持添加内置功能、应用、自定义跳转，以及改名、删除和拖动排序。1440×1920 / 1920×1440 自适应，方向跟随系统。

## 检查范围

登记 {audit['layouts']} 个应用布局，{audit['native_checks']['PASS']} 个通过原 APK 二进制 XML 载入、原控件保留和原生测量检查。其余 {audit['native_checks']['UNVERIFIED']} 个特殊控件布局已逐项登记为未验证，见《模块检查记录-R3.md》。

{test_count} 项自动化测试通过，包含原有主页数据/跳转、三主题横竖屏、设置分区、字体 1.3、原控件保留、筛选列数与实际首行几何、主题遍历后的选中态和晚绑定。

测试使用 Robolectric Native Graphics、原 APK 的资源表与二进制 XML。TV RecyclerView/MyRecycleView 与 AppCompatSeekBar 使用原生对应控件。R3 执行原行绑定代码，基类/模型/ViewHolder 为测试接线；Hive 使用原测量/路径/非图片绘制方法的静态契约副本，不覆盖原动画生命周期。生产 APK 保留原控件和动画。预览不是车机或模拟器安装截图，数据不是车机实际文件或账户。

主包 {report['legacy_changed_classes']} 个 UI 集成类发生预期修改，其余 {report['unmodified_legacy_classes_compared']:,} 个原类通过规范化比较；原资源、原生库、第二/第三 DEX 和内嵌 APK 保持原样。新增 {report['ui_classes']} 个 UI 类。方向属性改为跟随系统。

v1/v2/v3 签名与 ZIP 对齐检查通过；证书与原包一致。公钥证书随包提供，私钥不进入交付包。

**此包为公签测试版：未连接车机或模拟器，未验证车辆硬件、真实安装/权限/ADB/网络账户、IME、旋转生命周期及全部业务操作。原始反编译 Java 全工程仍不能直接编译；本次 UI 扩展源码可以独立编译。**

界面复核结论：{disposition[1]}。本地源代码/原生契约中六个问题已修正；原设备仍需重新采集验证。详见随包 `.impeccable/finish-review-r3.md`，不把本地复核扩大为车机验收。

SHA-256：`{report['sha256']}`
''',encoding='utf-8')
files=[]
for directory in ['src','baseline','patched-smali']:
    files.extend(p for p in (root/directory).rglob('*') if p.is_file())
files.extend((root/'previews').glob('*.png'))
files.extend(p for p in (root/'previews/modules').rglob('*') if p.is_file() and not p.name.startswith('file-in-home-focused-'))
files.extend(p for p in (root/'previews/regressions-r3').rglob('*') if p.is_file())
for name in ['README.md','交付说明.md','模块检查记录-R3.md','build.gradle','settings.gradle','build_ui.py','generate_layouts.py','prepare_test_resources.py','prepare_binding_tests.py','module_report.py','package_apk.py','make_delivery.py','platform.x509.pem',report['apk']]:files.append(root/name)
for name in ['package-verification.json','compiled-sources.json','source-patches.json','module-audit-summary.json','module-coverage.json','legacy-layout-inventory.json','legacy-module-inventory.json','test-resource-dependencies.json','original-binding-test-provenance.json','gradle-test.log','javac.log','d8.log','apktool.log','signature-verification.log','zipalign-verification.log','dex-review/dex-comparison.json','dex-review/dex-differences.txt','dex-review/compare.log']:files.append(root/'build'/name)
files.extend(test_reports)
files.extend((root/'build/test-deps').glob('*.jar'))
files.extend(p for p in (root/'build/test-r').rglob('*.java'))
files.extend(p for p in (root/'build/test-legacy').rglob('*.java'))
assert not any(p.suffix.lower()=='.pk8' for p in files)
archive=workspace/'应用管家_UI修复测试_R3_源码与预览_20261104.zip'
with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED,compresslevel=6) as out:
    for path in sorted(set(files)):out.write(path,'car-ui/'+path.relative_to(root).as_posix())
    for path in [workspace/'PRODUCT.md',workspace/'DESIGN.md',workspace/'.impeccable/design.json',workspace/'.impeccable/failure-review-r3.md',review]:out.write(path,path.relative_to(workspace).as_posix())
with zipfile.ZipFile(archive) as out:
    assert out.testzip() is None
    assert not any(name.lower().endswith('.pk8') for name in out.namelist())
print(json.dumps({'archive':str(archive),'bytes':archive.stat().st_size,'sha256':hashlib.sha256(archive.read_bytes()).hexdigest(),'tests':test_count},ensure_ascii=False,indent=2))

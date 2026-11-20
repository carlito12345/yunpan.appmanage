# 应用管家 1.9.3 · R18 车机界面

R18 将首页、主导航和独立功能页接入同一套壁纸。设置弹窗的滚动区随窗口毛玻璃绘制。版本还包含 GD 毛玻璃主题、粒子壁纸和五款星语悬浮形象。见[更新日志](更新日志.md)和[验证记录](../verification/r18/summary.json)。

R13 恢复设置中被挤掉的 SU 命令与 ADB shell 密码输入框，并在“设置 → 连接”增加无线调试配对助手。助手保留原配对处理，增加 6 位码校验、主动粘贴、权限说明及可拖动/收起/关闭的悬浮输入窗。三主题、横竖屏与大字体均纳入检查；当前证据见 [R13修复与验证](R13修复与验证.md)。Android11+ 系统提供配对码；R12 的 Android9 APK 加固兼容路径是另一项能力，设备测试仍暂缓。

R12 增加 Android 9/API28 AES 加固加载路径，两个包名及一键工具已更新。Android 11 探针与完整应用临时包启动通过；Android 9 尚待设备实测，按用户选择先交付适配包。界面沿用 R11。见 [R12安卓9加固适配与验证](R12安卓9加固适配与验证.md)。

最新R11：标记的“常用功能”标题栏及编辑按钮无包边，下方功能卡片恢复包边；所有主题按控件角色使用圆角。新图标与两套包名保留。见 [R11修复与验证](R11修复与验证.md)。下方R10及更早记录是历史。

R10 修复开机任务设置的数字裁切，增加首页分区外间距，仅将已添加功能卡片设为无包边，“添加跳转”保留原包边。两种包名均使用用户提供的新图标。见 [R10修复与验证](R10修复与验证.md) 和 [包名工具](PACKAGE_VARIANTS.md)。下方 R9 测试及 VM 记录保留为历史证据；R10 当前 VM 不可达，不据旧截图接受本轮运行。

原生 Java UI 扩展接入应用管家 1.9.3（1932）公签 APK。业务沿用原 smali、适配器、监听器和权限处理。仓库里的 1.9.2 JADX 导出和反编译目录供历史查阅。

定制作者：**carlito**。源APK：**应用管家社区官方【应用管家】**，社区链接：https://pd.qq.com/s/7eyokceit?b=5 ，腾讯频道号 `updata3927`。主页常用功能末尾与主题中心下部均可打开“关于与来源”，完整查看用户提供的公开二维码原图；定制署名与原APK来源分开标注。

提供兼容版与独立 AES-256-GCM 加固版。当前加固版最低 Android 9/API28，把四个主DEX分别认证加密，内存解密后启动原Application；Android9接入原类加载器，Android10+使用公开加载器接口。R13 为直接 app_process 启动补充认证解密入口，两个ABI的libgj.so只修改同长度入口类名，其他原生库、资源与内嵌插件保留。加固提高静态分析门槛，客户端密钥材料与运行时代码仍可能被提取。R8/R9 的 API29 最低版本是历史记录，当前以 [R13验证](R13修复与验证.md) 为准。

## R9 修复

修复文件管理→文件互传中二维码缩成顶部小点。局域网互传弹窗使用独立方形白底二维码，竖屏上下、横屏左右排布；说明区滚动、原提示音/返回固定，原控件实例/ID/监听器和原二维码生成业务保留。缺码时继续保留原隐藏状态和手动地址；后到图片仍使用同一ImageView。两方向实际VM截图已离线解码并与页面地址核对，未实际传输文件。详见 [R9修复与验证.md](R9修复与验证.md) 和 [更新日志.md](更新日志.md)。

## 本版界面

网络存储采用MT风格左右双窗格，各自保留存储选择、路径、单列文件和底部操作。文件名、时间/大小和选择状态用原控件。添加云端连接使用原TV RecyclerView的V7 Grid，随窗口和字体横向排列并换行；视口有界、关闭固定。二维码保留原image/state/具名容器和回调，提供大方形白色quiet zone，不跟随透明度淡化。

左下角主题进入主题中心：全局面板透明度0–100%，主题默认/纯色包边/多彩渐变/流光飞舞及六款主色。前景与壁纸不整体淡出。草稿局部预览，取消不存；应用设置提交。选择主题或日夜模式也会同时提交当前透明度和边框，界面已说明。流光8秒匀速、绘制驱动最多约33ms一次，不移动文件和文字，隐藏不续调、关闭释放，系统关闭动画时降级静态。

壁纸共用层彻底移除压暗、泛白和主题混色，覆盖静态、原装星月、纯色、粒子和视频。旧strength偏好兼容读取但不参与绘制，控件已移除。已裁切私有图片不再按2048上限二次减半，仍有4096边/约800万像素解码边界。弹窗保留此前要求的磨砂/底层dim；blur+tonal共用一次透明度预算，与壁纸遮罩分开。

壁纸中心，或设置→高级→修改管家背景，管理静态/视频/粒子。静态按当前屏幕比例裁切，支持拖动、双指/键盘缩放和重置；1440×1920/1920×1440按对应像素输出，超大屏最长2560、约400万像素。原图只读，另存私有JPEG；裁切回预览后点击应用才保存。默认星月单独恢复。视频静音循环、居中填满，离开应用释放；六款粒子、六前景色/底色、速度/密度与节能模式保留。

## 构建

准备[原 APK](../input/README.md)、Apktool 2.11.1 和 JDK 17。在本机核对 `build_ui.py`、`package_apk.py` 和 `build.gradle` 中的 Android SDK 与 Java 路径。以下命令从仓库根目录运行。

```powershell
$apktool = 'C:/tools/apktool-2.11.1.jar'
$signingKey = 'C:/signing/platform.pk8'
New-Item -ItemType Directory -Path '.work' -Force | Out-Null
Copy-Item -LiteralPath 'input/应用管家_1.9.3.apk' -Destination '.work/original.apk'
java -jar $apktool d .work/original.apk -o .work/decoded
python car-ui/build_ui.py --patch
javac -encoding UTF-8 -cp $apktool -d .work car-ui/tools/AssembleUiSmali.java car-ui/tools/CompareDex.java
java -Xmx2g -cp ".work;$apktool" AssembleUiSmali .work/decoded/smali .work/classes.dex
@'
from pathlib import Path
from zipfile import ZipFile

work = Path(".work")
with ZipFile(work / "original.apk") as original, ZipFile(work / "car-ui-compiled.apk", "w") as output:
    output.write(work / "classes.dex", "classes.dex")
    for name in ("classes2.dex", "classes3.dex"):
        output.writestr(name, original.read(name))
'@ | python -
java -Xmx2g -cp ".work;$apktool" CompareDex .work/original.apk .work/car-ui-compiled.apk car-ui/build/dex-review
python car-ui/package_apk.py --key $signingKey --cert car-ui/platform.x509.pem --output AppManager-1.9.3-R18-base.apk
```

双包名的打包参数见[包名工具说明](PACKAGE_VARIANTS.md)。运行本地回归时，将原 APK 的 JADX 输出放到 `.work/jadx193`，依次运行 `prepare_test_resources.py`、`prepare_binding_tests.py` 和 `gradle -p car-ui test`。

构建依赖工作区原 APK、反编译资源和当前 Windows 工具链；迁移需调整脚本路径。源码和基线 smali、公钥证书随包；私钥不归档。保护打包需 Python `cryptography`（本次50.0.2）。兼容版新增 `classes4.dex`，原资源与第二第三 DEX 字节一致；加固版主DEX仅剩一个明文bootstrap，四个业务/UI DEX在assets中加密保存。每次保护构建生成新随机材料，产物SHA不同是预期行为。

## 验证范围

59项本地测试通过，10组为9+8+7+7+8+4+10+3+1+2。新增测试校验署名/来源链接和旋转后关闭按钮可达；此前覆盖原布局实例/ID、明确原绑定接线、横竖布局、裁切与URI取消、双窗/晚到文件、连接类型换行、大QR/状态/关闭、透明度像素、主题草稿、边框和动画边界。333个原布局中326个通过结构烟测，7个特殊控件未在JVM执行；部分TV控件是AndroidX替身，不等于完整原控制器或全页面验收。

R9加固APK在指定Android11 VM覆盖安装，安装SHA与本地相同。原应用启动、首页/文件入口、互传弹窗双向旋转、离线解码及原返回关闭已验。首次更新后仍出现回Launcher的既有现象，再次Home成功COLD3411ms；测试未修改用户偏好，旋转还原0/0。兼容R9包已静态校验，此轮运行针对加固包；实车与完整云盘/权限/自动化/安装业务未验收。

R7界面细节及历史证据见R7修复与验证.md；R9证据见build/vm-r9/runtime-report.json和R9修复与验证.md，R8加固机制与历史记录见R8加固与验证.md。GitHub同步完整Java阅读导出、smali/资源、UI扩展及保护脚本模板。交付ZIP另附双安装包、公开来源图与安全验证证据。私钥、临时生成密钥材料、真实登录二维码、设备配置与媒体URI不归档。

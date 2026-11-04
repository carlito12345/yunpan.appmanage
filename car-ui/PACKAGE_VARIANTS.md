# 包名与图标定制 P1

日期：2026-11-04；作者：carlito。源APK：应用管家社区官方【应用管家】，[社区来源](https://pd.qq.com/s/7eyokceit?b=5)。

本分支 `variants/package-customization` 在 R9 兼容版上增加可重复执行的改包名与图标工具。默认生成 `com.maxinf.car`，图标采用用户提供的 `gj_ico.zip` 内 `gj_ico.jpg`，320×320，原始图片字节保留。原社区来源海报不变。

## Windows 一键使用

1. 解压工具包，双击 `car-ui/一键改包名.cmd`。
2. 输入目标包名，例如 `com.maxinf.car`；多个包名用逗号分隔，例如 `com.maxinf.car,com.example.car`。
3. 选择兼容版或未加固基础 APK。工具包附 `car-ui/input/base.apk`，是本次原包名 R9 兼容版；以后更新时选择新的基础 APK。
4. 首次选择自己的 `platform.pk8` 私钥。公钥证书和默认图标已经附带；私钥必须与证书配对。路径会保存在本机 `repackage.local.json`，以后复用。
5. 成功后打开 `car-ui/dist/package-variants`，每个包名分别产生兼容版、AES 加固版和 JSON 校验报告。工具只生成文件，不自动安装。

需要 Python 3.10+、JDK17、Android SDK build-tools（含 zipalign、apksigner、d8）及 API29+ 的 Android 平台 android.jar。本次使用 build-tools36/API36；AES 生成还需要 Python `cryptography`，可执行 `python -m pip install cryptography`。双击入口不自动安装这些环境。

复制 `repackage.example.json` 为 `repackage.local.json` 可指定 `python`、`java_home`（JDK根目录）、`android_sdk`（SDK根目录）、输出目录和图标。也可通过 `JAVA_HOME`、`ANDROID_SDK_ROOT` 配置工具。`protect` 改为 `false` 可只生成兼容版。本机配置、私钥及生成的临时密钥源码均不提交仓库。

## 命令行与未来更新

在 `car-ui` 目录运行：

```powershell
python repackage_apk.py --input input/base.apk --package com.maxinf.car --icon branding/gj_ico.jpg --key signing/platform.pk8 --cert platform.x509.pem --protect
```

批量生成时重复 `--package`：

```powershell
python repackage_apk.py --input input/base.apk --package com.maxinf.car --package com.example.car --icon branding/gj_ico.jpg --key signing/platform.pk8 --cert platform.x509.pem --protect
```

可追加 `--java-home "D:/jdk-17" --android-sdk "D:/Android/Sdk"`。PowerShell 入口支持 `-Package`、`-InputApk`、`-Icon`、`-KeyFile`、`-NoPrompt`；双击 CMD 每次让你选择基础 APK，避免误用旧版。`--icon` 接受 PNG/JPG/WebP，或恰好含一张图片的 ZIP。省略 `--icon` 则保留输入 APK 图标。

每次从新的未加固基础版生成；不要拿已经 AES 加固的安装包再次修改。同一个目标包名的输出文件会更新，输入基础 APK 保持原样。新版本若仍使用同一包名和签名，可作为该定制版的更新候选；系统仍会检查版本号、签名及共享UID等安装条件。

## 修改范围与兼容处理

- 更新 Manifest 的 application ID、Provider authority、自定义权限、任务归属、别名，以及代码和资源中的相应包标识、动态广播标识和 URI。
- 保留原 Java 类名、JNI 符号和资源 ID。Android 的安装包身份与代码命名空间可以不同，见 [Android 官方说明](https://developer.android.com/build/configure-app-module)。Provider authority 单独调整以避免与原版冲突，见 [FileProvider 设置](https://developer.android.com/training/secure-file-sharing/setup-sharing)。
- 保留原生库、内嵌插件 APK 的字节。特别保留原版判断分支，让原生启动命令继续对定制包追加 `--package=<当前包名>`，避免错误回落到原包名。
- AES 加固按当前 application ID 绑定 AAD 和密钥派生，保留原 Application。兼容版继承基础版最低 API17；本次加固版最低 API29（Android10）。客户端代码与材料仍可能被分析提取，不保证绝对防反编译。
- 新包名有独立的数据和授权，不自动迁移原版偏好、账号或壁纸。已有同名其他应用时不能并存；本工具不删除或覆盖设备应用。

包名接受最多127个 ASCII 字符、至少两段，每段首字符为字母，后续为字母/数字/下划线；这是当前工具对原资源表的限制。遇到已加固输入、缺少所需属性、复杂或 compact 图标条目等不支持的基础 APK，会报错。以后基础版更换保护方案、动态反射约定或原生启动方式时，需要重新验收，不能仅靠字符串替换保证所有业务兼容。

## 本次验证

- 正式包名 `com.maxinf.car`；兼容版和加固版通过 ZIP 完整性、签名及 zipalign 检查，保持所附公钥证书。
- 四个 DEX 共16,558个类，所有类、方法、字段符号保持，2290个未改动载荷条目逐项核对；图标与所提供 JPG 的 SHA256 一致。
- 5项 Python 回归通过，包含长短包名、Provider与权限、相对类名展开、资源 ID、图标及加固 Manifest。执行 `python -m unittest discover -s . -p test_repackage.py -v`；其他路径的基础 APK 可通过 `CAR_UI_TEST_APK` 指定。
- 使用 PowerShell 一键入口的 `-NoPrompt` 路径实际生成正式双包；图形文件选择器完成语法核对，未自动点击验收。
- 指定 Android11 VM 原本存在另一个 `com.maxinf.car` 车机应用，因此正式包未安装到该 VM。使用同工具生成的 `com.maxinf.car.codexcheck` 加固版验证启动、新图标和首页横竖屏，限定日志窗口内未见该包崩溃；已有两个应用 APK 哈希保持，临时包已卸载，旋转设置已恢复。
- 首次打开返回原应用、再次打开 Home 成功的既有现象仍在记录。未执行真实云盘认证/传输、root/ADB、自动化或实车业务验收。R9 的59项UI回归是基础版本证据，本次新增5项为包名工具证据。

正式安装包哈希和静态报告见仓库 `verification/package-variants/`；VM报告仅针对临时包。安全截图随工具包附带。

## 依赖和文件

DEX 使用 [Google Smali](https://android.googlesource.com/platform/external/google-smali/) 的 dexlib2 3.0.9，配合 Guava33.4.0-jre；下载地址与固定 SHA256 在 `repackage-deps.json`。工具包保留完整上游 JAR（含 dexlib2 的 LICENSE 和 Guava 的 META-INF/LICENSE），另附 `THIRD_PARTY_PACKAGE_TOOLS.txt`。缓存缺失时从所列上游地址下载并验证，不运行基础 APK 的代码。

工具包包含当前基础 APK、公开证书、所供图标、脚本、依赖缓存、校验报告和安全截图；不含 JDK/SDK/Python、签名私钥、生成的密钥材料或本机配置。完整还原源码在 Git 分支；历史 JADX 导出不是可无损重建的原作者 Java 工程。

# 公签版 APK 反编译结果

本目录是从 APK 恢复的 Java 反编译代码、资源和 smali 工程，不等同于作者的原始源码仓库。Java 导出附带 Gradle 模板，尚未完成 Java 源码工程的编译适配。

后续实际编译检验：Java 编译器报告 2,593 条错误；smali 强制编译成功，但普通资源回编译会改变 34 个内部 drawable 资源 ID。最新交付 APK 因此保留原资源，仅替换已验证的三个回编译 DEX，并使用与原包相同的公签证书签名。完整结果见最新的“编译检验”交付包；本目录下单独运行 Apktool 全量构建的产物不能直接视为已通过资源一致性检验。

## 原包信息

| 项目 | 内容 |
| --- | --- |
| 应用名称 | 应用管家 |
| 包名 | `com.yunpan.appmanage` |
| 版本 | `1.9.2`，versionCode `1922` |
| 原文件 | `公签版.apk`，18,502,459 字节 |
| SHA-256 | `7718182e7c8fe9a1061d478730b68e0f98640f54cef38bed7d0675481e59c296` |
| SDK | minSdk 17，targetSdk 28，compileSdk 36 |
| 主包代码 | 3 个 DEX，合计 16,415 个类，含第三方库 |
| 原生库 | arm64-v8a、armeabi-v7a，共 10 个 `.so` 文件 |

## 目录说明

- `java-project/app/src/main/java/`：JADX 导出的可读 Java 代码。主业务位于 `com/yunpan/appmanage/`，其余目录也可能包含被混淆的业务类和依赖。
- `java-project/app/src/main/`：Java 导出工程的清单、资源和附带文件；项目中的 Gradle 文件由工具生成。
- `apktool/`：包含清单、XML、资源、assets、原生库和 smali 的可编辑工程。`smali/`、`smali_classes2/`、`smali_classes3/` 分别对应三个 DEX。
- `original-dex/`：从原包直接提取、未修改的 DEX，以及每个 DEX 的类名索引。
- `java-fallback/`：针对主导出中发生错误的 16 个类补充的 SIMPLE 线性反编译代码，便于检查跳转和指令。它不是可直接编译的 Java，也不表示已修复主导出的错误；请与 smali 对照。
- `embedded/`：内置的 `openfilecj.apk` 及其单独导出的 Java、资源和 smali；该模块有 62 个类。它在原始 ZIP 中的混淆路径为 `res/aV.apk`，还原后的资源名为 `res/raw/openfilecj.apk`。
- `logs/`：工具日志、原包信息、签名证书信息、反编译问题清单和回编译校验报告。

## 建议阅读入口

应用初始化：`java-project/app/src/main/java/com/yunpan/appmanage/base/AppStart.java`

主界面：`java-project/app/src/main/java/com/yunpan/appmanage/ui/ActivityHome.java`

组件、权限和其他入口：`apktool/AndroidManifest.xml`

混淆名称仍会出现在源码中。检查方法时请留意 `JADX WARN`、`JADX ERROR`、`Method not decompiled` 等注释；有问题的方法应对照相应 smali，不能直接信任 Java 展示结果。具体文件列表见 `logs/java-decompilation-issues.json`。

主导出报告 27 条错误及 12,531 条警告，其中部分错误是同一方法在不同处理阶段重复报告；详细记录保留在 `logs/jadx.log`。补充的线性导出也保留自己的日志 `logs/fallback.log`，没有用推测代码替换失败的方法。

## 修改与重新打包

需要保持现有功能并修改代码时，可编辑 `apktool/` 下的资源或 smali，再使用 Apktool 构建。将本目录解压至纯英文路径，例如 `C:\apk-work\gongqian-source`，准备 Java 和 Apktool 后运行：

```powershell
java -jar C:\tools\apktool.jar b .\apktool -o .\rebuilt-unsigned.apk
```

本次使用 JADX 1.5.2、Apktool 2.11.1 和 Java 17。主包回编译及静态校验结果见 `logs/rebuild.log` 和 `logs/verification.json`。校验比较三个 DEX 的类描述符集合和方法 ID 数量，并检查 assets、原生库是否逐字节保持一致。这不等同于运行测试；本次未安装或启动应用。回编译包未签名，安装前需要使用相应密钥另行签名。

需要通过 Android Studio 从 Java 代码构建时，仍需人工修复反编译语法、补齐依赖与构建配置，并处理原有混淆。不能把工具生成的 Gradle 模板视为已经恢复的原始工程。

## 无法从 APK 完整恢复的内容

原始注释、完整变量名、混淆前的符号、被优化删除的代码、原始 Gradle 配置及版本控制记录无法完整还原。原生 `.so` 在本次结果中保留为二进制，没有恢复成原始 C/C++ 源码；Kotlin 等语言编译后的代码主要以 Java 反编译形式展示。

原 APK 保留在工作区的 `input/公签版.apk`，没有被修改。

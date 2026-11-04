# 应用管家 · 车机UI定制 / R10 · 双包名分支 P2

本分支R10修复开机任务设置的数字裁切、首页分区间距，并仅取消已添加常用功能卡片的包边，添加跳转保留包边。新图标下分别提供 `com.yunpan.appmanage` 与 `com.maxinf.car`；一键工具支持原包名换图标、其他包名及未来基础APK。见 [R10修复与验证](car-ui/R10修复与验证.md)、[包名工具](car-ui/PACKAGE_VARIANTS.md) 和 [verification/r10](verification/r10)。62项本地UI测试及5项包名测试通过；本轮VM不可达，完成审查为recapture，设备运行待补。主线R9及旧版本VM记录保持历史身份。

定制作者 **carlito**。源APK：**应用管家社区官方【应用管家】**；[官方社区](https://pd.qq.com/s/7eyokceit?b=5)，腾讯频道号 updata3927。公开海报原图接入主题中心和主页来源入口，定制署名与原APK来源分开标注。

R9修复局域网互传二维码缩成小点：独立方形白底、竖屏上下/横屏左右、说明可滚动、原提示音/返回固定；两方向实际VM截图离线解码与手动地址一致，未实际传输。见 [更新日志](car-ui/更新日志.md)。

适配1440×1920及横竖屏；包含可编辑常用功能和自定义跳转、三主题与分区设置、MT式网络双窗、连接类型横排换行、大二维码、静态/视频/粒子原色壁纸及屏幕比例裁切、面板透明度与纯色/渐变/流光边框。

| 目录 | 内容 |
|---|---|
| car-ui/src | 可编译原生Java UI、62项本地回归和公开来源图片 |
| car-ui/baseline / patched-smali | 九个接入类的原基线和修改 |
| car-ui/protection / protect_apk.py | 可选AES-256-GCM保护模板与打包脚本，API29+ |
| 公签版_反编译/apktool | 清单、资源、smali、原生库与内嵌插件 |
| 公签版_反编译/java-project / java-fallback / embedded | JADX可读Java和失败方法补充 |
| verification | 源码SHA、构建、测试及部分VM验证元数据 |

UI扩展可独立编译；JADX导出历史有2593项全工程编译错误，不等同于原作者可无损恢复的原始Java仓库。原业务沿用smali，.so不等于已恢复C/C++源码。构建与本机路径调整见 [car-ui/README.md](car-ui/README.md)，原APK需自行放入 [input](input/README.md)。

提供原加载方式的兼容版和独立加固版；后者最低Android10，四个主DEX认证加密，原生内存类加载接口启动原Application，资源/原生库/内嵌插件保留。客户端材料和运行时代码仍可被提取，不保证绝对防反编译；源码按用户要求保持可读。见 [R9修复与验证](car-ui/R9修复与验证.md)。

59项本地测试通过。R9保护包在指定Android11 VM验证应用启动、原文件入口、互传二维码双向旋转、离线解码和返回关闭；并非全业务或实车验收。更新后首次回Launcher、再打开Home成功的既有现象仍记录。云盘真实认证/传输和root/ADB/自动化等业务未验收。

不提交签名私钥、临时生成密钥/异或材料源文件、设备截图、媒体URI、原始设备日志、安装产物或输入原APK。公钥证书car-ui/platform.x509.pem可核验。交付ZIP另含双安装包和安全截图，Git仅同步源码与验证元数据。

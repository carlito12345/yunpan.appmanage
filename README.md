# 应用管家 · 车机UI定制 / R8

定制作者 **carlito**。源APK：**应用管家社区官方【应用管家】**；[官方社区](https://pd.qq.com/s/7eyokceit?b=5)，腾讯频道号 updata3927。公开海报原图接入主题中心和主页来源入口，定制署名与原APK来源分开标注。

适配1440×1920及横竖屏；包含可编辑常用功能和自定义跳转、三主题与分区设置、MT式网络双窗、连接类型横排换行、大二维码、静态/视频/粒子原色壁纸及屏幕比例裁切、面板透明度与纯色/渐变/流光边框。

| 目录 | 内容 |
|---|---|
| car-ui/src | 可编译原生Java UI、57项本地回归和公开来源图片 |
| car-ui/baseline / patched-smali | 九个接入类的原基线和修改 |
| car-ui/protection / protect_apk.py | 可选AES-256-GCM保护模板与打包脚本，API29+ |
| 公签版_反编译/apktool | 清单、资源、smali、原生库与内嵌插件 |
| 公签版_反编译/java-project / java-fallback / embedded | JADX可读Java和失败方法补充 |
| verification | 源码SHA、构建、测试及部分VM验证元数据 |

UI扩展可独立编译；JADX导出历史有2593项全工程编译错误，不等同于原作者可无损恢复的原始Java仓库。原业务沿用smali，.so不等于已恢复C/C++源码。构建与本机路径调整见 [car-ui/README.md](car-ui/README.md)，原APK需自行放入 [input](input/README.md)。

提供原加载方式的兼容版和独立加固版；后者最低Android10，四个主DEX认证加密，原生内存类加载接口启动原Application，资源/原生库/内嵌插件保留。客户端材料和运行时代码仍可被提取，不保证绝对防反编译；源码按用户要求保持可读。见 [R8加固与验证](car-ui/R8加固与验证.md)。

57项本地测试通过。保护包在指定Android11 VM验证应用启动、首页、功能目录、主题和来源页旋转；并非全业务或实车验收。更新后首次回Launcher、再打开Home成功的既有现象仍记录。云盘真实认证/传输和root/ADB/自动化等业务未验收。

不提交签名私钥、临时生成密钥/异或材料源文件、设备截图、媒体URI、原始设备日志、安装产物或输入原APK。公钥证书car-ui/platform.x509.pem可核验。交付ZIP另含双安装包和安全截图，Git仅同步源码与验证元数据。

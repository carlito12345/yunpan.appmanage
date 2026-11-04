# R6 壁纸中心有界收尾复核

**Disposition: recapture / TEST。** 本批命名的壁纸路径在源码、49 项本地回归及 Android 11 VM 最终安装中得到有界确认，没有剩余已确认且要求再改 UI 的材料项。可以交付本轮 TEST 包。DocumentsUI 文件触控、双指输入、首次冷启动和目标车机仍未验收，不能写成全路径、全模块或 ship。

日期：2026-11-04。范围为用户明确追加的本地视频、六种粒子、原装静态、本地选图及按当前屏幕裁切；读取 Wallpapers、WallpaperView、WallpaperPicker、WallpaperCropper 与 CarHome/CarUi/ThemePicker、原背景入口和相关测试。复核者没有修改应用源码、操作 ADB 或读取本轮排除的敏感材料；历史 R3–R5 结论保持独立。

## persistence

R5 checkpoint 由实施方冻结为独立 ZIP：29,778,826 bytes、SHA-256 `4afbf58859aaa7f411a74b6caf86f3711fbb39098e2fb6b2d5d46d48bc10d5d4`。R6 使用独立 `car_wallpaper_v1` 配置，保留原主题及业务偏好。仅“应用壁纸”保存；选择来源、预览、裁切和取消不会直接保存主配置。

最终文件为 `car-ui/应用管家-壁纸中心-R6-20261104.apk`。已独立计算其 SHA-256 为 **`1b1bca46afcbf65d3d38ce65d9e9b64c1caa395b98bc44c68566a7e8156a85fc`**，与 `car-ui/build/vm-r6/final-installation.json`、`runtime-report.json` 中操作方在 VM 核对的安装 hash 一致。本复核只读这些设备事实，没有自行安装或独立重验签名。

已独立读取最终 `car-ui/build/gradle-test-r6-final.log` 与六份 XML：**BUILD SUCCESSFUL in 1m32s，49 项、零 failures/errors**；CarHome 9、Legacy 8、R3 7、R4 7、R5 8、WallpaperTest 10。WallpaperTest 时间戳 `2026-11-03T23:26:33.397Z`。这包含最新图片入口、裁切几何、私有文件清理和旧入口测试，不沿用中间 44/45 项接受新增源码。

原装图已独立核对：decoded `bj_2.jpg`、原 APK 及最终 APK 的 `res/XZ.jpg` 均为 42,507 bytes，SHA-256 `49ec905c09cc2cb9741144528d8fd5451ad784e1b2c8e7cd7962f4ddd121cac2`；原图 1600×900 星月资源字节保持。原 AppStart 的 bj.png/bj.jpg 私有自定义路径也已对照，没有读取设备原私有图片内容。

## fidelity

| 本批合同 | 当前独立观察 | 验证边界 |
| --- | --- | --- |
| 统一入口与保存 | 主题窗有“壁纸中心”；来源为关闭/静态/粒子/视频。原 `v_btn_background` 实例保留，按新授权关闭设置窗后转入同一中心。最终安全按钮裁图和 `original-entry-opens-center` 已见；本地检查原 dismiss 回调一次。 | 此背景入口有意替换旧点击行为；不声称全部原监听器行为不变。其余设置业务未重验。 |
| 原装静态与纯色 | 原装星月、六种纯色、存在时的原自定义背景统一预览/Apply。原装图焦点 (.7,.25)，static 不创建 player/tick；原私有图仅选中后下采样读取。`static-new-entry` 可见星月、四来源和静态动作。 | 本地检查两方向月亮焦点、静态持久化和纯色无 player。没有查看用户原有图片，也没有完成全部主题/图片组合运行矩阵。 |
| 本地图片与裁切 | 最终 `crop-check` 显示目标 1440×1920，`crop-landscape` 为 1920×1440；框比例随 owner 改变，取消/重置/使用裁切均可达。`crop-pan-zoom-portrait` 显示内容位置变化。 | VM 实测拖动和键盘缩放；双指只实现，未注入多触点。框内覆盖和输出尺寸另有本地几何断言，不冒充 VM 私有 JPEG 元数据实测。 |
| 裁切结果往返 | `cropped-preview`、`cropped-applied`、`cropped-reopened` 均显示已裁切星图；应用后卡片、轨道、正文保持可读，重新打开仍为“已裁切图片”。 | 实际选图→裁切→预览→应用→重开路径成立；未验证任意照片、全部 EXIF/大图/provider 及进程死亡恢复。 |
| 视频 | native Fragment 接收本地 SAF 结果，`MediaPlayer + TextureView` 异步准备、静音、循环、居中裁切。最终视频图显示自制测试片；own PID26338 帧数 46→80，AVC/looping/volume_zero=true。 | 证明当前测试片有解码帧推进和配置事实；不从静态截图证明循环次数/声音输出，也不推广为全部 codec。系统文件项由键盘确认。 |
| 六种粒子 | 六种 Canvas 图样、六背景/前景配色及速度/密度/强度/静态控制保留。最新 cyan 粒子与控制图中选择状态、文字和滑杆清晰；旧 engine 阶段六样式图仍独立标注。 | 本地断言六种零时刻图样签名不同、各自随后改变且配色影响像素；不等于车机 FPS、功耗或掉帧测试。 |
| 模态、旋转与主题 | Editor/Cropper 经既有 Frost owner 尺寸事件定点重算真实 Window，保留 draft/滚动控件。最终横竖裁切窗底部动作可达；mono/day 和 cyan/night 图中面板、dim、CheckBox/SeekBar 与主题一致。 | R5 的 API30 内存采样磨砂沿用；不是系统实时跨窗口 blur。未完成全部字体、IME、无障碍与六种主题日夜组合。 |

最终 allowlist 的 **16 张图全部独立查看并核对 SHA，与 runtime-report 完全一致**，只取 `car-ui/build/vm-r6/final/` 中登记项。系统选择器缩略图、敏感设置背景、原始个人数据不纳入归档证据；同目录其他中间图也不据此算最终通过。

## ceiling

设备事实来自 `runtime-report.json`：VM Android 11/API30，1440×1920、1920×1440，主 PID26338。最终恢复图 `restored-mono-off` 显示 mono/day 白底暗轨、壁纸关闭且没有残留弹窗；记录已读回 rotation=0、accelerometer_rotation=0，取消/恢复后 own media client=false。两个自建测试文件按各自 SHA 验证后移除，未清用户文件。过滤的 UI 错误为零条，只说明该过滤窗口未捕到对应错误，不能称全应用无错误。

`media-evidence-final.json` 与最终安装记录 PID 一致，当前 own client 由 frames46 推进至80，AVC/looping/volume_zero=true。详细取消、应用、旋转、后台释放/恢复与静态帧停止证据则来自 **中间 engine APK `17bed211bdde26d7fdaa071e1e2da88db92ce8cf64f7621939633cb84793f2c4`**：PID29436 preview3081→3116、取消后零 client、应用50→78、后台零 client、恢复有 client、静态两次 frames=10。它支持当时动态引擎路径，不能改写为最终裁切版逐项重做。不自行解释数字 player state，也不用色条预览相似判断播放成败。

平台播放器状态/资源与实际媒体能力分开验收；本地 `running()` 和绘图断言不代替真实 decoder。当前实现有异步状态保护与释放路径，但尚未覆盖全部损坏文件、codec、provider、授权失效或进程死亡情形。[Android MediaPlayer 状态与资源](https://developer.android.com/media/platform/mediaplayer/state-resources)

SAF 的 `content://` 可能来自本地或云；源码已使用 `EXTRA_LOCAL_ONLY` 请求直接可用的本地文件，scheme 检查本身不是本地性证明。DocumentsUI 文件触控点选没有成功验收，本次通过键盘 End/Enter 选择自建文件返回；这保留为外部选择器触控边界，不能把键盘成功写成整条触控通过。[Android 通用 Intent 文档](https://developer.android.com/guide/components/intents-common#StorageAccess)

裁切输入先下采样到最长4096、约8MP，API24+处理 EXIF；输出保持当前窗口比例，最长2560、约4MP。1440×1920和1920×1440输出像素由本地原生测试验证，VM 没有读取私有输出 JPEG 元数据。首次显式 Home 启动落回 Launcher，第二次 WARM Home 成功，冷启动仍未完全验收。

本轮仅应用内 CarHome 背景，不是系统 Launcher 壁纸服务或全部独立 Surface。实车、硬件性能、TalkBack/旋钮/完整 D-pad、IME 与大字号、原下载/安装/清理/车门/自动化业务不在 R6 接受范围；R5 的 USB、网络已填充列表、冷启动等边界以及独立搜索重复 P2 均保留。

## material_fixes

首轮一次列清的四项材料修复已核对同批落实：视频结果绕过 Apply 的保存旁路改为 Serializable draft/unusedGrant 交接；preview 与实际使用相同主题 veil/off 底色；OPEN_DOCUMENT 加本地约束；owner 尺寸改变重算 Editor Window。粒子“密度”文案与雪的独立 cross 图样同批修正，六样式断言通过。

正常 URI 所有权源码逐支闭合：saved A→新 B→Cancel 归还 B、保护 A；Apply B 保留 B、释放旧 A；B→C 先归还 B；重选 B 保留 unused 标记；回选 saved A 放弃 B而不释放A；移除后 Apply 清 unused 与被替换的旧 saved。dismiss 处理标准取消，handingOff 转移责任给 result Fragment。当前有效 content 授权获取/归还没有完整 provider/reboot 运行矩阵；最终无 own player 仅证明播放器释放，不能代替 URI grant 审计。

静态及裁切分支另做了有界检查，没有扩大 R5 扫描：

- `chooseImage` 用 image/*、openable/local 的独立7363请求；读取源后生成私有副本，不写源文件，也不长期占用图片 URI；视频 draft/grant 随同传递。
- CropView 最小缩放覆盖亮框、pan 重约束防止空边、最大为最小缩放8倍；输出使用同一 image matrix 与框坐标变换。旋转保持中心及相对缩放后重约束；最终截图确认两方向框和可达操作。
- “使用裁切”只写 `files/wallpaper-images/UUID.jpg` 草稿。Crop Cancel 不生成结果；Use→Picker Cancel 回收未保存草稿；saved imageUri 到 Apply 替换后才清理。删除须为 file scheme、canonical 直接父目录等于功能私有目录，保护目录外文件及原 bj.png/jpg。
- 新四项回归覆盖 MIME/local 与系统取消、极限 pan/zoom/旋转/输出上限、未保存/已保存/目录外文件保护、原背景 View 及关闭回调转同一中心。纯绿几何图检查尺寸与空边，内容位置另由实际星图拖动/裁切往返补充；不称任意图片矩阵全测。测试端 Windows URI 构造改为 `File.toURI`，生产 Android 路径未改。

最后确认没有提出新的 UI 修改批次。后续应针对已列未验收输入方式和目标设备做 recapture，维持 TEST 标记；本地绿灯与截图不关闭这些边界。

## keep

保留原主题世界、原装图字节、用户原私有背景及业务控件；只按明确授权改变背景入口和新增壁纸中心。保留无新外部库、平台文件选择器、静音本地解码、Canvas 有界刷新、独立配置和 Apply/Cancel。背景继续服从正文/动作可读性，静态与关闭提供退出运动的选择。R5 checkpoint 与历史报告不被 R6 覆盖。


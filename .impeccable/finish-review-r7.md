# R7 网络、壁纸与全局外观有界收尾复核

**Disposition: recapture / TEST。** 本批网络双窗格、二维码布局、提供方自动换行、壁纸原色、全局面板透明度及边框控制，已在命名源码、56项本地回归和最终 Android 11 VM 路径中得到有界确认。两项新增材料问题已关闭，没有要求追加 UI 修改的材料项。可交付本轮 TEST；扫码认证、存储/传输业务、启动一致性及实车边界保持开放，不作全模块或 ship 批准。

日期：2026-11-04。依据用户历次 R7 追加，读取对应 LegacyUi、Wallpaper、CarHome、CarUi、Appearance、ThemePicker、FrostedDialogs、原 XML/控制器及测试。本复核者未改应用源码、操作 ADB 或执行 GitHub 同步；只写本报告。R6 冻结报告、ZIP、hash及其证据保持独立。没有读取 private 原二维码、敏感设置或用户视频 URI。

## persistence

最终文件为 `car-ui/应用管家-MT双窗与全局外观-R7-20261104.apk`。已独立计算 **18,955,700 bytes、SHA-256 `af4249ca5d37057bf0e84085e47089633e677714dda0ea7f65ad355ead0b505d`**，与 `car-ui/build/vm-r7/final-installation.json`、`runtime-report.json` 中操作方核对的 ADB 安装 hash 一致。打包记录 `package-verification.json` 报告135个UI类、当前源码匹配、原2293项payload/资源保持及签名/对齐验证；本复核不重新执行打包、签名或全payload审计。

最终 `car-ui/build/gradle-test-r7-final.log` 与8份XML已独立读取：**BUILD SUCCESSFUL in2m4s，56项、零 failures/errors**，Appearance3、CarHome9、Legacy8、R3 7、R4 7、R5 8、R7 4、Wallpaper10。Appearance时间戳 `2026-11-04T00:42:18.091Z`，R7为 `2026-11-04T00:43:50.802Z`。此结果含最后两项修复，替代先前52/53/56项中间记录。

网络继续使用原 `v_file1/2`、`v_path1/2`、`v_gn1/2`、`v_dir_gn1/2`、`v_task_lay/v_task`、任务入口及count。文件行重挂原图像、名称、属性、选择/安装状态控件，不复制静态文字代替原绑定；原item与回调目标保留。原 `ua.i9` 的线性/Grid manager变化按单列合同约束。提供方仍由 `ha.te→x9.o5/item_wp_path` 创建九项并走原 `ha.p7 case23`；按用户换行授权替换为V7Grid manager，保留原列表、adapter、位置回调和guide身份。

二维码保留原 `v_root2/v_image/v_text_ts3` 实例；原 `ha.bf/ze` 继续驱动获取中、更新码、隐藏状态及待确认，新增关闭调用原Dialog.dismiss。Appearance存于 `car_ui_v1`，只改变背景Drawable，不用父View.alpha降低前景；壁纸仍用独立 `car_wallpaper_v1`。外观草稿取消不保存，Apply保存；主题/日夜卡即时连同草稿提交，并已就地说明。壁纸Apply/Cancel、私有图片与未用grant回收合同没有被这批外观功能改成即时保存。

## fidelity

| 本批合同 | 最终独立观察 | 证据边界 |
| --- | --- | --- |
| 左右双窗格 | `current-network-portrait/landscape-flow` 两侧并列，云端/本地来源、路径、分隔、任务入口及底部动作完整；文件区获得主要高度。 | 最终两张白名单图本地仍loading。操作方记录曾见真实晚填充；本复核不把loading图当已填充目录、权限或全部存储业务验收。 |
| 晚绑定单列行 | 源码对新出现的实际文件ID行重挂，NETWORK_ROW防重复；bound保留fileRow角色。夹具覆盖实际item_file/item_file_wl、长名/meta、后到数据、span回退及任务回调。 | 测试使用手填adapter，不是完整原y5/f0异步图像与文件业务执行；真实双边已登录/已填充未接受。 |
| 添加云端自动换行 | 两张 `current-provider-wrap-*-flow` 均见九项按3列换行，原彩色图标、文本与固定关闭可见。ProviderViewport按宽度/字体算1–4列、按行数/owner/MeasureSpec限高。 | 最终VM支持此尺寸下原V7Grid路径；未执行提供方连接、登录保存或所有字体/设备宽度矩阵。 |
| 大二维码与状态 | 已看两张遮盖图：标题、白色码区和底部关闭都在窗口内；原码未读取。safe `qr-evidence.json` 记录portrait ready=true、黑白bbox634×634px。状态层与原ImageView保留，不因布局强制隐藏。 | landscape只作布局证据，不采用含旋转像素的703×715阈值bbox作二维码准确尺寸。没有手机扫码、确认账户或认证后目录验收。 |
| 壁纸原色 | WallpaperView无veil/theme color filter，旧strength兼容字段不参与绘制，Picker去强度滑杆/混色说明。最终原有猫视频在主页及中心可见；原静态/纯色/粒子复合层像素由本地测试确认无新增混色。 | 证明去掉应用遮罩及选项保留，不宣称所有codec/色域逐像素一致。已裁切私有输出不再被2048二次缩小；不重开R6裁切矩阵。 |
| 全局透明度 | 默认0%、35%局部草稿及应用后面板差异可见；文字/图标保持原前景，壁纸不参与alpha。普通surface和真实Board的0/50/100中心像素断言通过。 | 透明度针对各面板材料，不是全部重叠控件合成后的单一整屏百分比；100%下不保证任意壁纸的文字对比。 |
| 边框与主题中心 | 主题默认/纯色/渐变/流光、六主色可选。35%/flow/樱粉draft→apply两图可见，lower图显示即时提交说明及主题/日夜/恢复/取消/应用；底部操作可达。 | 四种边框签名、静止/变帧与motion-disabled由本地测试支持；最终VM主要确认flow，未逐项完整实机矩阵。 |

最终证据只取 `car-ui/build/vm-r7/final/` 中runtime-report登记的 **15张 current-* 白名单图**，已逐张查看且SHA全部匹配。中间8dac/117类、ec4d/119类与R6图片均不作为当前源码的最终通过。未遮盖码、private文件、系统选择器库存、原始日志及个人字段不进入复核/归档证据。

## ceiling

VM为Android11/API30，1440×1920及1920×1440，最终主PID9546；操作方记录定向CarUi/AndroidRuntime错误为0，只代表该过滤窗口。第一次显式启动仍落Launcher，随后COLD Home成功；不能因此关闭启动一致性或冷启动全部边界。

恢复证据为 `current-theme-restored/current-wallpaper-preserved/current-home-restored-final`：0%透明度、主题默认边框、冰蓝主色恢复；原warm/day及用户已有本地视频继续存在，URI不记。安装记录读回rotation=0、accelerometer_rotation=0，最终图无残留弹窗。没有扫码认证或写入新云盘账号。

流光是用户主动选择、默认关闭的装饰模式，不延迟任务动作。源码为8秒恒速周回、33ms一次draw驱动，改变shader/边框，不改布局或文字位置；tick仅invalidate，未draw不续调；隐藏unschedule，Board.release先隐藏edge再清callback，同时释放bitmap/监听器。API26+读取areAnimatorsEnabled，API17–25只在Drawable构造时读取全局scale；旧API设备未实测。本地motion-disabled/hidden检查通过，VM的system_animator_duration_scale记录为null，不作VM禁用动画验证。

两张最终applied图的纯边框ROI `(260,90)–(264,124)` 已独立比较：**136/136像素变化**，与可见流光位置变化一致。它支持实际画面有边框运动，不是帧率、GPU或耗电基准。动画局部源码复核结论为 **Approve（有界）**，不替代上述性能/无障碍运行矩阵。

R5/R6未验收边界继续保留：真实车机、长时性能、TalkBack/旋钮/完整D-pad、IME/大字号、DocumentsUI文件触控、双指、provider/codec/持久授权、USB及原安装/下载/清理/车门/自动化业务。R6旧engine的视频暂停/恢复/静态模式记录仍属历史，不能写成R7逐项重做。搜索重复P2独立未修。GitHub源码同步由主实施方另给提交证据，不计为本只读UI复核的完成事实。

## material_fixes

本轮根因与同批修复已闭合于已读源码、回归及命名路径：网络原左右语义被Split竖向堆叠，现恢复并列/单列浏览；QR通用wrap/约束缺少明确扫码尺寸，现用受owner约束的白底正方形并保留原状态层；R6整层veil导致压暗/泛白，现删除；新增云端的dialog_default旧底图与半屏guide造成蓝色大空面，现主题化、有界viewport及按新授权自动换行。首轮回归还纠正QR原v_root2丢失、横屏多层header挤压，以及晚状态断言未经过布局调度，没有以降低阈值接受失败。

新增外观复核提出的两项材料问题已同批修正：

| Before | After | Why |
| --- | --- | --- |
| Board的snapshot与tonal各乘同一全局alpha，50%合成约71% | 设o为所需opacity、t为原tonal比例：snapshot alpha=o*(1-t)/(1-o*t)，tonal alpha=o*t | snapshot最终贡献o*(1-t)，加tonal为o；保原比例且无需额外离屏层。真实Board中心0/50/100断言±1/255通过。 |
| 主题/日夜卡commit同时保存外观草稿，分组未说明即时行为 | 明示“切换主题或日夜模式时，当前透明度与边框会一并应用”；卡片提交35%/flow/冰蓝回归通过 | 保留即时主题语义，明确其会提交当前外观；最终lower图已见该说明。 |

本批无剩余已确认且要求再改UI的材料项。之后仅针对已列输入方式、实际业务及目标车机做recapture，保持TEST标记；不追加新页面、素材、装饰或泛化扫描。

## keep

保留原文件/路径/任务实例、ID、adapter与原动作回调；保留多彩图标、原二维码异步状态和dismiss、原主题/日夜、原壁纸文件及选项。按用户授权新增自动换行和全局外观，默认仍无流光，提供纯色/静态选择；前景与壁纸不随面板alpha降低。原色壁纸要求不撤销Dialog磨砂与底层dim。R6冻结交付和历史报告不被R7覆盖。


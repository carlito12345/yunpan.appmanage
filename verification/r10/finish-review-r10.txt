disposition: recapture

## recapture

- `car-ui/previews/regressions-r4/r10-home-{warm,cyan,mono}-{1440,1920}.png` 是已明确标注的 Robolectric/native graphics fixtures，不能替代 Android 平台完成审查要求的已安装 APK 的设备或模拟器截图。保留这些 fixture 的来源标识；补交最终 APK 在1440×1920、1920×1440上的实际首页画面，显示标题栏、常用入口、常用功能及卡片间距，并在全局流光包边开启时显示功能卡片无包边。需要另一个滚动位置显示“添加跳转”卡片及其保留的包边。
- `car-ui/previews/regressions-r4/r10-boot-{warm,cyan,mono}-{1440,1920}.png` 仅显示原 binary XML 中的数值区域，选项 RecyclerView 未填充，且不是完整设备视口。这些图能作为本地数字几何检查的证据，不能接受完整“开机任务 → 设置”路径。补交最终 APK 的该弹窗横竖屏实际画面，原选项列表真实填充，三个数值完整可读；至少保留一个1.3字体比例及一个夜间主题状态的实际验证。
- 连接 `192.168.1.18:10000` 超时及设备列表为空是明确的证据缺口，不是源码视觉失败，也不构成 `rebuild` 指令。本次不据此要求修改 UI；待取得实际运行截图后重新进行完整审查。此次没有设备启动、业务保存、IME输入或实车验收结论。


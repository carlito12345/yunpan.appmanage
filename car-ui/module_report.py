"""Produce an honest, per-layout audit ledger from inventory and native checks."""
import collections
import json
import sys
from pathlib import Path

ROOT=Path(__file__).resolve().parent
records=json.loads((ROOT/'build/module-coverage.json').read_text(encoding='utf-8'))
checks={line.split('\t',2)[0]:line.split('\t',2)[1:] for line in (ROOT/'previews/modules/layout-checks.tsv').read_text(encoding='utf-8').splitlines()}
app=[r for r in records if r['layout'] in checks]
counts=collections.Counter(v[0] for v in checks.values())
owners=collections.defaultdict(list)
for entry in json.loads((ROOT/'build/legacy-module-inventory.json').read_text(encoding='utf-8')):
    for name in entry['layouts']:owners[name].append(entry['source'].replace('公签版_反编译\\java-project\\app\\src\\main\\java\\',''))
lines=['# R3 功能界面检查记录','',
       f'登记 {len(app)} 个应用布局；{counts["PASS"]} 个通过原 APK 二进制 XML 载入、原控件实例/ID 保留和原生测量检查。',
       f'{counts["UNVERIFIED"]} 个特殊控件布局未能在当前本地 JVM 渲染环境执行，逐项列于下表。该记录不等于全部业务功能在车机实测通过。','',
       'R3 针对设备截图修正：自动化紧凑操作栏、真实文件/网络行控件、失焦标签、版本页脚、内容尺寸菜单、限定尺寸的加载动画、主题按钮文字居中及主题切换后的自绘图标颜色。通用可点击容器和未知适配器行保留原有约束，不再盲目拆成竖列。',
       '设置短开关采用随宽度与字体缩放的网格，高级字段采用成组分栏；竖屏分区导航在顶部，宽窗口导航在侧边。三套主题共用真实控件与状态。','',
       '保留原控件的类型、ID、监听器、适配器、输入值与权限流程。媒体画布、代码编辑器与系统坐标浮层保留内容/坐标逻辑，重排外部操作区或应用主题。','',
       '测试使用官方 AndroidX 对应控件代替 TV RecyclerView/MyRecycleView，原生 SeekBar 代替 AppCompatSeekBar。R3 加载控件使用原 Hive 测量/路径/非图片绘制方法的静态契约副本，不验证原动画生命周期。R3 行绑定执行原始绑定方法，模型/基类/ViewHolder 为测试接线。生产 APK 保留原控件、动画和业务代码。',
       '未连接设备或模拟器，未验证硬件、真实应用清单、ADB、网络账户、安装、权限、IME 和完整活动/片段生命周期。','',
       '| 布局 | 重排策略 | 本地原生检查 | 原控制器（源文件） |','|---|---|---|---|']
for r in app:
    name=r['layout'];status=checks[name][0]
    detail='载入 / 保留 ID 与实例 / 测量' if status=='PASS' else checks[name][1].replace('|','/')
    lines.append(f'| {name} | {r["strategy"]} | {status}: {detail} | '+', '.join(owners[name])+' |')
revision='R5' if '--r5' in sys.argv else 'R4' if '--r4' in sys.argv else 'R3'
if revision=='R4':
    table=lines.index('| 布局 | 重排策略 | 本地原生检查 | 原控制器（源文件） |')
    lines=['# R4 页面适配检查记录','',
           f'登记 {len(app)} 个应用布局；{counts["PASS"]} 个通过本轮原 APK 二进制 XML 载入、原控件实例/ID 保留和原生测量检查，{counts["UNVERIFIED"]} 个特殊控件布局仍未在 JVM 执行。表中的 PASS 仅表示该结构烟测，不表示页面可用性或业务实测全部通过。','',
           '本轮纠正共有尺寸语义：薄线不再拉满屏幕；固定高局部列表保留高度；短选择条与真正主体分别测量；隐藏内容不占剩余空间；原滚动 viewport 与底部动作分开。原横向完整动作按空间换行，不再把所有操作逐项拉成全宽竖排。','',
           '显式重写悬浮按钮、侧边手势和自定义映射的关联列表工作区；下载页按文件浏览/链接任务双区域组织。选择条+主体规则覆盖沉浸、权限允许、日志/通用映射和进程内存等原页面。文件选择与有固定底部动作的表单对话框保留有界 viewport。侧边预览区域保留原坐标树；代码编辑器保留原动态宿主和直接约束锚点，仅明确工具条高度，不宣称已验证真实编辑器。','',
           'R4 回归使用真实二进制页面/行资源，但填充的是明确的测试行，未运行完整业务控制器；动态编辑器锚点测试用 SurfaceView 代替真实编辑器。原 R3 绑定测试和 Hive 静态合同的来源边界继续有效。原生图与安装 VM 截图区分保存。','',
           'R3 曾在测试 VM 运行验证部分路径；随后新增悬浮按钮失败照片，R4 修复时 ADB 离线，尚未成功安装 R4。不能沿用 R3 的 VM 结果验收 R4，更不能声称所有原模块或实车功能已验证。搜索重复仍为独立未修业务问题。','']+lines[table:]
if revision=='R5':
    table=lines.index('| 布局 | 重排策略 | 本地原生检查 | 原控制器（源文件） |')
    lines=['# R5 页面适配检查记录','',
           f'登记 {len(app)} 个应用布局；本轮 {counts["PASS"]} 个通过原 APK 二进制 XML 载入、实例/ID保留和原生测量，{counts["UNVERIFIED"]} 个特殊控件未在JVM执行。PASS只代表结构烟测，不能当作逐页视觉或业务验收。','',
           'R5修正真实弹窗点击拦截容器导致重排跳过、窗口未压暗、文件菜单先显示后填数据、下载六命令多行高度、空网盘占用竖屏空间、日志/原生按键/广播/车门表单结构。新增owner内存快照磨砂板与系统dim，替换/旋转/关闭释放位图和监听器。','',
           'VM已重连，已安装R5并验证指定页面/弹窗；具体安装哈希、截图与操作边界见 R5修复与验证.md 和 build/vm-r5/runtime-report.json。USB细分设置未通过改变自动点击开关去进入，只保留结构烟测；账户网络、下载业务、安装、权限和实车未验收。','',
           '本地测试使用原二进制XML，部分TV控件为AndroidX替身；t1/y0等原绑定方法由测试接线执行，不等于完整原业务。R3/R4报告作为历史记录保留。','']+lines[table:]
(ROOT/('模块检查记录-'+revision+'.md')).write_text('\n'.join(lines)+'\n',encoding='utf-8')
(ROOT/'build/module-audit-summary.json').write_text(json.dumps({'layouts':len(app),'native_checks':dict(counts),'business_runtime_tested':False},indent=2),encoding='utf-8')
print(dict(counts))

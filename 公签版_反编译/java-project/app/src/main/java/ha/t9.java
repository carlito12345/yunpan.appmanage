package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.layoutmanager.QuickGridLayoutManager;
import com.hierynomus.smbj.SMBClient;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import com.yunpan.appmanage.service.StartService;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class t9 extends a4 {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f7820m = 0;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f7821g;

    /* renamed from: h, reason: collision with root package name */
    public RecyclerView f7822h;

    /* renamed from: i, reason: collision with root package name */
    public x9.t0 f7823i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f7824j;

    /* renamed from: k, reason: collision with root package name */
    public final f2.e0 f7825k;
    public boolean l;

    public t9(Activity activity, Context context, boolean z, f2.e0 e0Var) {
        super(activity, context, R.layout.dialog_keymap_gn_select);
        this.l = false;
        this.f7821g = z;
        this.f7825k = e0Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) throws PackageManager.NameNotFoundException {
        super.onCreate(bundle);
        int i10 = Build.VERSION.SDK_INT;
        Context context = this.f6725b;
        if (i10 >= 18) {
            this.l = p000if.a.h0(context, StartService.class);
        }
        ArrayList arrayList = new ArrayList();
        this.f7824j = arrayList;
        arrayList.add(new KeyMapSelectBean(R.drawable.return1, "请选择功能"));
        g.b.u("无操作", 600, this.f7824j);
        g.b.u("延时", 603, this.f7824j);
        this.f7824j.add(new KeyMapSelectBean("打开" + com.yunpan.appmanage.util.k.f().f4039c, 51));
        g.b.u("显示提示", 601, this.f7824j);
        g.b.u("显示提示(大)", 602, this.f7824j);
        g.b.u("显示提示(自定义)", 607, this.f7824j);
        g.b.v("导航键", this.f7824j);
        g.b.u("返回键", 6, this.f7824j);
        g.b.u("HOME键", 5, this.f7824j);
        g.b.u("最近任务键", 7, this.f7824j);
        g.b.u("返回上个应用(任务键)", 8, this.f7824j);
        g.b.u("返回上个应用(通用)", 50, this.f7824j);
        g.b.u("悬浮按钮(锁定/解锁)", 642, this.f7824j);
        g.b.u("应用切换(普通)", 420, this.f7824j);
        g.b.u("应用切换(指定)", 421, this.f7824j);
        g.b.u("判断(当前应用)", 490, this.f7824j);
        if (i10 >= 20 && i10 < 30) {
            g.b.u("全屏沉浸(切换)", 320, this.f7824j);
        }
        if (i10 >= 28) {
            g.b.u("截图", 604, this.f7824j);
        }
        if (i10 >= 24) {
            g.b.u("模拟手势", 605, this.f7824j);
            g.b.u("模拟点击", 606, this.f7824j);
        }
        if (i10 >= 21) {
            g.b.u("弹出电源菜单", 614, this.f7824j);
        }
        g.b.v("安卓原生系统功能", this.f7824j);
        g.b.u("打开应用", 1, this.f7824j);
        g.b.u("打开应用(特殊1)", 54, this.f7824j);
        g.b.u("打开应用(特殊2)", 55, this.f7824j);
        g.b.u("send Intent", 3, this.f7824j);
        this.f7824j.add(new KeyMapSelectBean("打开界面", 1));
        if (p000if.a.d0(context, new Intent("android.settings.SETTINGS"))) {
            g.b.u("打开原生设置", 610, this.f7824j);
        }
        if (p000if.a.d0(context, new Intent().setClassName("android.settings.SETTINGS", "com.android.tv.settings.MainSettings"))) {
            g.b.u("打开电视设置", 611, this.f7824j);
        }
        if (p000if.a.d0(context, new Intent("android.settings.WIFI_SETTINGS"))) {
            g.b.u("打开设置(wifi)", 612, this.f7824j);
        }
        if (p000if.a.d0(context, new Intent("android.settings.BLUETOOTH_SETTINGS"))) {
            g.b.u("打开设置(蓝牙)", 613, this.f7824j);
        }
        g.b.u("弹出快捷设置", 45, this.f7824j);
        g.b.u("弹出通知栏", 44, this.f7824j);
        if (i10 >= 21) {
            g.b.u("清除所有通知", 46, this.f7824j);
        }
        if (i10 >= 28) {
            g.b.u("接听(本机通话)", 42, this.f7824j);
            g.b.u("结束(本机通话)", 43, this.f7824j);
        }
        g.b.v("----------", this.f7824j);
        g.b.u("设置屏幕亮度", 622, this.f7824j);
        g.b.u("增加屏幕亮度", 620, this.f7824j);
        g.b.u("减少屏幕亮度", 621, this.f7824j);
        g.b.u("选择输入法", 47, this.f7824j);
        g.b.u("切换输入法", 48, this.f7824j);
        g.b.u("设置输入法", 49, this.f7824j);
        g.b.v("音频相关功能", this.f7824j);
        g.b.u("静音(开/关)", 15, this.f7824j);
        g.b.u("静音(开/关)-测试", 411, this.f7824j);
        g.b.u("超级静音(开/关)", 412, this.f7824j);
        g.b.u("设置音量(原生)", 630, this.f7824j);
        g.b.u("增大音量", 631, this.f7824j);
        g.b.u("减小音量", 632, this.f7824j);
        g.b.u("播放音频", 410, this.f7824j);
        g.b.u("播放音频(随机)", 413, this.f7824j);
        if (i10 >= 21) {
            g.b.u("TTS播报", 416, this.f7824j);
            g.b.u("喊麦(开/关)", 417, this.f7824j);
        }
        if (i10 >= 26 && com.yunpan.appmanage.carsdk.k0.b().f3848d != null) {
            g.b.u("音量(Car)", 633, this.f7824j);
        }
        if (i10 >= 21) {
            g.b.u("播放视频", 418, this.f7824j);
        }
        g.b.v("日夜模式切换-功能测试，不一定适合您的车机", this.f7824j);
        g.b.u("日夜模式(原生)", 414, this.f7824j);
        this.f7824j.add(new KeyMapSelectBean("日夜模式(测试)", 415));
        if (com.yunpan.appmanage.carsdk.h0.c(context)) {
            g.b.v("捷途车机专用功能", this.f7824j);
            g.b.u("外后视镜", 5500, this.f7824j);
            g.b.u("电尾门", 5501, this.f7824j);
        }
        if (com.yunpan.appmanage.carsdk.x.h(context)) {
            g.b.v("星愿车机专用功能", this.f7824j);
            g.b.u("打开360", NoConst.PORT, this.f7824j);
        }
        if (this.f7821g) {
            g.b.v("原生按键映射独有功能", this.f7824j);
            g.b.u("按键面板(自定义)", 4000, this.f7824j);
            g.b.u("模拟光标(遥控器)", 4001, this.f7824j);
        }
        if (i10 >= 28) {
            try {
                AppStart.b().f3775c.getApplicationInfo("com.hsae.core", 0);
                this.f7824j.add(new KeyMapSelectBean("日产车机专用功能"));
                this.f7824j.add(new KeyMapSelectBean("蓝牙(开/关)", 2002));
                this.f7824j.add(new KeyMapSelectBean("wifi(开/关)", 2003));
                this.f7824j.add(new KeyMapSelectBean("本机热点(开/关)", 2004));
                this.f7824j.add(new KeyMapSelectBean("智能重开蓝牙和WIFI", 2010));
                this.f7824j.add(new KeyMapSelectBean("智能重启蓝牙并搜寻", 2005));
                this.f7824j.add(new KeyMapSelectBean("智能重启WIFI并搜寻", 2006));
                this.f7824j.add(new KeyMapSelectBean("静音", 2012));
                this.f7824j.add(new KeyMapSelectBean("取消静音", 2013));
                this.f7824j.add(new KeyMapSelectBean("打开播放源", NoConst.MIN_HEARTBEAT_INTERVAL));
                this.f7824j.add(new KeyMapSelectBean("打开360影像(按键)", 2014));
                this.f7824j.add(new KeyMapSelectBean("打开360影像(SDK)", 2015));
            } catch (Exception unused) {
            }
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 24) {
            g.b.v("分屏、小窗口（性能差的话不要用，仅用于娱乐）", this.f7824j);
            g.b.u("分屏模式切换", 40, this.f7824j);
            g.b.u("分屏模式打开应用", 640, this.f7824j);
            g.b.u("小窗口模式打开应用", 641, this.f7824j);
        }
        g.b.v("高德地图车机版-联动功能", this.f7824j);
        g.b.u("高德切换到白昼", 61, this.f7824j);
        g.b.u("高德切换到黑夜", 62, this.f7824j);
        g.b.u("高德切换到自动", 63, this.f7824j);
        g.b.u("高德切换(白昼/夜间)", 69, this.f7824j);
        g.b.u("同步系统主题给高德", 64, this.f7824j);
        g.b.u("打开收藏夹(高德)", 68, this.f7824j);
        g.b.u("最小化(高德)", 65, this.f7824j);
        g.b.u("进入主图(高德)", 66, this.f7824j);
        this.f7824j.add(new KeyMapSelectBean("关闭地图(高德)", 67));
        if (com.yunpan.appmanage.util.k.f().f4053j) {
            g.b.v("百度地图车机版-联动功能（仅支持百度官方版）", this.f7824j);
            g.b.u("百度-切换为自动", 6500, this.f7824j);
            g.b.u("百度-切换为白天", 6501, this.f7824j);
            g.b.u("百度-切换为黑夜", 6502, this.f7824j);
            g.b.u("百度-最小化", 6503, this.f7824j);
            g.b.u("百度-退出导航", 6505, this.f7824j);
            g.b.u("百度-关闭地图", 6504, this.f7824j);
            g.b.u("百度-打开收藏夹", 6506, this.f7824j);
            g.b.u("百度-放大", 6507, this.f7824j);
            g.b.u("百度-缩小", 6508, this.f7824j);
            g.b.u("百度-打开地图", 6509, this.f7824j);
            g.b.u("百度-打开路况", 6510, this.f7824j);
            g.b.u("百度-关闭路况", 6511, this.f7824j);
            g.b.u("百度-回家", 6512, this.f7824j);
            g.b.u("百度-去公司", 6513, this.f7824j);
            g.b.u("百度-白天/黑夜", 6514, this.f7824j);
            g.b.u("百度-继续上次导航", 6515, this.f7824j);
            g.b.u("百度-进入巡航", 6516, this.f7824j);
            g.b.u("百度-退出巡航", 6517, this.f7824j);
        }
        g.b.v("原生系统开关(注：很多车机不支持原生)", this.f7824j);
        if (i11 < 36) {
            g.b.u("本机热点(开/关)", 522, this.f7824j);
            g.b.u("本机热点(开)", 520, this.f7824j);
            g.b.u("本机热点(关)", 521, this.f7824j);
        }
        g.b.u("蓝牙(开/关)", 512, this.f7824j);
        g.b.u("蓝牙(开)", 510, this.f7824j);
        g.b.u("蓝牙(关)", 511, this.f7824j);
        g.b.u("wifi(开/关)", 502, this.f7824j);
        g.b.u("wifi(开)", 500, this.f7824j);
        g.b.u("wifi(关)", 501, this.f7824j);
        g.b.u("没连wifi时重开wifi", 503, this.f7824j);
        g.b.u("没连蓝牙时重开蓝牙", 513, this.f7824j);
        g.b.u("没连时重开(wifi|蓝牙)", 514, this.f7824j);
        g.b.v("执行命令行\n执行命令(本机)：适合已root、公签系统 或者 无需权限的命令\n注：如果是adb的话，请在开机任务中添加一个任务：执行命令(adb) (随便一条命令，如：id)", this.f7824j);
        g.b.u("执行命令(本机)", 70, this.f7824j);
        g.b.u("执行命令(ADB)", 71, this.f7824j);
        g.b.u("执行命令并显示结果(ADB)", 72, this.f7824j);
        if (i11 >= 21) {
            g.b.v("多媒体操作(通用模式)", this.f7824j);
            g.b.u("下一首(通用)", 17, this.f7824j);
            g.b.u("上一首(通用)", 18, this.f7824j);
            g.b.u("停止播放(通用)", 19, this.f7824j);
            g.b.u("播放/暂停(通用)", 16, this.f7824j);
            g.b.u("播放(通用)", 400, this.f7824j);
            g.b.u("暂停(通用)", 401, this.f7824j);
            g.b.u("播放/暂停(通用2)", 432, this.f7824j);
            g.b.u("快进一次(通用)", 430, this.f7824j);
            g.b.u("快退一次(通用)", 431, this.f7824j);
            this.f7824j.add(new KeyMapSelectBean("多媒体操作(通知模式)".concat(this.l ? "" : "  此功能不适合您的系统")));
            g.b.u("下一首(通知)", 20, this.f7824j);
            g.b.u("上一首(通知)", 21, this.f7824j);
            g.b.u("播放/暂停(通知)", 24, this.f7824j);
            g.b.u("下一首-指定APP(通知)", 22, this.f7824j);
            g.b.u("上一首-指定APP(通知)", 23, this.f7824j);
            g.b.u("播放/暂停-指定(通知)", 35, this.f7824j);
            g.b.u("停止播放(通知)", 25, this.f7824j);
            g.b.u("播放(通知)", 402, this.f7824j);
            g.b.u("暂停(通知)", 403, this.f7824j);
            g.b.u("打开正在播放的应用(通知)", 405, this.f7824j);
            g.b.u("快进一次(通知)", 440, this.f7824j);
            g.b.u("快退一次(通知)", 441, this.f7824j);
            g.b.u("前进10秒(通知)", 442, this.f7824j);
            g.b.u("回退10秒(通知)", 443, this.f7824j);
            g.b.u("前进20秒(通知)", 444, this.f7824j);
            g.b.u("下一首(播放中的app)", SMBClient.DEFAULT_PORT, this.f7824j);
            g.b.u("上一首(播放中的app)", 446, this.f7824j);
            this.f7824j.add(new KeyMapSelectBean("通知模式-排除指定APP", 406));
            if (com.yunpan.appmanage.util.k.f().f4053j) {
                g.b.v("多媒体操作(公签模式) 此模式仅适用公签系统", this.f7824j);
                g.b.u("下一首(公签)", 28, this.f7824j);
                g.b.u("上一首(公签)", 29, this.f7824j);
                g.b.u("播放/暂停(公签)", 26, this.f7824j);
                g.b.u("下一首-指定APP(公签)", 30, this.f7824j);
                g.b.u("上一首-指定APP(公签)", 31, this.f7824j);
                g.b.u("播放/暂停-指定(公签)", 34, this.f7824j);
                g.b.u("停止播放(公签)", 27, this.f7824j);
                g.b.u("播放(公签)", 36, this.f7824j);
                g.b.u("暂停(公签)", 404, this.f7824j);
                g.b.u("打开正在播放的应用(公签)", 408, this.f7824j);
                g.b.u("快进一次(公签)", 450, this.f7824j);
                g.b.u("快退一次公签)", 451, this.f7824j);
                g.b.u("前进10秒(公签)", 452, this.f7824j);
                g.b.u("回退10秒(公签)", 453, this.f7824j);
                g.b.u("前进20秒(公签)", 454, this.f7824j);
                g.b.u("下一首(播放中的app)", 455, this.f7824j);
                g.b.u("上一首(播放中的app)", 456, this.f7824j);
                g.b.u("公签模式-排除指定APP", 407, this.f7824j);
            }
        }
        if (com.yunpan.appmanage.util.k.f().f4053j) {
            g.b.v("公签系统功能：API （比shell快）", this.f7824j);
            g.b.u("模拟按键(公签)", 806, this.f7824j);
            g.b.u("模拟点击(公签)", 807, this.f7824j);
            g.b.u("模拟鼠标(公签)", 808, this.f7824j);
            g.b.u("按 下一首", 803, this.f7824j);
            g.b.u("按 上一首", 804, this.f7824j);
            g.b.u("按 静音键", 805, this.f7824j);
            g.b.u("播放/暂停(api1)", 810, this.f7824j);
            g.b.u("播放/暂停(api2)", 811, this.f7824j);
        }
        if (com.yunpan.appmanage.util.k.f().f4053j || fa.h0.c().f()) {
            g.b.v("模拟按键(shell)", this.f7824j);
            g.b.u("模拟按键(shell)", 80, this.f7824j);
            g.b.u("下一首(shell)", 101, this.f7824j);
            g.b.u("上一首(shell)", 102, this.f7824j);
            g.b.u("静音键(shell)", 104, this.f7824j);
            g.b.u("播放/暂停(shell)", 100, this.f7824j);
            g.b.u("播放/暂停(shell)2", 460, this.f7824j);
            g.b.u("停止播放(shell)", 103, this.f7824j);
        }
        if (com.yunpan.appmanage.util.k.f().f4053j || fa.h0.c().f()) {
            g.b.v("以下功能仅适合公签系统或已root系统使用", this.f7824j);
            g.b.u("内存清理(极速模式)", NoConst.RECORDING_TIME_INTERVAL, this.f7824j);
            g.b.u("内存清理(窗口模式)", 301, this.f7824j);
            g.b.u("内存清理(车机模式)", 302, this.f7824j);
            g.b.u("窗口切换(主屏)", 90, this.f7824j);
            g.b.u("应用切换(主屏)", 92, this.f7824j);
            g.b.u("窗口切换(副屏)", 91, this.f7824j);
            g.b.u("模拟点击", 75, this.f7824j);
            g.b.u("强制关闭应用", 73, this.f7824j);
            g.b.u("强制关闭当前应用", 74, this.f7824j);
            g.b.u("截屏", 76, this.f7824j);
            g.b.u("返回主页(桌面)", 53, this.f7824j);
            this.f7824j.add(new KeyMapSelectBean(g.b.l(com.yunpan.appmanage.util.k.f().f4039c, "(task)", new StringBuilder("打开")), 52));
        }
        g.b.v("这些功能适合已root 或 能连接adb 的系统使用\n注：如果是adb的话，请在开机任务中添加一个任务：执行命令(adb) (随便一条命令，如：id)", this.f7824j);
        g.b.u("Q-执行命令", 71, this.f7824j);
        g.b.u("Q-执行命令并显示结果", 72, this.f7824j);
        g.b.u("Q-内存清理", 3009, this.f7824j);
        g.b.u("Q-模拟按键", 3000, this.f7824j);
        g.b.u("Q-模拟点击", 3001, this.f7824j);
        g.b.u("Q-模拟鼠标", 3010, this.f7824j);
        g.b.u("Q-强制关闭应用", 3002, this.f7824j);
        g.b.u("Q-强制关闭当前应用", 3003, this.f7824j);
        g.b.u("Q-截屏", 3005, this.f7824j);
        g.b.u("Q-播放/暂停-2", 3011, this.f7824j);
        if (i11 >= 26) {
            g.b.u("Q-应用切换", 3004, this.f7824j);
        }
        fa.o0.a().getClass();
        if (fa.o0.f() || i11 >= 24) {
            g.b.v("这些功能仅适合已安装并激活shizuku的系统 使用", this.f7824j);
            g.b.u("S-模拟按键", 921, this.f7824j);
            g.b.u("S-模拟点击", 922, this.f7824j);
            g.b.u("S-模拟鼠标", 923, this.f7824j);
            g.b.u("S-执行命令", 920, this.f7824j);
            g.b.u("S-强制关闭应用", 942, this.f7824j);
            g.b.u("S-强制关闭当前应用", 943, this.f7824j);
            g.b.u("S-执行命令并显示结果", 924, this.f7824j);
            g.b.u("S-内存清理", 3009, this.f7824j);
            g.b.u("S-截屏", 944, this.f7824j);
            if (i11 >= 26) {
                g.b.u("S-应用切换", 940, this.f7824j);
            }
        }
        g.b.v("静默启动", this.f7824j);
        g.b.u("静默启动(QQ音乐车机版)", 8002, this.f7824j);
        g.b.u("关闭(QQ音乐车机版)", 8010, this.f7824j);
        g.b.v("附加条件，二级判断", this.f7824j);
        g.b.u("判断(当前应用)", 490, this.f7824j);
        g.b.u("判断(光照亮度)", 7000, this.f7824j);
        g.b.u("判断(屏幕亮度)", 7001, this.f7824j);
        g.b.v("开发者工具", this.f7824j);
        g.b.u("获取窗口节点(保存)", 700, this.f7824j);
        g.b.u("获取窗口节点(显示)", 701, this.f7824j);
        g.b.u("settings put", 750, this.f7824j);
        g.b.u("点击(搜关键字并点击)", 703, this.f7824j);
        if (i11 >= 18) {
            g.b.u("点击(搜节点ID并点击)", 704, this.f7824j);
        }
        g.b.u("settings switch", 751, this.f7824j);
        if (i11 >= 21) {
            g.b.u("获取已打开的播放器(测试用)", 752, this.f7824j);
            g.b.u("重新识别音乐播放器(测试用)", 755, this.f7824j);
        }
        g.b.u("获取点击坐标(悬浮窗)", 705, this.f7824j);
        g.b.u("写入系统日志", 753, this.f7824j);
        g.b.u("停止自动化", 754, this.f7824j);
        if (i11 >= 21) {
            g.b.u("获取当前所有窗口", 706, this.f7824j);
        }
        g.b.v("以下功能规划中", this.f7824j);
        g.b.u("应用列表(全屏)", -10, this.f7824j);
        g.b.u("应用列表(电视)", -10, this.f7824j);
        g.b.u("应用列表(单表)", -10, this.f7824j);
        g.b.u("应用列表(翻页)", -10, this.f7824j);
        g.b.u("应用列表(侧边)", -10, this.f7824j);
        this.f7824j.add(new KeyMapSelectBean("应用列表(环绕悬浮按钮)", -10));
        x9.t0 t0Var = new x9.t0(3);
        this.f7823i = t0Var;
        t0Var.E(this.f7824j);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list);
        this.f7822h = recyclerView;
        recyclerView.setLayoutManager(new QuickGridLayoutManager(context, 3));
        this.f7822h.setScrollBarFadeDuration(0);
        this.f7822h.setScrollBarDefaultDelayBeforeFade(0);
        this.f7822h.setAdapter(this.f7823i);
        this.f7823i.f2881e = new p7(3, this);
    }
}

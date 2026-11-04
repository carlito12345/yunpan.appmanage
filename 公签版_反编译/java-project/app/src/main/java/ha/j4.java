package ha;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.layoutmanager.QuickGridLayoutManager;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.KeyMapSelectBean;
import java.text.DecimalFormat;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class j4 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public RecyclerView f7253g;

    /* renamed from: h, reason: collision with root package name */
    public x9.t0 f7254h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f7255i;

    /* renamed from: j, reason: collision with root package name */
    public final ua.u0 f7256j;

    public j4(Activity activity, Context context, ua.u0 u0Var) {
        super(activity, context, R.layout.dialog_keymap_gn_select);
        this.f7256j = u0Var;
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) throws PackageManager.NameNotFoundException {
        super.onCreate(bundle);
        ArrayList arrayList = new ArrayList();
        this.f7255i = arrayList;
        arrayList.add(new KeyMapSelectBean(R.drawable.return1, "请选择功能"));
        g.b.u("延时", 100, this.f7255i);
        g.b.u("显示提示", 101, this.f7255i);
        g.b.u("返回默认桌面", 103, this.f7255i);
        g.b.u("打开应用", 110, this.f7255i);
        g.b.u("打开应用(特殊1)", 113, this.f7255i);
        g.b.u("打开应用(特殊2)", 114, this.f7255i);
        g.b.u("播放音频", 104, this.f7255i);
        g.b.u("播放视频", 105, this.f7255i);
        g.b.u("打开页面", 111, this.f7255i);
        this.f7255i.add(new KeyMapSelectBean("打开服务", 112));
        Intent intent = new Intent("android.settings.SETTINGS");
        Context context = this.f6725b;
        if (p000if.a.d0(context, intent)) {
            g.b.u("打开原生设置", 200, this.f7255i);
        }
        if (p000if.a.d0(context, new Intent("android.settings.WIFI_SETTINGS"))) {
            g.b.u("打开设置(wifi)", CarSettingID.Recv.IGM_INPUT_OVER_VOLT, this.f7255i);
        }
        if (p000if.a.d0(context, new Intent("android.settings.BLUETOOTH_SETTINGS"))) {
            g.b.u("打开设置(蓝牙)", CarSettingID.Recv.IGM_OVER_TEMP, this.f7255i);
        }
        g.b.v("原生功能开关(注：很多车机不支持原生)", this.f7255i);
        g.b.u("本机热点(开)", 320, this.f7255i);
        g.b.u("本机热点(关)", 321, this.f7255i);
        g.b.u("蓝牙(开)", 310, this.f7255i);
        g.b.u("蓝牙(关)", 311, this.f7255i);
        g.b.u("wifi(开)", NoConst.RECORDING_TIME_INTERVAL, this.f7255i);
        g.b.u("wifi(关)", 301, this.f7255i);
        g.b.v("执行命令行", this.f7255i);
        g.b.u("执行命令(本机)", 500, this.f7255i);
        g.b.u("执行命令(ADB)", 501, this.f7255i);
        g.b.u("激活Shizuku", 502, this.f7255i);
        g.b.u("执行命令并显示结果(本机)", 503, this.f7255i);
        g.b.u("执行命令并显示结果(ADB)", 504, this.f7255i);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            g.b.u("匹配码adb转5555", 405, this.f7255i);
        }
        g.b.v("特殊功能", this.f7255i);
        g.b.u("开启临时无线adb(方法一)", 401, this.f7255i);
        g.b.u("开启临时无线adb(方法二)", 411, this.f7255i);
        if (i10 >= 30) {
            g.b.u("开启无线调试(匹配码)", 402, this.f7255i);
        }
        g.b.u("开启usb调试(原生系统)", 404, this.f7255i);
        g.b.u("settings put", 600, this.f7255i);
        if (i10 >= 19 && i10 <= 30) {
            g.b.u("恢复车机应用沉浸", 601, this.f7255i);
        }
        try {
            context.getPackageManager().getApplicationInfo("com.leapmotor.system", 0);
            this.f7255i.add(new KeyMapSelectBean("零跑车机自动开启adb", 406));
        } catch (Exception unused) {
        }
        this.f7255i.add(new KeyMapSelectBean("等待系统开机完成再继续", 412));
        if (com.yunpan.appmanage.carsdk.e.e(context)) {
            DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
            if (com.yunpan.appmanage.util.j.f4033a.f4055k) {
                g.b.v("广汽专用功能(埃安Y)", this.f7255i);
                g.b.u("检测大灯状态同步主题(广汽)", 407, this.f7255i);
                g.b.u("系统主题改为自动模式(广汽)", 408, this.f7255i);
                g.b.u("关闭行人提示音(广汽)", 410, this.f7255i);
                g.b.u("关闭日间行车灯(广汽)", 409, this.f7255i);
            }
        }
        if (pa.e.b(context)) {
            g.b.v("日产车机S02", this.f7255i);
            g.b.u("开启usb调试(不需要)", 400, this.f7255i);
            g.b.u("蓝牙(开启)", 700, this.f7255i);
        }
        if (Build.VERSION.SDK_INT >= 28) {
            g.b.v("功能测试（设置默认桌面）\n只是设置，如果需要打开，请在后面再添加一个任务打开应用", this.f7255i);
            g.b.u("设置默认桌面(公签/root)", 1000, this.f7255i);
            g.b.u("设置默认桌面(adb)", 1001, this.f7255i);
        }
        g.b.v("功能测试（请勿使用）", this.f7255i);
        this.f7255i.add(new KeyMapSelectBean("强制关闭" + context.getString(R.string.str_gj), 1100));
        g.b.u("强制关闭自动化", 1101, this.f7255i);
        g.b.v("功能测试\n修改系统时间需root权限，多数系统是无权限修改的\n注：如果你系统时间正常，请不要用此功能", this.f7255i);
        g.b.u("同步时间日期(NTP)", 348, this.f7255i);
        g.b.u("修改时间日期(GPS)", 347, this.f7255i);
        this.f7255i.add(new KeyMapSelectBean("修改时间日期(HTTP)", 349));
        x9.t0 t0Var = new x9.t0(3);
        this.f7254h = t0Var;
        t0Var.E(this.f7255i);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list);
        this.f7253g = recyclerView;
        recyclerView.setLayoutManager(new QuickGridLayoutManager(context, 3));
        this.f7253g.setAdapter(this.f7254h);
        this.f7254h.f2881e = new a1.d(16, this);
    }
}

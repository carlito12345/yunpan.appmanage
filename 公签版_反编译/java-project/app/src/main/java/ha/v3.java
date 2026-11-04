package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class v3 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7902g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f7903h;

    public v3(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_automation_set);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        PowerManager powerManager;
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7902g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.j3 j3Var = new x9.j3();
        this.f7903h = j3Var;
        wa.u uVar = wa.t.f17728a;
        j3Var.q(new NameContentSelectBean("自动化服务关闭时弹出提示", "自动化服务被关闭时会弹出提示", uVar.D));
        this.f7903h.q(new NameContentSelectBean("自动化启动时执行开机任务", "有些设备无法开机自启所以无法执行开机任务，但却能主动开启无障碍服务(自动化任务就是无障碍服务)，那么就可以勾选这个，当自动化服务启动时就执行开机任务(仅在开机时有效)！看不懂文字的请不要勾选", uVar.E));
        this.f7903h.q(new NameContentSelectBean("遇到系统弹窗自动隐藏悬浮窗", "系统安装器、权限授权窗、usb调试弹窗、开发者选项 等这些系统窗口不能出现悬浮窗，如果有悬浮窗在这些窗口上层的话，会导致这些窗口无法点击确定，这属于android的安全机制！如果你的系统存在这种机制，那么请勾选这个功能！\n注：" + context.getString(R.string.str_gj) + "只是隐藏自身创建的悬浮窗", uVar.G));
        this.f7903h.q(new NameContentSelectBean("息屏时关闭自动化，亮屏时开启自动化", "注：正常情况下无需勾选此功能！此功能是特殊车机用的，如：某休眠类型的系统，进入休眠时(息屏)系统会强制关闭无障碍服务，导致无障碍服务异常，亮屏后无法开启自动化，那么可考虑勾选此项目", uVar.F));
        x9.j3 j3Var2 = this.f7903h;
        StringBuilder sb2 = new StringBuilder("熔断保护：两分钟内连续触发");
        int i10 = uVar.z;
        sb2.append(i10 == 0 ? "40" : Integer.valueOf(i10));
        sb2.append("次映射以上时，停止自动化");
        j3Var2.q(new NameContentSelectBean(sb2.toString(), "假如无意中设置了错误的映射，导致连续触发映射，而无法手动干预的情况！勾选熔断保护就可以很好地避免这种错误危机！ 可以不勾选这个！  这里的映射保护是指除了日志映射外的所有映射！ 日志映射熔断请用下面那个", uVar.z > 0));
        x9.j3 j3Var3 = this.f7903h;
        StringBuilder sb3 = new StringBuilder("日志熔断保护：两分钟内连续触发");
        int i11 = uVar.A;
        sb3.append(i11 != 0 ? Integer.valueOf(i11) : "40");
        sb3.append("次日志映射以上时，停止自动化");
        j3Var3.q(new NameContentSelectBean(sb3.toString(), "假如无意中设置了错误的日志映射，导致连续触发映射，而无法手动干预的情况！勾选熔断保护就可以很好地避免这种错误危机！ 请一定要勾选这个", uVar.A > 0));
        this.f7903h.q(new NameContentSelectBean("保活措施：创建通知栏服务", "注：此功能一般没啥用处！有些系统会杀后台，无障碍服务运行过程中被系统偷偷杀死，导致自动化任务失效！ 如果您的系统会这样的话，可尝试勾选这个保活措施，会在通知栏显示" + context.getResources().getString(R.string.app_name) + "守护服务！", uVar.C));
        this.f7903h.q(new NameContentSelectBean("保活措施：不显示在最近任务", context.getString(R.string.app_name) + " 不显示在最近任务", uVar.B));
        this.f7903h.q(new NameContentSelectBean("自动化被误关时重新启动", "某些系统开机时会把无障碍服务关闭，而且无法用无障碍持久服务时，可以尝试此功能，正常情况无需勾选！", uVar.H));
        this.f7903h.q(new NameContentSelectBean("自动化被误关时执行开机任务", "(不要勾选)某些系统开机时会把无障碍服务关闭，而且无法用开机任务时，可尝试此功能，正常情况无需勾选！", uVar.I));
        if (Build.VERSION.SDK_INT >= 23 && (powerManager = (PowerManager) context.getSystemService("power")) != null) {
            this.f7903h.q(new NameContentSelectBean("保活措施：忽略电池优化（强烈建议勾选）", "授予我(忽略电池优化)的权限，可有效避免系统偷偷关闭自动化任务", powerManager.isIgnoringBatteryOptimizations(context.getPackageName())));
        }
        this.f7902g.setAdapter(this.f7903h);
        this.f7903h.f2881e = new a1.d(15, this);
    }
}

package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class b extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f6765g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f6766h;

    public b(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_accessibility_set);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f6765g = tvRecyclerView;
        Context context = this.f6725b;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        String string = context.getString(R.string.str_gj);
        x9.j3 j3Var = new x9.j3();
        this.f6766h = j3Var;
        String strL = ta.q.l("某些系统重启后会重置无障碍,那请勾选此功能！开机后", string, "会短暂运行开启无障碍设置(所以系统需允许", string, "自启动才行)");
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        j3Var.q(new NameContentSelectBean("无障碍开机保持", strL, wVar.R));
        x9.j3 j3Var2 = this.f6766h;
        wa.u uVar = wa.t.f17728a;
        j3Var2.q(new NameContentSelectBean("重启无障碍服务", "某些脑残系统开机后无障碍服务是开启的，但是服务切不能运行！那么请勾选此功能！ 正常的情况下无需勾选哦", uVar.f17737e));
        this.f6766h.q(new NameContentSelectBean("使用root权进行管理", "一些系统只能用root权才能管理无障碍，如果您的系统能正常管理的话请不要勾选这个", wVar.S));
        this.f6766h.q(new NameContentSelectBean("开机后手动点击启动(不要勾选)", "某些车机熄火后不会彻底关机(只是进入深度睡眠状态)，导致每次开机后" + string + "无法实现自启动，持久功能也无法执行！对于这种设备，只能自己手动打开" + string + "就会执行持久任务或开机任务\n\n注意：现在大部分休眠车机，" + context.getString(R.string.str_gj) + "都能实现自启动了，不需要勾选此项了", uVar.f17743h));
        x9.j3 j3Var3 = this.f6766h;
        StringBuilder sb2 = new StringBuilder("这个选项是对于(无障碍开机保持)时有效\n先介绍：所有的无障碍服务的开/关，系统都是保存在一个配置里面的，我们通过修改这个配置来达到控制某个服务的开启/关闭！而这里所谓的覆盖是指：开机后完全按照你在");
        sb2.append(context.getString(R.string.str_gj));
        sb2.append("里的无障碍(开/关)一致来设置， 而追加则是：开机后在系统原有开启的无障碍基础上，追加你在");
        sb2.append(context.getString(R.string.str_gj));
        sb2.append("中已开启的无障碍服务！\n\n看不懂没关系，更直接的说法：不用勾选这个选项，除非你需要在开机时关闭某些系统开启的无障碍服务！(注：勾选重启无障碍服务的话，那将采用覆盖方式)");
        j3Var3.q(new NameContentSelectBean("采用覆盖方式(不勾选是追加)", sb2.toString(), uVar.f17739f));
        this.f6765g.setAdapter(this.f6766h);
        this.f6766h.f2881e = new a1.d(6, this);
    }
}

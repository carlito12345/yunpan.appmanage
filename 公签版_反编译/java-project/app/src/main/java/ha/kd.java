package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class kd extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7332g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f7333h;

    public kd(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_automation_set);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TextView textView = (TextView) findViewById(R.id.v_ts1);
        StringBuilder sb2 = new StringBuilder("如果您的TCL电视用");
        Context context = this.f6725b;
        sb2.append(context.getString(R.string.str_gj));
        sb2.append("无法安装应用，请尝试以下模式\n请自行测试可用性，如果不适合请改回默认，非TCL设备请默认[不设置]");
        textView.setText(sb2.toString());
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7332g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.j3 j3Var = new x9.j3();
        this.f7333h = j3Var;
        com.yunpan.appmanage.util.w wVar = com.yunpan.appmanage.util.v.f4106a;
        j3Var.q(new NameContentSelectBean("不设置(默认)", "能正常安装app 或 连adb后能正常安装app的情况下，默认即可", wVar.T == 0));
        this.f7333h.q(new NameContentSelectBean("禁用系统安装器", "支持部分系统：adb连接后安装应用，安装时临时禁用系统安装器，安装成功后恢复系统安装器", wVar.T == 1));
        this.f7333h.q(new NameContentSelectBean("多屏互动(不等待)", "如果您电视自带多屏互动app，可使用此方法安装app", wVar.T == 2));
        this.f7333h.q(new NameContentSelectBean("多屏互动(等三秒)", "同上，区别是：安装完成后，等电视右上角窗口消失后再提示完成！ 如果是上面这个模式的话，不等待窗口消失，直接完成，那电视窗口会提示下载失败(实际上已安装成功)", wVar.T == 3));
        this.f7332g.setAdapter(this.f7333h);
        this.f7333h.f2881e = new jd(0);
    }
}

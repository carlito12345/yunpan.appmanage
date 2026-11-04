package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public final class sa extends a4 {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f7757j = 0;

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7758g;

    /* renamed from: h, reason: collision with root package name */
    public x9.k3 f7759h;

    /* renamed from: i, reason: collision with root package name */
    public u9 f7760i;

    public sa(Activity activity, Context context) {
        super(activity, context, R.layout.dialog_otg, false);
    }

    public final void a(int i10) {
        if (fa.a.f5647b.c()) {
            new mc.c(0, new fa.d0(i10, 0)).d(rc.f.f13757b).a(fc.b.a()).b(new ra(this, 4));
        } else {
            com.yunpan.appmanage.util.a0.s("OTG已断开，请重新连接", false);
            dismiss();
        }
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Activity activity = this.f6724a;
        Context context = this.f6725b;
        this.f7760i = new u9(activity, context);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_btn_return);
        constraintLayout.requestFocus();
        constraintLayout.setOnClickListener(new g9(4, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7758g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(context, 2));
        x9.k3 k3Var = new x9.k3();
        this.f7759h = k3Var;
        g.b.p(R.drawable.tp_upload1, "安装应用到设备上", k3Var);
        g.b.p(R.drawable.tp_shell, "执行命令", this.f7759h);
        g.b.p(R.drawable.tp_adb1, "临时开启无线ADB(仅支持部分系统)", this.f7759h);
        g.b.p(R.drawable.tp_adb1, "永久开启无线ADB(仅支持部分系统)", this.f7759h);
        g.b.p(R.drawable.tp_adb1, "将网络adb端口改为5555", this.f7759h);
        g.b.p(R.drawable.tp_adb1, "将网络adb端口改为指定", this.f7759h);
        x9.k3 k3Var2 = this.f7759h;
        StringBuilder sb2 = new StringBuilder("给对方[");
        DecimalFormat decimalFormat = com.yunpan.appmanage.util.k.f4034u0;
        com.yunpan.appmanage.util.k kVar = com.yunpan.appmanage.util.j.f4033a;
        k3Var2.q(new x9.l3(R.drawable.root2, g.b.l(kVar.f4039c, "]授予必要权限", sb2)));
        this.f7759h.q(new x9.l3(R.drawable.root2, g.b.l(kVar.f4039c, "]jni-adb服务", new StringBuilder("激活对方["))));
        g.b.p(R.drawable.tp_cq, "重启设备", this.f7759h);
        g.b.p(R.drawable.tp_app1, "(未开发)管理应用", this.f7759h);
        g.b.p(R.drawable.tp_root6, "(未开发)adb提权(临时提升为root权限)", this.f7759h);
        g.b.p(R.drawable.tp_suo6, "(未开发)关闭分区检测", this.f7759h);
        this.f7758g.setAdapter(this.f7759h);
        this.f7759h.f2881e = new pa(this);
    }
}

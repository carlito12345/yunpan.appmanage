package ha;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameContentSelectBean;

/* loaded from: classes.dex */
public final class n9 extends a4 {

    /* renamed from: g, reason: collision with root package name */
    public TvRecyclerView f7473g;

    /* renamed from: h, reason: collision with root package name */
    public x9.j3 f7474h;

    /* renamed from: i, reason: collision with root package name */
    public z7.s f7475i;

    public n9(Activity activity, da.g gVar) {
        super(activity, gVar, R.layout.dialog_accessibility_set);
    }

    @Override // ha.a4, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        findViewById(R.id.v_ts1).setVisibility(8);
        Context context = this.f6725b;
        z7.s sVarQ = q4.a.q(context);
        this.f7475i = sVarQ;
        if (sVarQ == null) {
            com.yunpan.appmanage.util.a0.u("读取配置出错");
            dismiss();
            return;
        }
        if (!sVarQ.f19480a.containsKey("auto_parking")) {
            this.f7475i.k("auto_parking", Boolean.FALSE);
        }
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.f7473g = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager(context, 1, false));
        x9.j3 j3Var = new x9.j3();
        this.f7474h = j3Var;
        j3Var.q(new NameContentSelectBean("自动驻车", "低配车型没有自动驻车功能，可以勾选这个即可自动驻车\n（注：和高配车型一样需深踩刹车即可自动驻车）\n\n警告：由于系统里电子驻车功能不能常用，多用的话会导致仪表提示真空泵异常，所以为了安全起见，不要使用此功能！ 此功能报废", this.f7475i.o("auto_parking").b()));
        this.f7473g.setAdapter(this.f7474h);
        this.f7474h.f2881e = new p7(2, this);
    }
}

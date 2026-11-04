package com.yunpan.appmanage.ui;

import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.v;
import da.g;
import g.b;
import ha.u9;
import ph.j;
import ua.g1;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityOuShang extends g {
    public static final /* synthetic */ int E = 0;
    public TvRecyclerView C;
    public k3 D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((TextView) findViewById(R.id.v_title)).setText("Z6、X7、X5等欧尚车机专用");
        new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 24));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        b.p(R.drawable.tp_sf1, "应用全屏管理", k3Var);
        b.p(R.drawable.tp_sf1, "应用全屏管理(无需提权)", this.D);
        b.p(R.drawable.tp_dp2, "应用白名单管理", this.D);
        this.D.q(new l3(v.f4106a.E ? R.drawable.tp_check1 : R.drawable.tp_check2, "安装应用时自动添加白名单"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new j(28, this);
    }
}

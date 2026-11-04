package com.yunpan.appmanage.ui;

import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.v;
import com.yunpan.appmanage.util.w;
import da.g;
import g.b;
import ha.u9;
import ph.j;
import ua.g1;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivityJiliE02 extends g {
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
        ((TextView) findViewById(R.id.v_title)).setText("吉利E02系统专用功能，禁止用于非法用途、商业用途");
        new u9(this, this.A);
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 9));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        w wVar = v.f4106a;
        boolean z = wVar.K;
        int i10 = R.drawable.tp_check2;
        k3Var.q(new l3(z ? R.drawable.tp_check1 : R.drawable.tp_check2, "打开管家时自动解除安装限制"));
        k3 k3Var2 = this.D;
        if (wVar.L) {
            i10 = R.drawable.tp_check1;
        }
        k3Var2.q(new l3(i10, "关闭管家时自动恢复安装限制"));
        b.p(R.drawable.tp_dp2, "原车应用市场：禁用/恢复", this.D);
        b.p(R.drawable.tp_dp2, "应用安装限制：解除/恢复", this.D);
        b.p(R.drawable.tp_dp2, "临时：恢复整车设置缺失功能", this.D);
        b.p(R.drawable.tp_dp2, "完全：恢复整车设置缺失功能", this.D);
        this.C.setAdapter(this.D);
        this.D.f2881e = new j(20, this);
    }
}

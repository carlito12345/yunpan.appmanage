package com.yunpan.appmanage.ui;

import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.a0;
import da.g;
import g.b;
import ha.u9;
import ta.m;
import ua.g1;
import ua.g5;
import x9.k3;
import x9.l3;

/* loaded from: classes.dex */
public class ActivitySeccompRoot extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public k3 D;
    public u9 E;
    public boolean F = false;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        if (this.F != a0.g(this.A.getFilesDir().getPath() + "/EnableAccSeccompRoot")) {
            m.c(this.A, "UP_ACC_SHELL_SECCOMP_ROOT");
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_seccomp_root;
    }

    @Override // da.g
    public final void u() {
        this.E = new u9(this, this.A);
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 27));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        this.F = a0.g(this.A.getFilesDir().getPath() + "/EnableAccSeccompRoot");
        k3 k3Var = new k3();
        this.D = k3Var;
        b.p(R.drawable.tp_root6, "将shell提权为root权限", k3Var);
        this.D.q(new l3(this.F ? R.drawable.tp_check1 : R.drawable.tp_check2, "自动化任务的shell提升为root"));
        this.C.setAdapter(this.D);
        this.D.f2881e = new g5(2, this);
    }
}

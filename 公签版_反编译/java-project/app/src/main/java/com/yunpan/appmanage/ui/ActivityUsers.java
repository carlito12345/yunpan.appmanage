package com.yunpan.appmanage.ui;

import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import g.b;
import ha.l2;
import ha.v1;
import java.util.HashMap;
import java.util.HashSet;
import mc.c;
import rc.f;
import ua.g5;
import ua.z6;
import x9.k3;

/* loaded from: classes.dex */
public class ActivityUsers extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public k3 D;
    public final HashMap E = new HashMap();
    public final HashSet F = new HashSet();

    @Override // da.g
    public final int t() {
        return R.layout.activity_laboratory;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("请勿点任何功能，后果自负");
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new z6(4, this));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 2));
        k3 k3Var = new k3();
        this.D = k3Var;
        b.p(R.drawable.tp_wifi2, "查看当前用户", k3Var);
        b.p(R.drawable.tp_wifi2, "查看所有用户", this.D);
        b.p(R.drawable.tp_wifi2, "添加用户", this.D);
        b.p(R.drawable.tp_wifi2, "删除用户", this.D);
        b.p(R.drawable.tp_wifi2, "切换用户", this.D);
        b.p(R.drawable.tp_wifi2, "卸载个人应用", this.D);
        this.C.setAdapter(this.D);
        x(1, "");
        this.D.f2881e = new g5(11, this);
    }

    public final void x(int i10, String str) {
        new c(0, new v1(this, i10, str, 14)).d(f.f13757b).a(fc.b.a()).b(new l2(28));
    }
}

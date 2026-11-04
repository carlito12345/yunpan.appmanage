package com.yunpan.appmanage.ui;

import android.content.Context;
import android.widget.TextView;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import fc.b;
import ha.fa;
import ha.m6;
import ha.o4;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.g1;
import ua.o2;
import x9.j1;
import x9.m2;
import x9.n2;

/* loaded from: classes.dex */
public class ActivityImmersive extends g {
    public static final /* synthetic */ int N = 0;
    public TextView C;
    public TextView D;
    public TvRecyclerView E;
    public n2 F;
    public TvRecyclerView G;
    public m2 H;
    public int I;
    public fa K;
    public int L = 0;
    public final ArrayList M = new ArrayList();

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.H.E(new ArrayList());
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_immersive;
    }

    @Override // da.g
    public final void u() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("默认模式");
        arrayList.add("全屏模式");
        arrayList.add("隐藏状态栏");
        arrayList.add("隐藏导航栏");
        this.K = new fa(this, this, null, arrayList, new ua.m2(this, 0));
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        textView.setOnClickListener(new g1(this, 5));
        textView.setOnKeyListener(new o4(4));
        this.C = (TextView) findViewById(R.id.v_ts);
        this.D = (TextView) findViewById(R.id.v_des);
        n2 n2Var = new n2();
        this.F = n2Var;
        n2Var.q(new j1("默认模式", 0));
        this.F.q(new j1("全屏模式", 0));
        this.F.q(new j1("多样模式", 0));
        this.F.q(new j1("隐藏状态栏", 0));
        this.F.q(new j1("隐藏导航栏", 0));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        this.E.setAdapter(this.F);
        this.F.f2881e = new ua.m2(this, 3);
        this.E.setOnItemListener(new ua.n2());
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.G = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7GridLayoutManager(this.A, 6));
        m2 m2Var = new m2(this);
        this.H = m2Var;
        this.G.setAdapter(m2Var);
        this.H.f2881e = new ua.m2(this, 1);
        this.G.setOnItemListener(new o2());
        new c(0, new ua.m2(this, 2)).d(f.f13757b).a(b.a()).b(new ka.c(18, this));
    }

    public final void x(String str) {
        new c(0, new ma.b(this, 18, str)).d(f.f13757b).a(b.a()).b(new m6(9));
    }
}

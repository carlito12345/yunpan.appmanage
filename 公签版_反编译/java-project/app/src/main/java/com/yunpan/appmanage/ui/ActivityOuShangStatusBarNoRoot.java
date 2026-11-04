package com.yunpan.appmanage.ui;

import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import ha.h3;
import java.util.ArrayList;
import ma.b;
import mc.c;
import rc.f;
import ua.g1;
import ua.g5;
import x9.m2;

/* loaded from: classes.dex */
public class ActivityOuShangStatusBarNoRoot extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public m2 D;
    public boolean E = false;

    @Override // da.g
    public final int t() {
        return R.layout.activity_oushang_status_bar;
    }

    @Override // da.g
    public final void u() {
        this.A.getContentResolver();
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 26));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 6));
        m2 m2Var = new m2(this);
        this.D = m2Var;
        this.C.setAdapter(m2Var);
        this.D.f2881e = new g5(0, this);
        ArrayList arrayList = new ArrayList();
        new c(0, new b(this, 27, arrayList)).d(f.f13757b).a(fc.b.a()).b(new h3(this, 14, arrayList));
    }
}

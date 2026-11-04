package com.yunpan.appmanage.ui;

import android.content.Context;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import fc.b;
import mc.c;
import rc.f;
import ua.g1;
import ua.k1;
import x9.l1;

/* loaded from: classes.dex */
public class ActivityDesktopSelected extends g {
    public static final /* synthetic */ int E = 0;
    public TvRecyclerView C;
    public l1 D;

    @Override // da.g
    public final int t() {
        return R.layout.activity_desktop_selected;
    }

    @Override // da.g
    public final void u() {
        ((ConstraintLayout) findViewById(R.id.v_btn_return)).setOnClickListener(new g1(this, 1));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this, 1, false));
        l1 l1Var = new l1(this);
        this.D = l1Var;
        this.C.setAdapter(l1Var);
        this.D.f2881e = new k1(this);
        new c(0, new k1(this)).d(f.f13757b).a(b.a()).b(new ka.c(13, this));
    }
}

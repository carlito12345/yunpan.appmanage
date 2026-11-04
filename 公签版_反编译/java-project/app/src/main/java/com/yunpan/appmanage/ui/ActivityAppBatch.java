package com.yunpan.appmanage.ui;

import android.content.Context;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import da.g;
import fc.b;
import mc.c;
import rc.f;
import tb.v;
import ua.h;
import ua.i;
import ua.j;
import x9.l3;
import x9.t1;
import x9.u;

/* loaded from: classes.dex */
public class ActivityAppBatch extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public t1 D;
    public TvRecyclerView E;
    public u F;

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_pl;
    }

    @Override // da.g
    public final void u() {
        this.F = new u(this.A);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 6));
        this.E.setAdapter(this.F);
        this.F.f2881e = new h(this, 1);
        this.E.setOnItemListener(new j());
        this.E.setOnInBorderKeyEventListener(new v(19));
        this.D = new t1();
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.C = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.C.setAdapter(this.D);
        this.D.q(new l3(R.drawable.check2, "全选"));
        this.D.q(new l3(R.drawable.check1, "不选"));
        this.D.q(new l3(R.drawable.tp_delete1, "卸载"));
        this.D.q(new l3(R.drawable.tp_apk1, "提取"));
        this.D.q(new l3(R.drawable.tp_cache1, "缓存"));
        this.D.q(new l3(R.drawable.tp_cache3, "重置"));
        this.D.q(new l3(R.drawable.tp_fh1, "返回"));
        this.D.f2881e = new h(this, 0);
        this.C.setOnItemListener(new i());
        this.C.setOnInBorderKeyEventListener(new v(17));
        this.C.setSelection(0);
        this.C.requestFocus();
        new c(0, new v(18)).d(f.f13757b).a(b.a()).b(new ka.c(6, this));
    }
}

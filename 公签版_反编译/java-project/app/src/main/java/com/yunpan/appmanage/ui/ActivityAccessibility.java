package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.y;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAccessibility;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import ha.l4;
import java.text.DecimalFormat;
import mc.c;
import rc.f;
import tb.v;
import x9.a;

/* loaded from: classes.dex */
public class ActivityAccessibility extends g {
    public static final /* synthetic */ int G = 0;
    public TvRecyclerView C;
    public a D;
    public TextView E;
    public String F = "";

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.D.E(null);
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_accessibility;
    }

    @Override // da.g
    public final void u() {
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAccessibility f15557b;

            {
                this.f15557b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAccessibility activityAccessibility = this.f15557b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityAccessibility.G;
                        activityAccessibility.finish();
                        break;
                    default:
                        int i12 = ActivityAccessibility.G;
                        activityAccessibility.getClass();
                        new ha.b(activityAccessibility, activityAccessibility).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_set).setOnClickListener(new View.OnClickListener(this) { // from class: ua.a

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAccessibility f15557b;

            {
                this.f15557b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAccessibility activityAccessibility = this.f15557b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityAccessibility.G;
                        activityAccessibility.finish();
                        break;
                    default:
                        int i12 = ActivityAccessibility.G;
                        activityAccessibility.getClass();
                        new ha.b(activityAccessibility, activityAccessibility).show();
                        break;
                }
            }
        });
        this.E = (TextView) findViewById(R.id.v_ts);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        a aVar = new a(this.A);
        this.D = aVar;
        this.C.setAdapter(aVar);
        y yVar = new y(this.A);
        yVar.e(n0.g.e(this.A, R.drawable.divider));
        this.C.addItemDecoration(yVar);
        new c(i10, new ua.b(this, i11)).d(f.f13757b).a(fc.b.a()).b(new ka.c(5, this));
        this.D.f2881e = new ua.b(this, i10);
        this.C.setOnInBorderKeyEventListener(new v(13));
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = j.f4033a;
        g gVar = this.A;
        kVar.getClass();
        k.m(gVar, "授权失败，无法使用无障碍持久功能");
    }

    public final void x(int i10) {
        x9.b bVar = (x9.b) this.D.t(i10);
        bVar.f18201f = !bVar.f18201f;
        this.D.D(i10, bVar);
        new c(0, new ua.b(this, 2)).d(f.f13757b).a(fc.b.a()).b(new l4(this, bVar, i10, 1));
    }
}

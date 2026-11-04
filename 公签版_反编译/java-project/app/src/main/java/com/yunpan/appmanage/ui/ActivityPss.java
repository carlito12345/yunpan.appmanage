package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityPss;
import com.yunpan.appmanage.util.v;
import da.g;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.v0;
import ua.w5;
import x9.c0;
import x9.h4;

/* loaded from: classes.dex */
public class ActivityPss extends g {
    public static final /* synthetic */ int M = 0;
    public RecyclerView C;
    public c0 D;
    public TvRecyclerView E;
    public h4 F;
    public ArrayList G = new ArrayList();
    public final ArrayList H = new ArrayList();
    public final ArrayList I = new ArrayList();
    public ConstraintLayout K;
    public LinearLayout L;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.F.E(null);
        this.E = null;
        this.F = null;
        this.G = null;
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_pss;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.K = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.L = linearLayout;
        linearLayout.setVisibility(8);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.x5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPss f16037b;

            {
                this.f16037b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPss activityPss = this.f16037b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityPss.M;
                        activityPss.finish();
                        break;
                    case 1:
                        int i12 = ActivityPss.M;
                        activityPss.x();
                        break;
                    default:
                        int i13 = ActivityPss.M;
                        ActivityPss activityPss2 = this.f16037b;
                        activityPss2.getClass();
                        new ha.z6(activityPss2, activityPss2, "每个应用真实内存占用情况", "", "明白了", "", new s5.c(13), 0).show();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_reload).setOnClickListener(new View.OnClickListener(this) { // from class: ua.x5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPss f16037b;

            {
                this.f16037b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPss activityPss = this.f16037b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityPss.M;
                        activityPss.finish();
                        break;
                    case 1:
                        int i12 = ActivityPss.M;
                        activityPss.x();
                        break;
                    default:
                        int i13 = ActivityPss.M;
                        ActivityPss activityPss2 = this.f16037b;
                        activityPss2.getClass();
                        new ha.z6(activityPss2, activityPss2, "每个应用真实内存占用情况", "", "明白了", "", new s5.c(13), 0).show();
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.x5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPss f16037b;

            {
                this.f16037b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPss activityPss = this.f16037b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityPss.M;
                        activityPss.finish();
                        break;
                    case 1:
                        int i122 = ActivityPss.M;
                        activityPss.x();
                        break;
                    default:
                        int i13 = ActivityPss.M;
                        ActivityPss activityPss2 = this.f16037b;
                        activityPss2.getClass();
                        new ha.z6(activityPss2, activityPss2, "每个应用真实内存占用情况", "", "明白了", "", new s5.c(13), 0).show();
                        break;
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type);
        this.C = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        c0 c0Var = new c0();
        this.D = c0Var;
        g.b.w("详细", false, c0Var);
        g.b.w("精简", false, this.D);
        g.b.w("合并进程", false, this.D);
        this.D.G(v.f4106a.Q);
        this.C.setAdapter(this.D);
        this.D.f2881e = new w5(this, 1);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        h4 h4Var = new h4(this.A);
        this.F = h4Var;
        this.E.setAdapter(h4Var);
        this.F.f2881e = new w5(this, 2);
        this.E.setOnInBorderKeyEventListener(new v0(26));
        x();
    }

    public final void x() {
        this.G.clear();
        this.I.clear();
        this.H.clear();
        new c(0, new w5(this, 0)).d(f.f13757b).a(fc.b.a()).b(new ka.c(24, this));
    }
}

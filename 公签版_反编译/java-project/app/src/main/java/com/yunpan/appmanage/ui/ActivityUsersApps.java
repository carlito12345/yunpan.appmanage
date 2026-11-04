package com.yunpan.appmanage.ui;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityUsersApps;
import da.g;
import ha.u9;
import java.util.HashSet;
import mc.c;
import rc.f;
import ua.r7;
import ua.s7;
import x9.a0;
import x9.c0;

/* loaded from: classes.dex */
public class ActivityUsersApps extends g {
    public static final /* synthetic */ int K = 0;
    public RecyclerView C;
    public c0 D;
    public TvRecyclerView E;
    public a0 F;
    public LinearLayout G;
    public u9 H;
    public final HashSet I = new HashSet();

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        if (this.H.isShowing()) {
            this.H.a();
        }
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_apps;
    }

    @Override // da.g
    public final void u() {
        this.H = new u9(this, this);
        findViewById(R.id.v_search).setVisibility(8);
        final int i10 = 0;
        ((TextView) findViewById(R.id.v_btn_return)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityUsersApps f15907b;

            {
                this.f15907b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityUsersApps activityUsersApps = this.f15907b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityUsersApps.K;
                        activityUsersApps.finish();
                        break;
                    default:
                        int i12 = ActivityUsersApps.K;
                        activityUsersApps.getClass();
                        new mc.c(0, new r7(activityUsersApps)).d(rc.f.f13757b).a(fc.b.a()).b(new s7(1, activityUsersApps));
                        break;
                }
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        final int i11 = 1;
        findViewById(R.id.v_btn_reload).setOnClickListener(new View.OnClickListener(this) { // from class: ua.q7

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityUsersApps f15907b;

            {
                this.f15907b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityUsersApps activityUsersApps = this.f15907b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityUsersApps.K;
                        activityUsersApps.finish();
                        break;
                    default:
                        int i12 = ActivityUsersApps.K;
                        activityUsersApps.getClass();
                        new mc.c(0, new r7(activityUsersApps)).d(rc.f.f13757b).a(fc.b.a()).b(new s7(1, activityUsersApps));
                        break;
                }
            }
        });
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.v_list_type);
        this.C = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(0, false));
        c0 c0Var = new c0();
        this.D = c0Var;
        g.b.w("个人应用", true, c0Var);
        this.C.setAdapter(this.D);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.E = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 7));
        a0 a0Var = new a0(this);
        this.F = a0Var;
        this.E.setAdapter(a0Var);
        this.F.f2881e = new r7(this);
        new c(0, new r7(this)).d(f.f13757b).a(fc.b.a()).b(new s7(1, this));
    }
}

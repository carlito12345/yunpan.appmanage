package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.PssBean;
import com.yunpan.appmanage.ui.ActivityPs;
import com.yunpan.appmanage.ui.ActivityPss;
import com.yunpan.appmanage.ui.ActivityRunMemory;
import com.yunpan.appmanage.util.j;
import com.yunpan.appmanage.util.k;
import da.g;
import java.text.DecimalFormat;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ua.d6;
import ua.f6;
import ua.v0;
import x9.p4;

/* loaded from: classes.dex */
public class ActivityRunMemory extends g {
    public static final /* synthetic */ int I = 0;
    public ArrayList C = new ArrayList();
    public TvRecyclerView D;
    public p4 E;
    public ConstraintLayout F;
    public TextView G;
    public TextView H;

    public static String x(ActivityRunMemory activityRunMemory, double d10) {
        activityRunMemory.getClass();
        return d10 < 1024.0d ? String.format("%.2f", Double.valueOf(d10)).concat("k") : d10 < 1048576.0d ? String.format("%.2f", Double.valueOf(d10 / 1024.0d)).concat("M") : String.format("%.2f", Double.valueOf(d10 / 1048576.0d)).concat("G");
    }

    public static void y(ActivityRunMemory activityRunMemory, int i10, boolean z) {
        final int i11 = 1;
        final PssBean pssBean = (PssBean) activityRunMemory.E.t(i10);
        if (z) {
            activityRunMemory.E.C(i10);
        } else {
            activityRunMemory.E.C(i10);
            for (int iB = activityRunMemory.E.b() - 1; iB >= 0; iB--) {
                if (((PssBean) activityRunMemory.E.t(iB)).pack.equals(pssBean.pack)) {
                    activityRunMemory.E.C(iB);
                }
            }
        }
        if (activityRunMemory.E.b() == 0) {
            activityRunMemory.H.requestFocus();
        }
        if (!z) {
            DecimalFormat decimalFormat = k.f4034u0;
            j.f4033a.f4048g0.submit(new Runnable() { // from class: ua.e6
                @Override // java.lang.Runnable
                public final void run() {
                    PssBean pssBean2 = pssBean;
                    switch (i11) {
                        case 0:
                            int i12 = ActivityRunMemory.I;
                            for (String str : pssBean2.pid.split(",")) {
                                if (!str.isEmpty()) {
                                    a2.w0 w0Var = fa.b0.f5652a;
                                    String strConcat = "kill -9 ".concat(str);
                                    w0Var.getClass();
                                    a2.w0.q(2000L, strConcat);
                                }
                            }
                            break;
                        default:
                            int i13 = ActivityRunMemory.I;
                            a2.w0 w0Var2 = fa.b0.f5652a;
                            String str2 = "am force-stop '" + pssBean2.pack + "'";
                            w0Var2.getClass();
                            a2.w0.q(2000L, str2);
                            break;
                    }
                }
            });
        } else {
            DecimalFormat decimalFormat2 = k.f4034u0;
            final int i12 = 0;
            j.f4033a.f4048g0.submit(new Runnable() { // from class: ua.e6
                @Override // java.lang.Runnable
                public final void run() {
                    PssBean pssBean2 = pssBean;
                    switch (i12) {
                        case 0:
                            int i122 = ActivityRunMemory.I;
                            for (String str : pssBean2.pid.split(",")) {
                                if (!str.isEmpty()) {
                                    a2.w0 w0Var = fa.b0.f5652a;
                                    String strConcat = "kill -9 ".concat(str);
                                    w0Var.getClass();
                                    a2.w0.q(2000L, strConcat);
                                }
                            }
                            break;
                        default:
                            int i13 = ActivityRunMemory.I;
                            a2.w0 w0Var2 = fa.b0.f5652a;
                            String str2 = "am force-stop '" + pssBean2.pack + "'";
                            w0Var2.getClass();
                            a2.w0.q(2000L, str2);
                            break;
                    }
                }
            });
        }
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.E.E(null);
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_run_memory;
    }

    @Override // da.g
    public final void u() {
        this.E = new p4(this.A);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.D = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.D.setAdapter(this.E);
        this.E.f2881e = new d6(this);
        this.D.setOnItemListener(new f6());
        this.D.setOnInBorderKeyEventListener(new v0(27));
        this.F = (ConstraintLayout) findViewById(R.id.v_lay_loading);
        this.G = (TextView) findViewById(R.id.v_text_memory);
        final int i10 = 0;
        findViewById(R.id.v_btn_new).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRunMemory f15616b;

            {
                this.f15616b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRunMemory activityRunMemory = this.f15616b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPss.class);
                        break;
                    case 1:
                        int i12 = ActivityRunMemory.I;
                        activityRunMemory.finish();
                        break;
                    case 2:
                        int i13 = ActivityRunMemory.I;
                        activityRunMemory.getClass();
                        new mc.c(0, new d6(activityRunMemory)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(26, activityRunMemory));
                        break;
                    default:
                        int i14 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPs.class);
                        break;
                }
            }
        });
        TextView textView = (TextView) findViewById(R.id.v_btn_return);
        this.H = textView;
        final int i11 = 1;
        textView.setOnClickListener(new View.OnClickListener(this) { // from class: ua.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRunMemory f15616b;

            {
                this.f15616b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRunMemory activityRunMemory = this.f15616b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPss.class);
                        break;
                    case 1:
                        int i12 = ActivityRunMemory.I;
                        activityRunMemory.finish();
                        break;
                    case 2:
                        int i13 = ActivityRunMemory.I;
                        activityRunMemory.getClass();
                        new mc.c(0, new d6(activityRunMemory)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(26, activityRunMemory));
                        break;
                    default:
                        int i14 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPs.class);
                        break;
                }
            }
        });
        final int i12 = 2;
        findViewById(R.id.v_btn_refresh).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRunMemory f15616b;

            {
                this.f15616b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRunMemory activityRunMemory = this.f15616b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPss.class);
                        break;
                    case 1:
                        int i122 = ActivityRunMemory.I;
                        activityRunMemory.finish();
                        break;
                    case 2:
                        int i13 = ActivityRunMemory.I;
                        activityRunMemory.getClass();
                        new mc.c(0, new d6(activityRunMemory)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(26, activityRunMemory));
                        break;
                    default:
                        int i14 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPs.class);
                        break;
                }
            }
        });
        final int i13 = 3;
        findViewById(R.id.v_btn_rss).setOnClickListener(new View.OnClickListener(this) { // from class: ua.c6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRunMemory f15616b;

            {
                this.f15616b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRunMemory activityRunMemory = this.f15616b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPss.class);
                        break;
                    case 1:
                        int i122 = ActivityRunMemory.I;
                        activityRunMemory.finish();
                        break;
                    case 2:
                        int i132 = ActivityRunMemory.I;
                        activityRunMemory.getClass();
                        new mc.c(0, new d6(activityRunMemory)).d(rc.f.f13757b).a(fc.b.a()).b(new ka.c(26, activityRunMemory));
                        break;
                    default:
                        int i14 = ActivityRunMemory.I;
                        activityRunMemory.w(ActivityPs.class);
                        break;
                }
            }
        });
        findViewById(R.id.v_btn_return).requestFocus();
        new c(0, new d6(this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(26, this));
    }
}

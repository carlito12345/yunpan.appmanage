package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityPs;
import da.g;
import java.util.ArrayList;
import java.util.Collections;
import mc.c;
import rc.f;
import ua.i5;
import ua.v0;
import ua.v5;
import x9.g4;

/* loaded from: classes.dex */
public class ActivityPs extends g {
    public static final /* synthetic */ int L = 0;
    public TvRecyclerView C;
    public g4 D;
    public ConstraintLayout H;
    public LinearLayout I;
    public ArrayList E = new ArrayList();
    public final ArrayList F = new ArrayList();
    public boolean G = false;
    public final String K = "^([^\\s]+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+(\\d+)\\s+([^\\s]+)\\s+([^\\s]+)\\s+([^\\s]+)\\s+(.*)$";

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.D.E(null);
        this.C = null;
        this.D = null;
        this.E = null;
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_ps;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.H = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.I = linearLayout;
        linearLayout.setVisibility(8);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.u5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPs f15984b;

            {
                this.f15984b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPs activityPs = this.f15984b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityPs.L;
                        activityPs.finish();
                        break;
                    case 1:
                        int i12 = ActivityPs.L;
                        ActivityPs activityPs2 = this.f15984b;
                        activityPs2.getClass();
                        new ha.z6(activityPs2, activityPs2, activityPs2.A.getResources().getString(R.string.activity_ps_help), "", "明白了", "", new s9.a(12, false), 0).show();
                        break;
                    case 2:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z = activityPs.G;
                        ArrayList arrayList = activityPs.F;
                        Collections.sort(z ? activityPs.E : arrayList, new qa.e(20));
                        x9.g4 g4Var = activityPs.D;
                        if (activityPs.G) {
                            arrayList = activityPs.E;
                        }
                        g4Var.E(arrayList);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z4 = activityPs.G;
                        ArrayList arrayList2 = activityPs.F;
                        Collections.sort(z4 ? activityPs.E : arrayList2, new qa.e(21));
                        x9.g4 g4Var2 = activityPs.D;
                        if (activityPs.G) {
                            arrayList2 = activityPs.E;
                        }
                        g4Var2.E(arrayList2);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_help).setOnClickListener(new View.OnClickListener(this) { // from class: ua.u5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPs f15984b;

            {
                this.f15984b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPs activityPs = this.f15984b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityPs.L;
                        activityPs.finish();
                        break;
                    case 1:
                        int i12 = ActivityPs.L;
                        ActivityPs activityPs2 = this.f15984b;
                        activityPs2.getClass();
                        new ha.z6(activityPs2, activityPs2, activityPs2.A.getResources().getString(R.string.activity_ps_help), "", "明白了", "", new s9.a(12, false), 0).show();
                        break;
                    case 2:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z = activityPs.G;
                        ArrayList arrayList = activityPs.F;
                        Collections.sort(z ? activityPs.E : arrayList, new qa.e(20));
                        x9.g4 g4Var = activityPs.D;
                        if (activityPs.G) {
                            arrayList = activityPs.E;
                        }
                        g4Var.E(arrayList);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z4 = activityPs.G;
                        ArrayList arrayList2 = activityPs.F;
                        Collections.sort(z4 ? activityPs.E : arrayList2, new qa.e(21));
                        x9.g4 g4Var2 = activityPs.D;
                        if (activityPs.G) {
                            arrayList2 = activityPs.E;
                        }
                        g4Var2.E(arrayList2);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        ImageView imageView = (ImageView) findViewById(R.id.v_check_all_ico);
        imageView.setImageResource(this.G ? R.drawable.tp_check1 : R.drawable.tp_check2);
        findViewById(R.id.v_check_all).setOnClickListener(new i5(this, imageView, 1));
        final int i12 = 2;
        ((LinearLayout) findViewById(R.id.v_btn_vsz)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.u5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPs f15984b;

            {
                this.f15984b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPs activityPs = this.f15984b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityPs.L;
                        activityPs.finish();
                        break;
                    case 1:
                        int i122 = ActivityPs.L;
                        ActivityPs activityPs2 = this.f15984b;
                        activityPs2.getClass();
                        new ha.z6(activityPs2, activityPs2, activityPs2.A.getResources().getString(R.string.activity_ps_help), "", "明白了", "", new s9.a(12, false), 0).show();
                        break;
                    case 2:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z = activityPs.G;
                        ArrayList arrayList = activityPs.F;
                        Collections.sort(z ? activityPs.E : arrayList, new qa.e(20));
                        x9.g4 g4Var = activityPs.D;
                        if (activityPs.G) {
                            arrayList = activityPs.E;
                        }
                        g4Var.E(arrayList);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z4 = activityPs.G;
                        ArrayList arrayList2 = activityPs.F;
                        Collections.sort(z4 ? activityPs.E : arrayList2, new qa.e(21));
                        x9.g4 g4Var2 = activityPs.D;
                        if (activityPs.G) {
                            arrayList2 = activityPs.E;
                        }
                        g4Var2.E(arrayList2);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i13 = 3;
        ((LinearLayout) findViewById(R.id.v_btn_rss)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.u5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPs f15984b;

            {
                this.f15984b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPs activityPs = this.f15984b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityPs.L;
                        activityPs.finish();
                        break;
                    case 1:
                        int i122 = ActivityPs.L;
                        ActivityPs activityPs2 = this.f15984b;
                        activityPs2.getClass();
                        new ha.z6(activityPs2, activityPs2, activityPs2.A.getResources().getString(R.string.activity_ps_help), "", "明白了", "", new s9.a(12, false), 0).show();
                        break;
                    case 2:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z = activityPs.G;
                        ArrayList arrayList = activityPs.F;
                        Collections.sort(z ? activityPs.E : arrayList, new qa.e(20));
                        x9.g4 g4Var = activityPs.D;
                        if (activityPs.G) {
                            arrayList = activityPs.E;
                        }
                        g4Var.E(arrayList);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityPs.C.stopScroll();
                        activityPs.D.E(new ArrayList());
                        boolean z4 = activityPs.G;
                        ArrayList arrayList2 = activityPs.F;
                        Collections.sort(z4 ? activityPs.E : arrayList2, new qa.e(21));
                        x9.g4 g4Var2 = activityPs.D;
                        if (activityPs.G) {
                            arrayList2 = activityPs.E;
                        }
                        g4Var2.E(arrayList2);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        g4 g4Var = new g4(this.A);
        this.D = g4Var;
        this.C.setAdapter(g4Var);
        this.D.f2881e = new v5(this);
        this.C.setOnInBorderKeyEventListener(new v0(25));
        this.E.clear();
        this.F.clear();
        new c(0, new v5(this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(23, this));
    }
}

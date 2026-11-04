package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAppInstallTime;
import da.g;
import java.util.ArrayList;
import java.util.Collections;
import mc.c;
import ph.j;
import rc.f;
import tb.v;
import ua.s;
import x9.i;

/* loaded from: classes.dex */
public class ActivityAppInstallTime extends g {
    public static final /* synthetic */ int H = 0;
    public TvRecyclerView C;
    public i D;
    public ArrayList E = new ArrayList();
    public ConstraintLayout F;
    public LinearLayout G;

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
        return R.layout.activity_app_install_time;
    }

    @Override // da.g
    public final void u() {
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.F = constraintLayout;
        constraintLayout.setVisibility(8);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.v_read_ts_lay1);
        this.G = linearLayout;
        linearLayout.setVisibility(8);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.r

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppInstallTime f15924b;

            {
                this.f15924b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppInstallTime activityAppInstallTime = this.f15924b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityAppInstallTime.H;
                        activityAppInstallTime.finish();
                        break;
                    case 1:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(8));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(9));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i11 = 1;
        ((LinearLayout) findViewById(R.id.v_btn_install_time)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.r

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppInstallTime f15924b;

            {
                this.f15924b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppInstallTime activityAppInstallTime = this.f15924b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityAppInstallTime.H;
                        activityAppInstallTime.finish();
                        break;
                    case 1:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(8));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(9));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i12 = 2;
        ((LinearLayout) findViewById(R.id.v_btn_update_time)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.r

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppInstallTime f15924b;

            {
                this.f15924b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppInstallTime activityAppInstallTime = this.f15924b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityAppInstallTime.H;
                        activityAppInstallTime.finish();
                        break;
                    case 1:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(8));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppInstallTime.C.stopScroll();
                        Collections.sort(activityAppInstallTime.E, new qa.e(9));
                        activityAppInstallTime.D.E(activityAppInstallTime.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        i iVar = new i(this.A);
        this.D = iVar;
        this.C.setAdapter(iVar);
        this.C.setOnItemListener(new s());
        this.C.setOnInBorderKeyEventListener(new v(23));
        new c(0, new j(11, this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(8, this));
    }
}

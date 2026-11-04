package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAppStorage;
import da.g;
import ha.o2;
import ja.a;
import java.util.ArrayList;
import java.util.Collections;
import kh.e;
import kh.j;
import l5.y;
import mc.c;
import org.greenrobot.eventbus.ThreadMode;
import rc.f;
import tb.v;
import ua.a0;
import ua.b0;
import ua.c0;
import x9.x;

/* loaded from: classes.dex */
public class ActivityAppStorage extends g {
    public static final /* synthetic */ int H = 0;
    public TvRecyclerView C;
    public x D;
    public ArrayList E = new ArrayList();
    public o2 F;
    public ConstraintLayout G;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.b().l(this);
        this.F = null;
        this.D.E(null);
        this.C = null;
        this.D = null;
        this.E = null;
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @j(threadMode = ThreadMode.MAIN)
    public void onReceiveMsg(a aVar) {
        new c(0, new ma.b(this, 6, aVar)).d(f.f13757b).a(fc.b.a()).b(new b0(this, 0));
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_storage;
    }

    @Override // da.g
    public final void u() {
        e.b().j(this);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.v_loading);
        this.G = constraintLayout;
        constraintLayout.setVisibility(8);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppStorage f16069b;

            {
                this.f16069b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppStorage activityAppStorage = this.f16069b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityAppStorage.H;
                        activityAppStorage.finish();
                        break;
                    case 1:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(12));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(14));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(11));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(10));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i11 = 1;
        ((LinearLayout) findViewById(R.id.v_btn_size)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppStorage f16069b;

            {
                this.f16069b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppStorage activityAppStorage = this.f16069b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityAppStorage.H;
                        activityAppStorage.finish();
                        break;
                    case 1:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(12));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(14));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(11));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(10));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i12 = 2;
        ((LinearLayout) findViewById(R.id.v_btn_size_code)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppStorage f16069b;

            {
                this.f16069b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppStorage activityAppStorage = this.f16069b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityAppStorage.H;
                        activityAppStorage.finish();
                        break;
                    case 1:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(12));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(14));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(11));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(10));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i13 = 3;
        ((LinearLayout) findViewById(R.id.v_btn_size_data)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppStorage f16069b;

            {
                this.f16069b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppStorage activityAppStorage = this.f16069b;
                switch (i13) {
                    case 0:
                        int i112 = ActivityAppStorage.H;
                        activityAppStorage.finish();
                        break;
                    case 1:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(12));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(14));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(11));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(10));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        final int i14 = 4;
        ((LinearLayout) findViewById(R.id.v_btn_size_cache)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityAppStorage f16069b;

            {
                this.f16069b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityAppStorage activityAppStorage = this.f16069b;
                switch (i14) {
                    case 0:
                        int i112 = ActivityAppStorage.H;
                        activityAppStorage.finish();
                        break;
                    case 1:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(12));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 2:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(14));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    case 3:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(11));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                    default:
                        activityAppStorage.C.stopScroll();
                        Collections.sort(activityAppStorage.E, new qa.e(10));
                        activityAppStorage.D.E(activityAppStorage.E);
                        com.yunpan.appmanage.util.a0.w("已重新排序");
                        break;
                }
            }
        });
        this.F = new o2(this, this, 1, new y(24, this));
        this.D = new x(this.A);
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        this.C.setAdapter(this.D);
        this.D.f2881e = new a0(this);
        this.C.setOnItemListener(new c0());
        this.C.setOnInBorderKeyEventListener(new v(24));
        new c(0, new a0(this)).d(f.f13757b).a(fc.b.a()).b(new b0(this, 1));
    }
}

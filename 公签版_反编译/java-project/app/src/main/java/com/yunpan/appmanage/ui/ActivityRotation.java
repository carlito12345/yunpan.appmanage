package com.yunpan.appmanage.ui;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.RotationBean;
import com.yunpan.appmanage.ui.ActivityRotation;
import da.g;
import fc.b;
import ha.kb;
import java.util.ArrayList;
import mc.c;
import rc.f;
import ta.m;
import ua.a6;
import ua.b6;
import x9.o4;

/* loaded from: classes.dex */
public class ActivityRotation extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public o4 D;
    public final ArrayList E = new ArrayList();

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        this.D.E(new ArrayList());
        m.e(this);
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_rotation;
    }

    @Override // da.g
    public final void u() {
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRotation f16081b;

            {
                this.f16081b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRotation activityRotation = this.f16081b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityRotation.F;
                        activityRotation.finish();
                        break;
                    case 1:
                        int i12 = ActivityRotation.F;
                        activityRotation.getClass();
                        new kb(activityRotation, activityRotation).show();
                        break;
                    default:
                        int i13 = ActivityRotation.F;
                        activityRotation.getClass();
                        wa.u uVar = wa.t.f17728a;
                        uVar.e("");
                        uVar.f("");
                        for (int i14 = 0; i14 < activityRotation.D.v().size(); i14++) {
                            if (((RotationBean) activityRotation.D.t(i14)).mode != 0) {
                                ((RotationBean) activityRotation.D.t(i14)).mode = 0;
                                activityRotation.D.e(i14);
                            }
                        }
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_set).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRotation f16081b;

            {
                this.f16081b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRotation activityRotation = this.f16081b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityRotation.F;
                        activityRotation.finish();
                        break;
                    case 1:
                        int i12 = ActivityRotation.F;
                        activityRotation.getClass();
                        new kb(activityRotation, activityRotation).show();
                        break;
                    default:
                        int i13 = ActivityRotation.F;
                        activityRotation.getClass();
                        wa.u uVar = wa.t.f17728a;
                        uVar.e("");
                        uVar.f("");
                        for (int i14 = 0; i14 < activityRotation.D.v().size(); i14++) {
                            if (((RotationBean) activityRotation.D.t(i14)).mode != 0) {
                                ((RotationBean) activityRotation.D.t(i14)).mode = 0;
                                activityRotation.D.e(i14);
                            }
                        }
                        break;
                }
            }
        });
        final int i12 = 2;
        ((ConstraintLayout) findViewById(R.id.v_btn_delete)).setOnClickListener(new View.OnClickListener(this) { // from class: ua.z5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityRotation f16081b;

            {
                this.f16081b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityRotation activityRotation = this.f16081b;
                switch (i12) {
                    case 0:
                        int i112 = ActivityRotation.F;
                        activityRotation.finish();
                        break;
                    case 1:
                        int i122 = ActivityRotation.F;
                        activityRotation.getClass();
                        new kb(activityRotation, activityRotation).show();
                        break;
                    default:
                        int i13 = ActivityRotation.F;
                        activityRotation.getClass();
                        wa.u uVar = wa.t.f17728a;
                        uVar.e("");
                        uVar.f("");
                        for (int i14 = 0; i14 < activityRotation.D.v().size(); i14++) {
                            if (((RotationBean) activityRotation.D.t(i14)).mode != 0) {
                                ((RotationBean) activityRotation.D.t(i14)).mode = 0;
                                activityRotation.D.e(i14);
                            }
                        }
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this.A, 6));
        o4 o4Var = new o4(this);
        this.D = o4Var;
        this.C.setAdapter(o4Var);
        this.D.f2881e = new a6(this);
        this.C.setOnItemListener(new b6());
        new c(0, new a6(this)).d(f.f13757b).a(b.a()).b(new ka.c(25, this));
    }
}

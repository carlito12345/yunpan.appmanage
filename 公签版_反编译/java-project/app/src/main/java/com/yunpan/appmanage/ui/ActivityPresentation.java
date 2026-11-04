package com.yunpan.appmanage.ui;

import android.content.Context;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityPresentation;
import da.g;
import fc.b;
import java.util.HashSet;
import mc.c;
import rc.f;
import ua.p5;
import ua.r5;
import x9.n;

/* loaded from: classes.dex */
public class ActivityPresentation extends g {
    public static final /* synthetic */ int H = 0;
    public TvRecyclerView C;
    public n D;
    public HashSet E;
    public String F = "";
    public ConstraintLayout G;

    @Override // da.g
    public final int t() {
        return R.layout.activity_presentation;
    }

    @Override // da.g
    public final void u() {
        this.G = (ConstraintLayout) findViewById(R.id.v_loading);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.o5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPresentation f15865b;

            {
                this.f15865b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPresentation activityPresentation = this.f15865b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityPresentation.H;
                        activityPresentation.finish();
                        break;
                    default:
                        int i12 = ActivityPresentation.H;
                        activityPresentation.x();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_reload).setOnClickListener(new View.OnClickListener(this) { // from class: ua.o5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPresentation f15865b;

            {
                this.f15865b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPresentation activityPresentation = this.f15865b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityPresentation.H;
                        activityPresentation.finish();
                        break;
                    default:
                        int i12 = ActivityPresentation.H;
                        activityPresentation.x();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        n nVar = new n(this.A, 3);
        this.D = nVar;
        this.C.setAdapter(nVar);
        this.D.f2881e = new p5(this);
        x();
    }

    public final void x() {
        this.E = new HashSet();
        new c(0, new p5(this)).d(f.f13757b).a(b.a()).b(new r5(this, 1));
    }
}

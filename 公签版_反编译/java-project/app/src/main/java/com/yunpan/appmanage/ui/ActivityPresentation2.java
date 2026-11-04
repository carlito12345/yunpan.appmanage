package com.yunpan.appmanage.ui;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hjq.permissions.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityPresentation2;
import da.g;
import java.util.ArrayList;
import java.util.HashSet;
import mc.c;
import org.slf4j.Marker;
import rc.f;
import ua.g5;
import ua.t5;
import x9.n;

/* loaded from: classes.dex */
public class ActivityPresentation2 extends g {
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
        DisplayManager displayManager = (DisplayManager) this.A.getSystemService("display");
        ArrayList arrayList = new ArrayList();
        arrayList.add("关闭此应用(强制停止)");
        ArrayList arrayList2 = new ArrayList();
        for (Display display : displayManager.getDisplays()) {
            arrayList2.add(display);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            DisplayMetrics displayMetrics2 = new DisplayMetrics();
            display.getRealMetrics(displayMetrics2);
            if (displayMetrics.widthPixels == displayMetrics2.widthPixels && displayMetrics.heightPixels == displayMetrics2.heightPixels) {
                arrayList.add("ID:" + display.getDisplayId() + "   dpi:" + displayMetrics.densityDpi + "   " + displayMetrics2.widthPixels + Marker.ANY_MARKER + displayMetrics2.heightPixels);
            } else {
                arrayList.add("ID:" + display.getDisplayId() + "   dpi:" + displayMetrics.densityDpi + "   " + displayMetrics2.widthPixels + Marker.ANY_MARKER + displayMetrics2.heightPixels + "可视区(" + displayMetrics.widthPixels + Marker.ANY_MARKER + displayMetrics.heightPixels + ")");
            }
        }
        this.G = (ConstraintLayout) findViewById(R.id.v_loading);
        final int i10 = 0;
        findViewById(R.id.v_btn_return).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPresentation2 f15949b;

            {
                this.f15949b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPresentation2 activityPresentation2 = this.f15949b;
                switch (i10) {
                    case 0:
                        int i11 = ActivityPresentation2.H;
                        activityPresentation2.finish();
                        break;
                    default:
                        int i12 = ActivityPresentation2.H;
                        activityPresentation2.x();
                        break;
                }
            }
        });
        final int i11 = 1;
        findViewById(R.id.v_btn_reload).setOnClickListener(new View.OnClickListener(this) { // from class: ua.s5

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ActivityPresentation2 f15949b;

            {
                this.f15949b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityPresentation2 activityPresentation2 = this.f15949b;
                switch (i11) {
                    case 0:
                        int i112 = ActivityPresentation2.H;
                        activityPresentation2.finish();
                        break;
                    default:
                        int i12 = ActivityPresentation2.H;
                        activityPresentation2.x();
                        break;
                }
            }
        });
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        n nVar = new n(this.A, 2);
        this.D = nVar;
        this.C.setAdapter(nVar);
        this.D.f2881e = new b(this, arrayList, arrayList2, 14);
        x();
    }

    public final void x() {
        this.E = new HashSet();
        new c(0, new g5(1, this)).d(f.f13757b).a(fc.b.a()).b(new t5(this, 1));
    }
}

package com.yunpan.appmanage.ui;

import android.hardware.display.DisplayManager;
import android.util.DisplayMetrics;
import android.view.Display;
import com.bumptech.glide.b;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7GridLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.k;
import da.g;
import java.text.DecimalFormat;
import java.util.ArrayList;
import mc.c;
import org.slf4j.Marker;
import p000if.a;
import ph.j;
import rc.f;
import ua.g1;
import x9.a0;

/* loaded from: classes.dex */
public class ActivityDisplayStartApp extends g {
    public static final /* synthetic */ int F = 0;
    public TvRecyclerView C;
    public a0 D;
    public boolean E = false;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_display_start_app;
    }

    @Override // da.g
    public final void u() {
        int i10 = 0;
        this.E = getIntent().getBooleanExtra("isNoPermissions", false);
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 2));
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_app);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7GridLayoutManager(this, 7));
        a0 a0Var = new a0(this);
        this.D = a0Var;
        this.C.setAdapter(a0Var);
        ArrayList arrayList = new ArrayList();
        if (!this.E) {
            arrayList.add("关闭此应用(强制停止)");
        }
        ArrayList arrayList2 = new ArrayList();
        for (Display display : ((DisplayManager) this.A.getSystemService("display")).getDisplays()) {
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
        this.D.f2881e = new com.hjq.permissions.b(this, arrayList, arrayList2, 11);
        new c(i10, new j(16, this)).d(f.f13757b).a(fc.b.a()).b(new ka.c(14, this));
        DecimalFormat decimalFormat = k.f4034u0;
        k kVar = com.yunpan.appmanage.util.j.f4033a;
        if (a.p0(kVar.f4039c).equals("c7753507a4d379184a2ac3651059038e") || !a.p0(kVar.f4041d).equals("8418ca95857ddad6713ce6826dc36ad6")) {
            return;
        }
        com.yunpan.appmanage.util.a0.s("修改版，请把包名改掉，不要和我同一个包名", false);
        finish();
    }
}

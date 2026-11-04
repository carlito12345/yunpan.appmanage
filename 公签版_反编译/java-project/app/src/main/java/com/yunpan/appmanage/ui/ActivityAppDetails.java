package com.yunpan.appmanage.ui;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.m1;
import androidx.room.i;
import androidx.viewpager2.widget.ViewPager2;
import com.bumptech.glide.b;
import com.google.android.material.tabs.TabLayout;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.ui.ActivityAppDetails;
import da.g;
import ha.g9;
import java.util.ArrayList;
import ka.d;
import p7.l;
import p7.m;
import tb.v;
import x9.o;

/* loaded from: classes.dex */
public class ActivityAppDetails extends g {
    public static final /* synthetic */ int E = 0;
    public TabLayout C;
    public ViewPager2 D;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        b.b(this.A).a();
        super.onDestroy();
        System.gc();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_app_details;
    }

    @Override // da.g
    public final void u() {
        findViewById(R.id.v_return).setOnClickListener(new g9(24, this));
        this.C = (TabLayout) findViewById(R.id.v_tab);
        this.D = (ViewPager2) findViewById(R.id.v_pager);
        final o oVar = new o(this);
        for (int i10 = 0; i10 < 4; i10++) {
            oVar.f18313m.add(new d(i10, new ma.b(this, 5, oVar)));
        }
        this.D.setAdapter(oVar);
        TabLayout tabLayout = this.C;
        ViewPager2 viewPager2 = this.D;
        i iVar = new i(tabLayout, viewPager2, new v(21));
        if (iVar.f2404a) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        m1 adapter = viewPager2.getAdapter();
        iVar.f2407d = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        iVar.f2404a = true;
        ((ArrayList) viewPager2.f2473c.f2453b).add(new m(tabLayout));
        l lVar = new l(1, viewPager2);
        ArrayList arrayList = tabLayout.N;
        if (!arrayList.contains(lVar)) {
            arrayList.add(lVar);
        }
        ((m1) iVar.f2407d).o(new androidx.viewpager2.adapter.d(iVar));
        iVar.g();
        tabLayout.l(viewPager2.getCurrentItem(), 0.0f, true, true, true);
        findViewById(R.id.v_focus).setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ua.o
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                ActivityAppDetails activityAppDetails = this.f15855a;
                if (!z) {
                    int i11 = ActivityAppDetails.E;
                    activityAppDetails.getClass();
                    return;
                }
                ka.d dVar = (ka.d) ((Fragment) oVar.f18313m.get(activityAppDetails.D.getCurrentItem()));
                x9.m3 m3Var = dVar.f10228d;
                if (m3Var == null || m3Var.b() <= 0) {
                    activityAppDetails.C.f(activityAppDetails.D.getCurrentItem()).f12591e.requestFocus();
                } else {
                    dVar.f10227c.requestFocus();
                }
            }
        });
    }
}

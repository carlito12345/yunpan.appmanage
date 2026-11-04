package com.yunpan.appmanage.ui;

import android.content.Context;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.carsdk.p;
import com.yunpan.appmanage.carsdk.r;
import com.yunpan.appmanage.util.a0;
import da.g;
import java.text.SimpleDateFormat;
import java.util.Date;
import ua.g5;
import ua.i1;
import x9.a5;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityTextFlyOS12 extends g {
    public static final /* synthetic */ int I = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public a5 F;
    public r G;
    public final t0 D = new t0(0);
    public final SimpleDateFormat H = new SimpleDateFormat("HH:mm:ss  SSS");

    public static void x(ActivityTextFlyOS12 activityTextFlyOS12, String str) {
        activityTextFlyOS12.F.q(new NameValueBean(activityTextFlyOS12.H.format(new Date()), str));
        activityTextFlyOS12.E.setSelectionWithSmooth(activityTextFlyOS12.F.b() - 1);
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        r rVar = this.G;
        rVar.f3870e = false;
        rVar.f3869d.post(new p(rVar, 1));
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_key_map_logcat;
    }

    @Override // da.g
    public final void u() {
        TvRecyclerView tvRecyclerView = (TvRecyclerView) findViewById(R.id.v_list_gn);
        this.C = tvRecyclerView;
        tvRecyclerView.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 0, false));
        this.D.q(new NameIcoTypeBean(R.drawable.return2, "返回", 1));
        this.C.setAdapter(this.D);
        this.D.f2881e = new g5(9, this);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        a5 a5Var = new a5();
        this.F = a5Var;
        this.E.setAdapter(a5Var);
        try {
            r rVar = new r(getApplicationContext(), new i1(20, this));
            this.G = rVar;
            rVar.f3870e = true;
            rVar.f3869d.post(new p(rVar, 0));
        } catch (Exception unused) {
            a0.u("该系统不支持此功能");
            finish();
        }
    }
}

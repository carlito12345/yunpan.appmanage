package com.yunpan.appmanage.ui;

import android.content.Context;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import com.owen.tvrecyclerview.widget.V7LinearLayoutManager;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.bean.NameIcoTypeBean;
import com.yunpan.appmanage.bean.NameValueBean;
import com.yunpan.appmanage.carsdk.x;
import com.yunpan.appmanage.util.a0;
import da.g;
import fc.b;
import ha.l2;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import mc.c;
import rc.f;
import ua.i1;
import ua.j7;
import x9.a5;
import x9.t0;

/* loaded from: classes.dex */
public class ActivityTextFlyOS18 extends g {
    public static final /* synthetic */ int I = 0;
    public TvRecyclerView C;
    public TvRecyclerView E;
    public a5 F;
    public x G;
    public final t0 D = new t0(0);
    public final SimpleDateFormat H = new SimpleDateFormat("HH:mm:ss  SSS");

    public static void x(ActivityTextFlyOS18 activityTextFlyOS18, String str) {
        if (activityTextFlyOS18.F.b() > 2000) {
            activityTextFlyOS18.F.E(new ArrayList());
        }
        activityTextFlyOS18.F.q(new NameValueBean(activityTextFlyOS18.H.format(new Date()), str));
        activityTextFlyOS18.E.setSelectionWithSmooth(activityTextFlyOS18.F.b() - 1);
    }

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        try {
            x xVar = this.G;
            if (xVar != null) {
                xVar.m();
            }
        } catch (Exception unused) {
        }
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
        NameIcoTypeBean nameIcoTypeBean = new NameIcoTypeBean(R.drawable.return2, "返回", 1);
        t0 t0Var = this.D;
        t0Var.q(nameIcoTypeBean);
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_zt1, "属性列表", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_delete3, "清空", 1));
        t0Var.q(new NameIcoTypeBean(R.drawable.tp_save1, "导出", 1));
        this.C.setAdapter(t0Var);
        t0Var.f2881e = new j7(this);
        TvRecyclerView tvRecyclerView2 = (TvRecyclerView) findViewById(R.id.v_list);
        this.E = tvRecyclerView2;
        tvRecyclerView2.setLayoutManager(new V7LinearLayoutManager((Context) this.A, 1, false));
        a5 a5Var = new a5();
        this.F = a5Var;
        this.E.setAdapter(a5Var);
        try {
            this.G = new x(this.A, false, new i1(21, this));
        } catch (Throwable unused) {
            a0.u("该系统不支持此功能");
            finish();
        }
    }

    public final void y() {
        if (this.F.b() == 0) {
            a0.u("没有内容");
        } else {
            new c(0, new j7(this)).d(f.f13757b).a(b.a()).b(new l2(28));
        }
    }
}

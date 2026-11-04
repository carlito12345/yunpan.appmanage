package com.yunpan.appmanage.ui;

import android.widget.TextView;
import com.desay_svautomotive.libsvcarinfo.CarInfoProxy;
import com.hjq.toast.Toaster;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.base.AppStart;
import com.yunpan.appmanage.carsdk.e;
import com.yunpan.appmanage.util.a0;
import da.g;
import ua.h7;
import ua.i1;
import ua.z6;

/* loaded from: classes.dex */
public class ActivityTextAiOnY extends g {
    public static final /* synthetic */ int S0 = 0;
    public TextView C;
    public TextView D;
    public TextView E;
    public TextView F;
    public TextView G;
    public TextView H;
    public TextView I;
    public TextView K;
    public TextView L;
    public TextView M;
    public TextView M0;
    public TextView N;
    public TextView N0;
    public TextView O;
    public TextView O0;
    public TextView P;
    public TextView P0;
    public TextView Q0;
    public TextView R;
    public int R0 = 0;
    public TextView S;
    public TextView T;
    public TextView V;
    public TextView X;
    public TextView Y;
    public TextView Z;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f3990h0;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f3991t0;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        e.c().h();
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_nissan_vehicle;
    }

    @Override // da.g
    public final void u() {
        if (!e.e(this)) {
            a0.u("不是此款车型");
            finish();
            return;
        }
        ((TextView) findViewById(R.id.v_title)).setText("埃安Y sdk测试");
        findViewById(R.id.v_btn_return).setOnClickListener(new z6(1, this));
        this.C = (TextView) findViewById(R.id.v_ts0);
        this.D = (TextView) findViewById(R.id.v_ts1);
        this.E = (TextView) findViewById(R.id.v_ts2);
        this.F = (TextView) findViewById(R.id.v_ts3);
        this.G = (TextView) findViewById(R.id.v_ts4);
        this.H = (TextView) findViewById(R.id.v_ts5);
        this.I = (TextView) findViewById(R.id.v_ts6);
        this.K = (TextView) findViewById(R.id.v_ts7);
        this.L = (TextView) findViewById(R.id.v_ts8);
        this.M = (TextView) findViewById(R.id.v_ts9);
        this.N = (TextView) findViewById(R.id.v_ts10);
        this.O = (TextView) findViewById(R.id.v_ts11);
        this.P = (TextView) findViewById(R.id.v_ts12);
        this.R = (TextView) findViewById(R.id.v_ts13);
        this.S = (TextView) findViewById(R.id.v_ts14);
        this.T = (TextView) findViewById(R.id.v_ts15);
        this.V = (TextView) findViewById(R.id.v_ts16);
        this.X = (TextView) findViewById(R.id.v_ts17);
        this.Y = (TextView) findViewById(R.id.v_ts18);
        this.Z = (TextView) findViewById(R.id.v_ts20);
        this.f3990h0 = (TextView) findViewById(R.id.v_ts21);
        this.f3991t0 = (TextView) findViewById(R.id.v_ts22);
        this.M0 = (TextView) findViewById(R.id.v_ts23);
        this.N0 = (TextView) findViewById(R.id.v_ts24);
        this.O0 = (TextView) findViewById(R.id.v_ts25);
        this.P0 = (TextView) findViewById(R.id.v_ts29);
        this.Q0 = (TextView) findViewById(R.id.v_ts30);
        try {
            e.c().d(AppStart.f3772h);
            e.c().f3796d = new i1(19, this);
            h7 h7Var = new h7(this);
            CarInfoProxy.getInstance().regCallBack(0, h7Var);
            CarInfoProxy.getInstance().regCallBack(1, h7Var);
            CarInfoProxy.getInstance().regCallBack(2, h7Var);
            CarInfoProxy.getInstance().regCallBack(3, h7Var);
            CarInfoProxy.getInstance().regCallBack(4, h7Var);
            CarInfoProxy.getInstance().regCallBack(5, h7Var);
            CarInfoProxy.getInstance().regCallBack(6, h7Var);
            CarInfoProxy.getInstance().regCallBack(7, h7Var);
            CarInfoProxy.getInstance().regCallBack(8, h7Var);
            CarInfoProxy.getInstance().regCallBack(9, h7Var);
            CarInfoProxy.getInstance().regCallBack(10, h7Var);
            CarInfoProxy.getInstance().regCallBack(11, h7Var);
            CarInfoProxy.getInstance().regCallBack(12, h7Var);
            CarInfoProxy.getInstance().regCallBack(13, h7Var);
            CarInfoProxy.getInstance().regCallBack(14, h7Var);
            CarInfoProxy.getInstance().regCallBack(15, h7Var);
            CarInfoProxy.getInstance().regCallBack(16, h7Var);
            CarInfoProxy.getInstance().regCallBack(17, h7Var);
            CarInfoProxy.getInstance().regCallBack(18, h7Var);
            CarInfoProxy.getInstance().regCallBack(19, h7Var);
            CarInfoProxy.getInstance().regCallBack(20, h7Var);
            CarInfoProxy.getInstance().regCallBack(21, h7Var);
        } catch (Exception e7) {
            Toaster.show((CharSequence) ("失败: " + e7.getMessage()));
            e7.printStackTrace();
        }
    }
}

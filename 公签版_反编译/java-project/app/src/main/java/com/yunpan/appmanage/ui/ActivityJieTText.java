package com.yunpan.appmanage.ui;

import android.widget.TextView;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.g0;
import com.yunpan.appmanage.carsdk.h0;
import com.yunpan.appmanage.util.a0;
import da.g;
import ua.a3;
import ua.b3;
import ua.g1;
import ua.r2;
import ua.s2;
import ua.t2;
import ua.u2;
import ua.v2;
import ua.w2;
import ua.x2;
import ua.y2;
import ua.z2;

/* loaded from: classes.dex */
public class ActivityJieTText extends g {

    /* renamed from: t0, reason: collision with root package name */
    public static final /* synthetic */ int f3978t0 = 0;
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
    public TextView N;
    public TextView O;
    public TextView P;
    public TextView R;
    public TextView S;
    public TextView T;
    public TextView V;
    public TextView X;
    public TextView Y;
    public TextView Z;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f3979h0;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        g0.f3810a.d();
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_nissan_vehicle;
    }

    @Override // da.g
    public final void u() {
        ((TextView) findViewById(R.id.v_title)).setText("捷途车机sdk调试");
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 6));
        this.C = (TextView) findViewById(R.id.v_ts0);
        this.D = (TextView) findViewById(R.id.v_ts1);
        this.E = (TextView) findViewById(R.id.v_ts2);
        this.F = (TextView) findViewById(R.id.v_ts7);
        this.G = (TextView) findViewById(R.id.v_ts8);
        this.H = (TextView) findViewById(R.id.v_ts9);
        this.I = (TextView) findViewById(R.id.v_ts10);
        this.K = (TextView) findViewById(R.id.v_ts11);
        this.L = (TextView) findViewById(R.id.v_ts12);
        this.M = (TextView) findViewById(R.id.v_ts13);
        this.N = (TextView) findViewById(R.id.v_ts14);
        this.O = (TextView) findViewById(R.id.v_ts15);
        this.P = (TextView) findViewById(R.id.v_ts16);
        this.R = (TextView) findViewById(R.id.v_ts17);
        this.S = (TextView) findViewById(R.id.v_ts18);
        this.T = (TextView) findViewById(R.id.v_ts19);
        this.V = (TextView) findViewById(R.id.v_ts20);
        this.X = (TextView) findViewById(R.id.v_ts21);
        this.Y = (TextView) findViewById(R.id.v_ts22);
        this.Z = (TextView) findViewById(R.id.v_ts23);
        this.f3979h0 = (TextView) findViewById(R.id.v_ts24);
        try {
            g0.f3810a.a(this, true, false, true, true);
        } catch (Exception unused) {
            a0.u("不适合您的车机");
            finish();
        }
        h0 h0Var = g0.f3810a;
        h0Var.f3818g = new t2(this);
        h0Var.f3819h = new u2(this);
        try {
            v2 v2Var = new v2(this);
            h0Var.f3821j = v2Var;
            h0Var.f3816e.registerCarSpeedListener(v2Var);
            w2 w2Var = new w2(this);
            h0Var.l = w2Var;
            h0Var.f3816e.registerCarEngineSpeedListener(w2Var);
            x2 x2Var = new x2(this);
            h0Var.f3822k = x2Var;
            h0Var.f3816e.registerVehicleControlPropertyListener(x2Var);
            y2 y2Var = new y2(this);
            h0Var.f3823m = y2Var;
            h0Var.f3816e.registerCarSteerListener(y2Var);
            z2 z2Var = new z2(this);
            h0Var.f3824n = z2Var;
            h0Var.f3816e.registerCarTyreListener(z2Var);
            a3 a3Var = new a3(this);
            h0Var.f3825o = a3Var;
            h0Var.f3816e.registerAVMPropertyListener(a3Var);
            b3 b3Var = new b3(this);
            h0Var.f3826p = b3Var;
            h0Var.f3816e.registerCarWindListener(b3Var);
            r2 r2Var = new r2(this);
            h0Var.f3827q = r2Var;
            h0Var.f3816e.registerExtPropertyListener(r2Var);
            s2 s2Var = new s2(this);
            h0Var.r = s2Var;
            h0Var.f3816e.registerHvacPropertyListener(s2Var);
        } catch (Exception unused2) {
        }
    }
}

package com.yunpan.appmanage.ui;

import android.os.RemoteException;
import android.widget.TextView;
import com.hsae.autosdk.reverse.Reverse;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.util.a0;
import da.g;
import ua.a5;
import ua.d5;
import ua.e5;
import ua.g1;

/* loaded from: classes.dex */
public class ActivityNissanTextReverse extends g {
    public static final /* synthetic */ int S0 = 0;
    public Reverse C;
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
    public TextView R;
    public TextView S;
    public TextView T;
    public TextView V;
    public TextView X;
    public TextView Y;
    public TextView Z;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f3983h0;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f3984t0;
    public final a5 P0 = new a5(this);
    public final d5 Q0 = new d5(this);
    public final e5 R0 = new e5(this);

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        Reverse reverse = this.C;
        if (reverse != null) {
            try {
                reverse.unRegisterStateListener(this.P0);
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
            try {
                this.C.unRegisterAvmListener(this.Q0);
            } catch (RemoteException e10) {
                e10.printStackTrace();
            }
            try {
                this.C.unRegisterListener(this.R0);
            } catch (RemoteException e11) {
                e11.printStackTrace();
            }
        }
        super.onDestroy();
    }

    @Override // da.g
    public final int t() {
        return R.layout.activity_nissan_vehicle;
    }

    @Override // da.g
    public final void u() {
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 22));
        this.D = (TextView) findViewById(R.id.v_ts0);
        this.E = (TextView) findViewById(R.id.v_ts1);
        this.F = (TextView) findViewById(R.id.v_ts2);
        this.G = (TextView) findViewById(R.id.v_ts3);
        this.H = (TextView) findViewById(R.id.v_ts4);
        this.I = (TextView) findViewById(R.id.v_ts5);
        this.K = (TextView) findViewById(R.id.v_ts6);
        this.L = (TextView) findViewById(R.id.v_ts7);
        this.M = (TextView) findViewById(R.id.v_ts8);
        this.N = (TextView) findViewById(R.id.v_ts9);
        this.O = (TextView) findViewById(R.id.v_ts10);
        this.P = (TextView) findViewById(R.id.v_ts11);
        this.R = (TextView) findViewById(R.id.v_ts12);
        this.S = (TextView) findViewById(R.id.v_ts13);
        this.T = (TextView) findViewById(R.id.v_ts14);
        this.V = (TextView) findViewById(R.id.v_ts15);
        this.X = (TextView) findViewById(R.id.v_ts16);
        this.Y = (TextView) findViewById(R.id.v_ts17);
        this.Z = (TextView) findViewById(R.id.v_ts18);
        this.f3983h0 = (TextView) findViewById(R.id.v_ts19);
        this.f3984t0 = (TextView) findViewById(R.id.v_ts20);
        this.M0 = (TextView) findViewById(R.id.v_ts21);
        this.N0 = (TextView) findViewById(R.id.v_ts22);
        this.O0 = (TextView) findViewById(R.id.v_ts23);
        this.C = Reverse.getInstance();
        try {
            this.D.setText("getReverseState：" + this.C.getReverseState());
            this.C.registerStateListener(this.P0);
            this.C.registerAvmListener(this.Q0);
            this.C.registerListener(this.R0);
        } catch (Exception unused) {
            finish();
            a0.t("获取汽车状态失败");
        }
    }
}

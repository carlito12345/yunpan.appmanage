package com.yunpan.appmanage.ui;

import android.widget.TextView;
import com.autolink.app.vehiclemanager.data.VehiclePropertyKey;
import com.yunpan.appmanage.R;
import com.yunpan.appmanage.carsdk.g0;
import com.yunpan.appmanage.util.a0;
import da.g;
import ta.q;
import ua.c3;
import ua.g1;

/* loaded from: classes.dex */
public class ActivityJieTText2 extends g {

    /* renamed from: a1, reason: collision with root package name */
    public static final /* synthetic */ int f3980a1 = 0;
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
    public TextView R0;
    public TextView S;
    public TextView S0;
    public TextView T;
    public TextView T0;
    public TextView U0;
    public TextView V;
    public TextView V0;
    public TextView W0;
    public TextView X;
    public TextView X0;
    public TextView Y;
    public TextView Y0;
    public TextView Z;
    public TextView Z0;

    /* renamed from: h0, reason: collision with root package name */
    public TextView f3981h0;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f3982t0;

    public static void x(ActivityJieTText2 activityJieTText2, int i10, String str) {
        activityJieTText2.getClass();
        VehiclePropertyKey vehiclePropertyKey = VehiclePropertyKey.KeyAvmPosition;
        if (i10 == vehiclePropertyKey.getValue()) {
            q.r(vehiclePropertyKey, new StringBuilder(), " ： ", str, activityJieTText2.C);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey2 = VehiclePropertyKey.KeyHvacEngineSpeedValid;
        if (i10 == vehiclePropertyKey2.getValue()) {
            q.r(vehiclePropertyKey2, new StringBuilder(), " ： ", str, activityJieTText2.D);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey3 = VehiclePropertyKey.KeyHvacEngineSpeed;
        if (i10 == vehiclePropertyKey3.getValue()) {
            q.r(vehiclePropertyKey3, new StringBuilder(), " ： ", str, activityJieTText2.E);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey4 = VehiclePropertyKey.KeyVehiclePhevSocMode;
        if (i10 == vehiclePropertyKey4.getValue()) {
            q.r(vehiclePropertyKey4, new StringBuilder(), " ： ", str, activityJieTText2.F);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey5 = VehiclePropertyKey.KeyHvacPhevSoc;
        if (i10 == vehiclePropertyKey5.getValue()) {
            q.r(vehiclePropertyKey5, new StringBuilder(), " ： ", str, activityJieTText2.G);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey6 = VehiclePropertyKey.KeyVehiclePropertyKeySts;
        if (i10 == vehiclePropertyKey6.getValue()) {
            q.r(vehiclePropertyKey6, new StringBuilder(), " ： ", str, activityJieTText2.H);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey7 = VehiclePropertyKey.KeyVehiclePropertySpeedValid;
        if (i10 == vehiclePropertyKey7.getValue()) {
            q.r(vehiclePropertyKey7, new StringBuilder(), " ： ", str, activityJieTText2.I);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey8 = VehiclePropertyKey.KeyVehiclePropertySpeed;
        if (i10 == vehiclePropertyKey8.getValue()) {
            q.r(vehiclePropertyKey8, new StringBuilder(), " ： ", str, activityJieTText2.K);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey9 = VehiclePropertyKey.KeyVehiclePropertyFLWindow;
        if (i10 == vehiclePropertyKey9.getValue()) {
            q.r(vehiclePropertyKey9, new StringBuilder(), " ： ", str, activityJieTText2.L);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey10 = VehiclePropertyKey.KeyVehiclePropertyFRWindow;
        if (i10 == vehiclePropertyKey10.getValue()) {
            q.r(vehiclePropertyKey10, new StringBuilder(), " ： ", str, activityJieTText2.M);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey11 = VehiclePropertyKey.KeyVehiclePropertyBLWindow;
        if (i10 == vehiclePropertyKey11.getValue()) {
            q.r(vehiclePropertyKey11, new StringBuilder(), " ： ", str, activityJieTText2.N);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey12 = VehiclePropertyKey.KeyVehiclePropertyBRWindow;
        if (i10 == vehiclePropertyKey12.getValue()) {
            q.r(vehiclePropertyKey12, new StringBuilder(), " ： ", str, activityJieTText2.O);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey13 = VehiclePropertyKey.KeyVehiclePropertySkyLight;
        if (i10 == vehiclePropertyKey13.getValue()) {
            q.r(vehiclePropertyKey13, new StringBuilder(), " ： ", str, activityJieTText2.P);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey14 = VehiclePropertyKey.KeyVehiclePropertyVoiceWake;
        if (i10 == vehiclePropertyKey14.getValue()) {
            q.r(vehiclePropertyKey14, new StringBuilder(), " ： ", str, activityJieTText2.R);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey15 = VehiclePropertyKey.KeyVehiclePropertyDriveMode;
        if (i10 == vehiclePropertyKey15.getValue()) {
            q.r(vehiclePropertyKey15, new StringBuilder(), " ： ", str, activityJieTText2.S);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey16 = VehiclePropertyKey.KeyVehiclePropertyEngineSts;
        if (i10 == vehiclePropertyKey16.getValue()) {
            q.r(vehiclePropertyKey16, new StringBuilder(), " ： ", str, activityJieTText2.T);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey17 = VehiclePropertyKey.KeyVehiclePropertyCustomCarWindow;
        if (i10 == vehiclePropertyKey17.getValue()) {
            q.r(vehiclePropertyKey17, new StringBuilder(), " ： ", str, activityJieTText2.V);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey18 = VehiclePropertyKey.KeyVehiclePropertyDriverDoor;
        if (i10 == vehiclePropertyKey18.getValue()) {
            q.r(vehiclePropertyKey18, new StringBuilder(), " ： ", str, activityJieTText2.X);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey19 = VehiclePropertyKey.KeyVehiclePropertyPassengerDoor;
        if (i10 == vehiclePropertyKey19.getValue()) {
            q.r(vehiclePropertyKey19, new StringBuilder(), " ： ", str, activityJieTText2.Y);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey20 = VehiclePropertyKey.KeyVehiclePropertyRhRDoor;
        if (i10 == vehiclePropertyKey20.getValue()) {
            q.r(vehiclePropertyKey20, new StringBuilder(), " ： ", str, activityJieTText2.Z);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey21 = VehiclePropertyKey.KeyVehiclePropertyLhRDoor;
        if (i10 == vehiclePropertyKey21.getValue()) {
            q.r(vehiclePropertyKey21, new StringBuilder(), " ： ", str, activityJieTText2.f3981h0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey22 = VehiclePropertyKey.KeyVehiclePropertyAllDoors;
        if (i10 == vehiclePropertyKey22.getValue()) {
            q.r(vehiclePropertyKey22, new StringBuilder(), " ： ", str, activityJieTText2.f3982t0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey23 = VehiclePropertyKey.KeyVehiclePropertyLhTurnLight;
        if (i10 == vehiclePropertyKey23.getValue()) {
            q.r(vehiclePropertyKey23, new StringBuilder(), " ： ", str, activityJieTText2.M0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey24 = VehiclePropertyKey.KeyVehiclePropertyRhTurnLight;
        if (i10 == vehiclePropertyKey24.getValue()) {
            q.r(vehiclePropertyKey24, new StringBuilder(), " ： ", str, activityJieTText2.N0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey25 = VehiclePropertyKey.KeyVehiclePropertyParkTailLight;
        if (i10 == vehiclePropertyKey25.getValue()) {
            q.r(vehiclePropertyKey25, new StringBuilder(), " ： ", str, activityJieTText2.O0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey26 = VehiclePropertyKey.KeyVehiclePropertyLowBeam;
        if (i10 == vehiclePropertyKey26.getValue()) {
            q.r(vehiclePropertyKey26, new StringBuilder(), " ： ", str, activityJieTText2.P0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey27 = VehiclePropertyKey.KeyVehiclePropertyHighBeam;
        if (i10 == vehiclePropertyKey27.getValue()) {
            q.r(vehiclePropertyKey27, new StringBuilder(), " ： ", str, activityJieTText2.Q0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey28 = VehiclePropertyKey.KeyVehiclePropertyBrake;
        if (i10 == vehiclePropertyKey28.getValue()) {
            q.r(vehiclePropertyKey28, new StringBuilder(), " ： ", str, activityJieTText2.R0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey29 = VehiclePropertyKey.KeyAvmSpeed;
        if (i10 == vehiclePropertyKey29.getValue()) {
            q.r(vehiclePropertyKey29, new StringBuilder(), " ： ", str, activityJieTText2.S0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey30 = VehiclePropertyKey.KeyVehiclePropertyDriverUnlock;
        if (i10 == vehiclePropertyKey30.getValue()) {
            q.r(vehiclePropertyKey30, new StringBuilder(), " ： ", str, activityJieTText2.T0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey31 = VehiclePropertyKey.KeyVehiclePropertyClusterSpeed;
        if (i10 == vehiclePropertyKey31.getValue()) {
            q.r(vehiclePropertyKey31, new StringBuilder(), " ： ", str, activityJieTText2.U0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey32 = VehiclePropertyKey.KeyVehiclePropertyDoorKnobMode;
        if (i10 == vehiclePropertyKey32.getValue()) {
            q.r(vehiclePropertyKey32, new StringBuilder(), " ： ", str, activityJieTText2.V0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey33 = VehiclePropertyKey.KeyVehiclePropertyDoorKnobTime;
        if (i10 == vehiclePropertyKey33.getValue()) {
            q.r(vehiclePropertyKey33, new StringBuilder(), " ： ", str, activityJieTText2.W0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey34 = VehiclePropertyKey.KeyVehiclePropertyAutoLock;
        if (i10 == vehiclePropertyKey34.getValue()) {
            q.r(vehiclePropertyKey34, new StringBuilder(), " ： ", str, activityJieTText2.X0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey35 = VehiclePropertyKey.KeyVehiclePropertyAutoUnlock;
        if (i10 == vehiclePropertyKey35.getValue()) {
            q.r(vehiclePropertyKey35, new StringBuilder(), " ： ", str, activityJieTText2.Y0);
            return;
        }
        VehiclePropertyKey vehiclePropertyKey36 = VehiclePropertyKey.KeyVehiclePropertyRemoteLock;
        if (i10 == vehiclePropertyKey36.getValue()) {
            q.r(vehiclePropertyKey36, new StringBuilder(), " ： ", str, activityJieTText2.Z0);
        }
    }

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
        ((TextView) findViewById(R.id.v_title)).setText("捷途车机sdk调试2");
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 7));
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
        this.Z = (TextView) findViewById(R.id.v_ts19);
        this.f3981h0 = (TextView) findViewById(R.id.v_ts20);
        this.f3982t0 = (TextView) findViewById(R.id.v_ts21);
        this.M0 = (TextView) findViewById(R.id.v_ts22);
        this.N0 = (TextView) findViewById(R.id.v_ts23);
        this.O0 = (TextView) findViewById(R.id.v_ts24);
        this.P0 = (TextView) findViewById(R.id.v_ts25);
        this.Q0 = (TextView) findViewById(R.id.v_ts26);
        this.R0 = (TextView) findViewById(R.id.v_ts27);
        this.S0 = (TextView) findViewById(R.id.v_ts28);
        this.T0 = (TextView) findViewById(R.id.v_ts29);
        this.U0 = (TextView) findViewById(R.id.v_ts30);
        this.V0 = (TextView) findViewById(R.id.v_ts31);
        this.W0 = (TextView) findViewById(R.id.v_ts32);
        this.X0 = (TextView) findViewById(R.id.v_ts33);
        this.Y0 = (TextView) findViewById(R.id.v_ts34);
        this.Z0 = (TextView) findViewById(R.id.v_ts35);
        try {
            g0.f3810a.a(this, false, true, false, false);
        } catch (Exception unused) {
            a0.u("不适合您的车机");
            finish();
        }
        g0.f3810a.f3820i = new c3(this);
    }
}

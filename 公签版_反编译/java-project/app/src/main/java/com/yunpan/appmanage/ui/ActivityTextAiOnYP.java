package com.yunpan.appmanage.ui;

import aa.a;
import android.widget.TextView;
import com.yunpan.appmanage.R;
import da.g;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import nh.b;
import ua.i7;
import ua.z6;

/* loaded from: classes.dex */
public class ActivityTextAiOnYP extends g {
    public static final /* synthetic */ int S = 0;
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

    @Override // da.g
    public final int t() {
        return R.layout.activity_nissan_vehicle;
    }

    @Override // da.g
    public final void u() throws IllegalAccessException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        ((TextView) findViewById(R.id.v_title)).setText("埃安YP");
        findViewById(R.id.v_btn_return).setOnClickListener(new z6(2, this));
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
        this.C.setText("isDriverDoorOpen: " + b.z(this, "isDriverDoorOpen"));
        this.D.setText("isPassengerDoorOpen: " + b.z(this, "isPassengerDoorOpen"));
        this.E.setText("isRearDoorOpen: " + b.z(this, "isRearDoorOpen"));
        this.F.setText("isHoodDoorOpen: " + b.z(this, "isHoodDoorOpen"));
        this.G.setText("getLowBeamMode: " + b.D(this, "sensor", "getCarLowBeamMode"));
        this.H.setText("getHighBeamMode: " + b.D(this, "sensor", "getCarHighBeamMode"));
        TextView textView = this.I;
        StringBuilder sb2 = new StringBuilder("isFrontLightOpen: ");
        sb2.append(b.D(this, "sensor", "getCarLowBeamMode") == 1 || b.D(this, "sensor", "getCarHighBeamMode") == 1);
        textView.setText(sb2.toString());
        this.K.setText("getWindSpeed: " + b.D(this, "hvac", "getWindSpeed"));
        this.L.setText("getPm25Value: " + b.D(this, "hvac", "getPm25Value"));
        TextView textView2 = this.M;
        StringBuilder sb3 = new StringBuilder("isHvacOpen: ");
        sb3.append(b.D(this, "hvac", "getWindSpeed") > 0);
        textView2.setText(sb3.toString());
        i7 i7Var = new i7(this);
        try {
            Object objX = b.x(this, "cabin");
            if (objX != null) {
                Class<?> cls = Class.forName("com.gxa.lib.caradapter.cabin.OnCabinChangedListener");
                objX.getClass().getMethod("subscribeCabinCallback", cls).invoke(objX, Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new a(0, i7Var)));
            }
        } catch (Exception e7) {
            e7.getMessage();
        }
        i7 i7Var2 = new i7(this);
        try {
            Object objX2 = b.x(this, "sensor");
            if (objX2 != null) {
                Class<?> cls2 = Class.forName("com.gxa.lib.caradapter.sensor.OnCarSensorDataChangedListener");
                objX2.getClass().getMethod("registerCarSensorDataCallback", cls2).invoke(objX2, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new a(1, i7Var2)));
            }
        } catch (Exception e10) {
            e10.getMessage();
        }
        i7 i7Var3 = new i7(this);
        try {
            Object objX3 = b.x(this, "hvac");
            if (objX3 == null) {
                return;
            }
            Class<?> cls3 = Class.forName("com.gxa.lib.caradapter.interfaces.OnHvacChangedListener");
            objX3.getClass().getMethod("subscribeHvacCallback", cls3).invoke(objX3, Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new a(2, i7Var3)));
        } catch (Exception e11) {
            e11.getMessage();
        }
    }
}

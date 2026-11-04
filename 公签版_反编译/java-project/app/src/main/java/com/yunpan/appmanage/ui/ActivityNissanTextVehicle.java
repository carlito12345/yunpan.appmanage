package com.yunpan.appmanage.ui;

import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.widget.TextView;
import com.hjq.toast.Toaster;
import com.hsae.autosdk.vehicle.IVehicle;
import com.hsae.autosdk.vehicle.VehicleConst;
import com.yunpan.appmanage.R;
import da.g;
import ua.f5;
import ua.g1;

/* loaded from: classes.dex */
public class ActivityNissanTextVehicle extends g {

    /* renamed from: a1, reason: collision with root package name */
    public static final /* synthetic */ int f3985a1 = 0;
    public IVehicle C;
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
    public final f5 Z0 = new f5(this);

    /* renamed from: h0, reason: collision with root package name */
    public TextView f3986h0;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f3987t0;

    @Override // da.g, q.i, androidx.fragment.app.j0, android.app.Activity
    public final void onDestroy() {
        IVehicle iVehicle = this.C;
        if (iVehicle != null) {
            try {
                iVehicle.unregisterVehicleCallback(this.Z0);
            } catch (RemoteException e7) {
                e7.printStackTrace();
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
        findViewById(R.id.v_btn_return).setOnClickListener(new g1(this, 23));
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
        this.f3986h0 = (TextView) findViewById(R.id.v_ts19);
        this.f3987t0 = (TextView) findViewById(R.id.v_ts20);
        this.M0 = (TextView) findViewById(R.id.v_ts21);
        this.N0 = (TextView) findViewById(R.id.v_ts22);
        this.O0 = (TextView) findViewById(R.id.v_ts23);
        this.P0 = (TextView) findViewById(R.id.v_ts24);
        this.Q0 = (TextView) findViewById(R.id.v_ts25);
        this.R0 = (TextView) findViewById(R.id.v_ts26);
        this.S0 = (TextView) findViewById(R.id.v_ts27);
        this.T0 = (TextView) findViewById(R.id.v_ts28);
        this.U0 = (TextView) findViewById(R.id.v_ts29);
        this.V0 = (TextView) findViewById(R.id.v_ts30);
        this.W0 = (TextView) findViewById(R.id.v_ts31);
        this.X0 = (TextView) findViewById(R.id.v_ts32);
        this.Y0 = (TextView) findViewById(R.id.v_ts33);
        try {
            IBinder service = ServiceManager.getService(VehicleConst.IBINDER_VEHICLE);
            if (service == null) {
                Toaster.show((CharSequence) "汽车服务未启动");
            } else {
                IVehicle iVehicleAsInterface = IVehicle.Stub.asInterface(service);
                this.C = iVehicleAsInterface;
                if (iVehicleAsInterface == null) {
                    Toaster.show((CharSequence) "汽车服务回调获取失败");
                } else {
                    Toaster.show((CharSequence) "车辆服务连接: ".concat(this.C.registerVehicleCallback(this.Z0, this.A.getPackageName(), "vehicle_monitor") ? "成功" : "失败"));
                    this.E.setText("ACC: " + this.C.isAccOn());
                    this.F.setText("IGN: " + this.C.getIgnState());
                }
            }
        } catch (Exception e7) {
            Toaster.show((CharSequence) ("启动失败: " + e7.getMessage()));
            e7.printStackTrace();
        }
    }
}

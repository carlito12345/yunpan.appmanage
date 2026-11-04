package com.yunpan.appmanage.carsdk;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.os.ServiceManager;
import com.autolink.adapterinterface.IHardKeyCallback;
import com.autolink.adapterinterface.IHardKeyService;
import com.autolink.adapterinterface.IPower;
import com.autolink.adapterinterface.car.IALCar;
import com.autolink.adapterinterface.clusterinteraction.IClusterInteraction;
import com.autolink.app.vehiclemanager.data.JieTKeymapType;
import com.autolink.app.vehicleservice.IVehicleControl;
import com.yunpan.appmanage.service.AccService;
import java.util.HashMap;
import java.util.HashSet;
import ua.a3;
import ua.b3;
import ua.c3;
import ua.r2;
import ua.s2;
import ua.u2;
import ua.v2;
import ua.w2;
import ua.x2;
import ua.y2;
import ua.z2;

/* loaded from: classes.dex */
public final class h0 {
    public final b0 A;
    public final c0 B;
    public final d0 C;
    public final e0 D;
    public final f0 E;
    public z7.s F;
    public AccService G;
    public final HashMap H;
    public final HashMap I;
    public final HashMap J;
    public final HashMap K;
    public final HashMap L;
    public final HashMap M;
    public boolean N;
    public z7.o O;

    /* renamed from: a, reason: collision with root package name */
    public Context f3812a;

    /* renamed from: b, reason: collision with root package name */
    public IHardKeyService f3813b;

    /* renamed from: c, reason: collision with root package name */
    public IVehicleControl f3814c;

    /* renamed from: d, reason: collision with root package name */
    public IPower f3815d;

    /* renamed from: e, reason: collision with root package name */
    public IALCar f3816e;

    /* renamed from: f, reason: collision with root package name */
    public IClusterInteraction f3817f;

    /* renamed from: i, reason: collision with root package name */
    public c3 f3820i;

    /* renamed from: s, reason: collision with root package name */
    public final z f3828s;

    /* renamed from: t, reason: collision with root package name */
    public final a0 f3829t;

    /* renamed from: u, reason: collision with root package name */
    public int f3830u;

    /* renamed from: v, reason: collision with root package name */
    public long f3831v;

    /* renamed from: w, reason: collision with root package name */
    public int f3832w;

    /* renamed from: x, reason: collision with root package name */
    public final HashSet f3833x;

    /* renamed from: y, reason: collision with root package name */
    public final Handler f3834y;
    public final b0 z;

    /* renamed from: g, reason: collision with root package name */
    public IHardKeyCallback.Stub f3818g = null;

    /* renamed from: h, reason: collision with root package name */
    public u2 f3819h = null;

    /* renamed from: j, reason: collision with root package name */
    public v2 f3821j = null;

    /* renamed from: k, reason: collision with root package name */
    public x2 f3822k = null;
    public w2 l = null;

    /* renamed from: m, reason: collision with root package name */
    public y2 f3823m = null;

    /* renamed from: n, reason: collision with root package name */
    public z2 f3824n = null;

    /* renamed from: o, reason: collision with root package name */
    public a3 f3825o = null;

    /* renamed from: p, reason: collision with root package name */
    public b3 f3826p = null;

    /* renamed from: q, reason: collision with root package name */
    public r2 f3827q = null;
    public s2 r = null;

    public h0() {
        new y(this);
        this.f3828s = new z(this);
        this.f3829t = new a0(this);
        this.f3830u = -1;
        this.f3831v = 0L;
        this.f3832w = 0;
        this.f3833x = new HashSet();
        this.f3834y = new Handler(Looper.getMainLooper());
        this.z = new b0(this, 0);
        this.A = new b0(this, 1);
        this.B = new c0(this);
        this.C = new d0(this);
        this.D = new e0(this);
        this.E = new f0(this);
        this.G = null;
        this.H = new HashMap();
        this.I = new HashMap();
        this.J = new HashMap();
        this.K = new HashMap();
        this.L = new HashMap();
        this.M = new HashMap();
        this.N = false;
    }

    public static boolean c(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getApplicationInfo("com.autolink.app.vehicleservice", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void a(Context context, boolean z, boolean z4, boolean z10, boolean z11) {
        this.f3812a = context;
        if (z) {
            try {
                Intent intent = new Intent();
                intent.setPackage("com.autolink.hardkeyservice");
                intent.setComponent(ComponentName.unflattenFromString("com.autolink.hardkeyservice/.core.ALHardKeyService"));
                context.bindService(intent, this.C, 1);
            } catch (Exception unused) {
            }
        }
        if (z4) {
            try {
                Intent intent2 = new Intent("com.autolink.vehicleservice");
                intent2.setPackage("com.autolink.app.vehicleservice");
                context.bindService(intent2, this.E, 1);
            } catch (Exception unused2) {
            }
        }
        if (z10) {
            try {
                Intent intent3 = new Intent("com.autolink.powerservice.PowerService");
                intent3.setPackage("com.autolink.powerservice");
                context.bindService(intent3, this.f3828s, 1);
            } catch (Exception unused3) {
            }
        }
        if (z11) {
            try {
                this.f3816e = IALCar.Stub.asInterface(ServiceManager.getService("alcar_service"));
            } catch (Exception unused4) {
            }
        }
    }

    public final void b(AccService accService) {
        z7.s sVarS = q4.a.s(accService);
        this.F = sVarS;
        if (sVarS == null || !sVarS.o("isOn").b()) {
            d();
            return;
        }
        this.G = accService;
        HashMap map = this.H;
        map.clear();
        HashMap map2 = this.I;
        map2.clear();
        HashMap map3 = this.J;
        map3.clear();
        HashMap map4 = this.K;
        map4.clear();
        HashMap map5 = this.L;
        map5.clear();
        HashMap map6 = this.M;
        map6.clear();
        this.N = false;
        z7.o oVarP = this.F.p("maps");
        for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
            z7.s sVarG = oVarP.l(i10).g();
            if (sVarG.o("isOpen").b()) {
                int iE = sVarG.o("type").e();
                if (iE == JieTKeymapType.MAP_TYPE_KEY.getValue()) {
                    map.put(Integer.valueOf(sVarG.o("key1").e()), sVarG);
                } else if (iE == JieTKeymapType.MAP_TYPE_GEAR.getValue()) {
                    map2.put(Integer.valueOf(sVarG.o("gear").e()), sVarG);
                } else if (iE == JieTKeymapType.MAP_TYPE_DOOR.getValue()) {
                    int iE2 = sVarG.o("door").e();
                    if (iE2 == -1) {
                        this.N = true;
                        this.O = sVarG.p("click");
                    } else if (sVarG.o("switch").e() == 0) {
                        map3.put(Integer.valueOf(iE2), sVarG);
                    } else {
                        map4.put(Integer.valueOf(iE2), sVarG);
                    }
                } else if (iE == JieTKeymapType.MAP_TYPE_LAMP.getValue()) {
                    if (sVarG.o("switch").e() == 0) {
                        map5.put(Integer.valueOf(sVarG.o("lamp").e()), sVarG);
                    } else {
                        map6.put(Integer.valueOf(sVarG.o("lamp").e()), sVarG);
                    }
                }
            }
        }
        a(accService, true, true, false, false);
    }

    public final void d() {
        s2 s2Var;
        r2 r2Var;
        b3 b3Var;
        a3 a3Var;
        z2 z2Var;
        y2 y2Var;
        w2 w2Var;
        x2 x2Var;
        v2 v2Var;
        try {
            IHardKeyService iHardKeyService = this.f3813b;
            if (iHardKeyService != null) {
                iHardKeyService.unregisterHardKeyEvent(this.B);
            }
            this.f3818g = null;
        } catch (Exception unused) {
        }
        try {
            this.f3812a.unbindService(this.C);
        } catch (Exception unused2) {
        }
        try {
            IPower iPower = this.f3815d;
            if (iPower != null) {
                iPower.unregisterPowerCallback(this.f3829t);
            }
            this.f3819h = null;
        } catch (Exception unused3) {
        }
        try {
            this.f3812a.unbindService(this.f3828s);
        } catch (Exception unused4) {
        }
        try {
            IVehicleControl iVehicleControl = this.f3814c;
            if (iVehicleControl != null) {
                iVehicleControl.unregisterCallback(this.D);
            }
            this.f3820i = null;
        } catch (Exception unused5) {
        }
        try {
            this.f3812a.unbindService(this.E);
        } catch (Exception unused6) {
        }
        try {
            IALCar iALCar = this.f3816e;
            if (iALCar != null && (v2Var = this.f3821j) != null) {
                iALCar.unregisterCarSpeedListener(v2Var);
            }
            IALCar iALCar2 = this.f3816e;
            if (iALCar2 != null && (x2Var = this.f3822k) != null) {
                iALCar2.unregisterVehicleControlPropertyListener(x2Var);
            }
            IALCar iALCar3 = this.f3816e;
            if (iALCar3 != null && (w2Var = this.l) != null) {
                iALCar3.unregisterCarEngineSpeedListener(w2Var);
            }
            IALCar iALCar4 = this.f3816e;
            if (iALCar4 != null && (y2Var = this.f3823m) != null) {
                iALCar4.unregisterCarSteerListener(y2Var);
            }
            IALCar iALCar5 = this.f3816e;
            if (iALCar5 != null && (z2Var = this.f3824n) != null) {
                iALCar5.unregisterCarTyreListener(z2Var);
            }
            IALCar iALCar6 = this.f3816e;
            if (iALCar6 != null && (a3Var = this.f3825o) != null) {
                iALCar6.unregisterAVMPropertyListener(a3Var);
            }
            IALCar iALCar7 = this.f3816e;
            if (iALCar7 != null && (b3Var = this.f3826p) != null) {
                iALCar7.unregisterCarWindListener(b3Var);
            }
            IALCar iALCar8 = this.f3816e;
            if (iALCar8 != null && (r2Var = this.f3827q) != null) {
                iALCar8.unregisterExtPropertyListener(r2Var);
            }
            IALCar iALCar9 = this.f3816e;
            if (iALCar9 != null && (s2Var = this.r) != null) {
                iALCar9.unregisterHvacPropertyListener(s2Var);
            }
        } catch (Exception unused7) {
        }
        this.G = null;
    }
}

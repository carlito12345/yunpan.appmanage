package com.yunpan.appmanage.carsdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import com.desay_svautomotive.libsvcarinfo.CarInfoHelper;
import com.desay_svautomotive.libsvcarinfo.CarInfoProxy;
import com.desay_svautomotive.libsvcarinfo.CarSettingID;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class e implements CarInfoHelper.ISpiListener {

    /* renamed from: i, reason: collision with root package name */
    public static volatile e f3792i;

    /* renamed from: a, reason: collision with root package name */
    public CarInfoProxy f3793a;

    /* renamed from: d, reason: collision with root package name */
    public d f3796d;

    /* renamed from: b, reason: collision with root package name */
    public CarInfoHelper f3794b = null;

    /* renamed from: e, reason: collision with root package name */
    public int f3797e = -1;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f3798f = new HashMap();

    /* renamed from: g, reason: collision with root package name */
    public boolean f3799g = false;

    /* renamed from: h, reason: collision with root package name */
    public final b f3800h = new b(this);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f3795c = new Handler(Looper.getMainLooper());

    public static void a(e eVar, int i10) {
        z7.o oVar = (z7.o) eVar.f3798f.get(Integer.valueOf(i10));
        if (oVar == null) {
            return;
        }
        try {
            wa.s.c().f17709e.b(oVar);
        } catch (Exception unused) {
        }
    }

    public static e c() {
        if (f3792i == null) {
            synchronized (e.class) {
                try {
                    if (f3792i == null) {
                        f3792i = new e();
                    }
                } finally {
                }
            }
        }
        return f3792i;
    }

    public static boolean e(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getApplicationInfo("com.desay_svautomotive.svcarinfo", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static z7.s f() {
        try {
            z7.s sVarQ = q4.a.q(wa.s.c().f17709e);
            if (sVarQ != null && sVarQ.o("isOn").b()) {
                if (sVarQ.p("maps").f19478a.isEmpty()) {
                    if (sVarQ.f19480a.containsKey("auto_parking")) {
                        if (!sVarQ.o("auto_parking").b()) {
                        }
                    }
                    return null;
                }
                return sVarQ;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static void i(Context context) {
        z7.s sVarF;
        if (e(context) && (sVarF = f()) != null) {
            try {
                c().d(context);
                c().b(sVarF);
                c().f3796d = new c();
                wa.s.c().f17720q = true;
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    public static void j() {
        if (wa.s.c().f17720q) {
            try {
                c().f3798f.clear();
                c().h();
            } catch (Exception unused) {
            }
            wa.s.c().f17720q = false;
        }
    }

    public final void b(z7.s sVar) {
        HashMap map = this.f3798f;
        try {
            map.clear();
            z7.o oVarP = sVar.p("maps");
            for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                if (!oVarP.l(i10).g().f19480a.containsKey("isOpen") || oVarP.l(i10).g().o("isOpen").b()) {
                    map.put(Integer.valueOf(oVarP.l(i10).g().o("type").e()), oVarP.l(i10).g().p("click"));
                }
            }
            if (sVar.f19480a.containsKey("auto_parking")) {
                this.f3799g = sVar.o("auto_parking").b();
            }
            sVar.o("isOn").b();
        } catch (Exception unused) {
            com.yunpan.appmanage.util.a0.t("读取广汽埃安专用映射的配置出错");
        }
    }

    public final void d(Context context) {
        try {
            CarInfoProxy carInfoProxy = CarInfoProxy.getInstance();
            this.f3793a = carInfoProxy;
            carInfoProxy.init(context);
        } catch (Throwable unused) {
        }
        try {
            CarInfoHelper carInfoHelper = new CarInfoHelper();
            this.f3794b = carInfoHelper;
            carInfoHelper.listen(1, new int[]{22});
            this.f3794b.listen(4, new int[]{26, 1});
            this.f3794b.listen(0, new int[]{CarSettingID.Recv.LF_DOOR_STATUS, 234, 235, CarSettingID.Recv.RR_DOOR_STATUS, 241, CarSettingID.Recv.RF_WIN_POSITION, 243, 244, CarSettingID.Recv.SUNROOF_STATUS, CarSettingID.Recv.TAILGATE_STATUS, 249});
            this.f3794b.start(this);
        } catch (Exception unused2) {
        }
    }

    public final void g(int i10) {
        if (i10 == 249) {
            this.f3796d.l(this.f3793a.getCarSettingValue(i10));
            return;
        }
        switch (i10) {
            case CarSettingID.Recv.SUNROOF_STATUS /* 231 */:
                break;
            case CarSettingID.Recv.TAILGATE_STATUS /* 232 */:
                this.f3796d.p(this.f3793a.getCarSettingValue(i10));
                return;
            case CarSettingID.Recv.LF_DOOR_STATUS /* 233 */:
            case 234:
            case 235:
            case CarSettingID.Recv.RR_DOOR_STATUS /* 236 */:
                boolean z = this.f3793a.getCarSettingValue(i10) != 0;
                this.f3796d.s(i10, z);
                if (z) {
                    if (this.f3793a.getCarSettingValue(CarSettingID.Recv.RR_DOOR_STATUS) + this.f3793a.getCarSettingValue(235) + this.f3793a.getCarSettingValue(234) + this.f3793a.getCarSettingValue(CarSettingID.Recv.LF_DOOR_STATUS) == 1) {
                        this.f3796d.s(-1, z);
                        return;
                    }
                    return;
                }
                return;
            default:
                switch (i10) {
                }
                return;
        }
        this.f3796d.g(i10, this.f3793a.getCarSettingValue(i10));
    }

    public final void h() {
        this.f3796d = null;
        this.f3795c.removeCallbacksAndMessages(null);
        try {
            CarInfoHelper carInfoHelper = this.f3794b;
            if (carInfoHelper != null) {
                carInfoHelper.end();
            }
        } catch (Exception unused) {
        }
        try {
            CarInfoProxy carInfoProxy = this.f3793a;
            if (carInfoProxy != null) {
                carInfoProxy.unBindService();
            }
        } catch (Exception unused2) {
        }
    }

    @Override // com.desay_svautomotive.libsvcarinfo.CarInfoHelper.ISpiListener
    public final void onReceiveSpi(int i10, int i11, int i12) {
        this.f3795c.post(new a(this, i11, i12, 0));
    }
}

package pa;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.IBinder;
import android.os.ServiceManager;
import androidx.emoji2.text.o;
import com.hsae.autosdk.reverse.Reverse;
import com.hsae.autosdk.settings.AutoSettingsConst;
import com.hsae.autosdk.settings.IAutoSettings;
import com.hsae.autosdk.vehicle.IVehicle;
import com.hsae.autosdk.vehicle.VehicleConst;
import com.yunpan.appmanage.service.AccService;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public AccService f12630a;

    /* renamed from: b, reason: collision with root package name */
    public IVehicle f12631b;

    /* renamed from: c, reason: collision with root package name */
    public b f12632c;

    /* renamed from: d, reason: collision with root package name */
    public Reverse f12633d;

    /* renamed from: e, reason: collision with root package name */
    public c f12634e;

    /* renamed from: g, reason: collision with root package name */
    public IAutoSettings f12636g;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12635f = true;

    /* renamed from: h, reason: collision with root package name */
    public String f12637h = "";

    /* renamed from: i, reason: collision with root package name */
    public int f12638i = 0;

    /* renamed from: j, reason: collision with root package name */
    public final Handler f12639j = new Handler();

    /* renamed from: k, reason: collision with root package name */
    public final androidx.activity.h f12640k = new androidx.activity.h(14, this);
    public final o l = new o(3);

    /* renamed from: m, reason: collision with root package name */
    public final o f12641m = new o(4);

    public static boolean b(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getApplicationInfo("com.hsae.core", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void a(AccService accService) {
        this.f12630a = accService;
        try {
            IBinder service = ServiceManager.getService(VehicleConst.IBINDER_VEHICLE);
            if (service == null) {
                return;
            }
            IVehicle iVehicleAsInterface = IVehicle.Stub.asInterface(service);
            this.f12631b = iVehicleAsInterface;
            if (iVehicleAsInterface == null) {
                return;
            }
            b bVar = new b(this, new String[]{"OFF", "P", "R", "N", "D", "S", "L", "B"});
            this.f12632c = bVar;
            this.f12631b.registerVehicleCallback(bVar, this.f12630a.getPackageName(), "vehicle_monitor");
            try {
                this.f12636g = IAutoSettings.Stub.asInterface(ServiceManager.getService(AutoSettingsConst.IBINDER_SETTINGS));
            } catch (Exception unused) {
            }
            this.f12634e = new c(this);
            Reverse reverse = Reverse.getInstance();
            this.f12633d = reverse;
            reverse.registerStateListener(this.f12634e);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}

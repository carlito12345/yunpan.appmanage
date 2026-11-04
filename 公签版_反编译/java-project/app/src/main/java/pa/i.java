package pa;

import android.os.RemoteException;
import com.hsae.autosdk.settings.AutoSettingsConst;
import com.hsae.autosdk.settings.ISystemSettingServices;
import com.hsae.autosdk.settings.wifi.IHaseWifiManager;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: d, reason: collision with root package name */
    public static volatile i f12656d;

    /* renamed from: a, reason: collision with root package name */
    public IHaseWifiManager f12657a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f12658b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public ISystemSettingServices f12659c = ISystemSettingServices.Stub.asInterface(hi.g.a(AutoSettingsConst.IBINDER_SETTINGS_MANAGER));

    public static i e() {
        if (f12656d == null) {
            synchronized (i.class) {
                try {
                    if (f12656d == null) {
                        f12656d = new i();
                    }
                } finally {
                }
            }
        }
        return f12656d;
    }

    public final IHaseWifiManager a() throws InterruptedException {
        try {
            Thread.sleep(10L);
        } catch (InterruptedException e7) {
            e7.printStackTrace();
        }
        ISystemSettingServices iSystemSettingServicesAsInterface = ISystemSettingServices.Stub.asInterface(hi.g.a(AutoSettingsConst.IBINDER_SETTINGS_MANAGER));
        this.f12659c = iSystemSettingServicesAsInterface;
        if (iSystemSettingServicesAsInterface != null) {
            try {
                this.f12657a = IHaseWifiManager.Stub.asInterface(iSystemSettingServicesAsInterface.queryBinder(1));
                if (b() != null && this.f12658b.size() > 0) {
                    try {
                        b().registerHaseWifiManager(null);
                    } catch (RemoteException e10) {
                        e10.printStackTrace();
                    }
                }
            } catch (RemoteException e11) {
                e11.printStackTrace();
            }
        }
        return this.f12657a;
    }

    public final IHaseWifiManager b() throws InterruptedException {
        ISystemSettingServices iSystemSettingServices = this.f12659c;
        if (iSystemSettingServices == null) {
            a();
        } else {
            try {
                this.f12657a = IHaseWifiManager.Stub.asInterface(iSystemSettingServices.queryBinder(1));
            } catch (RemoteException e7) {
                e7.printStackTrace();
            }
        }
        if (this.f12659c == null) {
            throw new IllegalArgumentException("SystemSetting service doesn't start");
        }
        IHaseWifiManager iHaseWifiManager = this.f12657a;
        if (iHaseWifiManager != null) {
            return (iHaseWifiManager.asBinder().isBinderAlive() && this.f12657a.asBinder().pingBinder()) ? this.f12657a : a();
        }
        throw new IllegalArgumentException("HaseWifiStateManager service doesn't start");
    }

    public final int c() {
        if (b() == null) {
            return 4;
        }
        b().getWifiApState();
        return b().getWifiApState();
    }

    public final int d() {
        if (b() == null) {
            return 4;
        }
        b().getWifiState();
        return b().getWifiState();
    }
}

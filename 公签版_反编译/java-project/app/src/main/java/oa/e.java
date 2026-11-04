package oa;

import android.app.ActivityManager;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.yunpan.appmanage.magica.MagicaNative;
import com.yunpan.appmanage.magica.MagicaService;
import java.util.List;

/* loaded from: classes.dex */
public final class e extends Binder implements d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MagicaService f11679e;

    public e(MagicaService magicaService) {
        this.f11679e = magicaService;
        attachInterface(this, "com.yunpan.appmanage.magica.IRemoteService");
    }

    public static d h(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.yunpan.appmanage.magica.IRemoteService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof d)) ? new c(iBinder) : (d) iInterfaceQueryLocalInterface;
    }

    @Override // oa.d
    public final boolean e() {
        return MagicaNative.root() && MagicaNative.adbRoot();
    }

    @Override // oa.d
    public final b f() {
        return new h(this.f11679e.f3923a);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface("com.yunpan.appmanage.magica.IRemoteService");
        }
        if (i10 == 1598968902) {
            parcel2.writeString("com.yunpan.appmanage.magica.IRemoteService");
            return true;
        }
        if (i10 != 1) {
            h hVar = null;
            if (i10 == 2) {
                try {
                    hVar = new h(Runtime.getRuntime().exec("sh"));
                } catch (Exception unused) {
                }
                parcel2.writeNoException();
                parcel2.writeStrongInterface(hVar);
            } else if (i10 == 3) {
                List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = Build.VERSION.SDK_INT >= 23 ? ((ActivityManager) this.f11679e.getSystemService(ActivityManager.class)).getRunningAppProcesses() : null;
                parcel2.writeNoException();
                if (runningAppProcesses == null) {
                    parcel2.writeInt(-1);
                } else {
                    int size = runningAppProcesses.size();
                    parcel2.writeInt(size);
                    for (int i12 = 0; i12 < size; i12++) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = runningAppProcesses.get(i12);
                        if (runningAppProcessInfo != null) {
                            parcel2.writeInt(1);
                            runningAppProcessInfo.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                    }
                }
            } else {
                if (i10 != 4) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                boolean zE = e();
                parcel2.writeNoException();
                parcel2.writeInt(zE ? 1 : 0);
            }
        } else {
            b bVarF = f();
            parcel2.writeNoException();
            parcel2.writeStrongInterface(bVarF);
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}

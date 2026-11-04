package df;

import a2.c0;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.yunpan.appmanage.carsdk.j;
import ha.db;
import hi.e;

/* loaded from: classes.dex */
public abstract class d extends Binder implements IInterface {
    public d() {
        attachInterface(this, "moe.shizuku.server.IShizukuServiceConnection");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
            IBinder strongBinder = parcel.readStrongBinder();
            e eVar = (e) this;
            e.f8223h.post(new c0(eVar, 24, strongBinder));
            try {
                strongBinder.linkToDeath(new j(1, eVar), 0);
            } catch (RemoteException unused) {
            }
            return true;
        }
        if (i10 != 2) {
            if (i10 != 1598968902) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel2.writeString("moe.shizuku.server.IShizukuServiceConnection");
            return true;
        }
        parcel.enforceInterface("moe.shizuku.server.IShizukuServiceConnection");
        e eVar2 = (e) this;
        if (!eVar2.f8226g) {
            eVar2.f8226g = true;
            e.f8223h.post(new db(6, eVar2));
        }
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}

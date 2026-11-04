package hi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import j$.util.Objects;
import java.io.FileDescriptor;

/* loaded from: classes3.dex */
public final class c implements IBinder {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f8221e;

    public c(IBinder iBinder) {
        Objects.requireNonNull(iBinder);
        this.f8221e = iBinder;
    }

    @Override // android.os.IBinder
    public final void dump(FileDescriptor fileDescriptor, String[] strArr) throws RemoteException {
        this.f8221e.dump(fileDescriptor, strArr);
    }

    @Override // android.os.IBinder
    public final void dumpAsync(FileDescriptor fileDescriptor, String[] strArr) throws RemoteException {
        this.f8221e.dumpAsync(fileDescriptor, strArr);
    }

    @Override // android.os.IBinder
    public final String getInterfaceDescriptor() {
        return this.f8221e.getInterfaceDescriptor();
    }

    @Override // android.os.IBinder
    public final boolean isBinderAlive() {
        return this.f8221e.isBinderAlive();
    }

    @Override // android.os.IBinder
    public final void linkToDeath(IBinder.DeathRecipient deathRecipient, int i10) throws RemoteException {
        this.f8221e.linkToDeath(deathRecipient, i10);
    }

    @Override // android.os.IBinder
    public final boolean pingBinder() {
        return this.f8221e.pingBinder();
    }

    @Override // android.os.IBinder
    public final IInterface queryLocalInterface(String str) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    @Override // android.os.IBinder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean transact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        boolean z;
        if (b.f8214g) {
            z = false;
        } else {
            int version = b.f8211d;
            if (version == -1) {
                try {
                    version = ((df.a) b.j()).getVersion();
                    b.f8211d = version;
                } catch (RemoteException e7) {
                    throw new RuntimeException(e7);
                } catch (SecurityException unused) {
                    version = -1;
                }
            }
            if (version >= 13) {
                z = true;
            }
        }
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeStrongBinder(this.f8221e);
            parcelObtain.writeInt(i10);
            if (z) {
                parcelObtain.writeInt(i11);
            }
            parcelObtain.appendFrom(parcel, 0, parcel.dataSize());
            if (z) {
                try {
                    ((df.a) b.j()).f4635e.transact(1, parcelObtain, parcel2, 0);
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } else {
                try {
                    ((df.a) b.j()).f4635e.transact(1, parcelObtain, parcel2, i11);
                } catch (RemoteException e11) {
                    throw new RuntimeException(e11);
                }
            }
            parcelObtain.recycle();
            return true;
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    @Override // android.os.IBinder
    public final boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i10) {
        return this.f8221e.unlinkToDeath(deathRecipient, i10);
    }
}

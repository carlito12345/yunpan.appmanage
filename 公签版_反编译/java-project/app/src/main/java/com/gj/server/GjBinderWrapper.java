package com.gj.server;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ServiceManager;
import com.yunpan.appmanage.shizuku.IGjAdbFace;
import java.io.FileDescriptor;

/* loaded from: classes.dex */
public class GjBinderWrapper implements IBinder {
    private static final String PROXY_TOKEN = "com.gj.server.GjService";
    private static final int TRANSACTION_PROXY = 1593835521;
    private IBinder original;
    private final IGjAdbFace server;

    public GjBinderWrapper(IGjAdbFace iGjAdbFace, String str) {
        this.server = iGjAdbFace;
        try {
            this.original = iGjAdbFace.getService(str);
        } catch (Exception unused) {
            this.original = ServiceManager.getService(str);
        }
    }

    @Override // android.os.IBinder
    public void dump(FileDescriptor fileDescriptor, String[] strArr) {
    }

    @Override // android.os.IBinder
    public void dumpAsync(FileDescriptor fileDescriptor, String[] strArr) {
    }

    @Override // android.os.IBinder
    public String getInterfaceDescriptor() {
        return null;
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return true;
    }

    @Override // android.os.IBinder
    public void linkToDeath(IBinder.DeathRecipient deathRecipient, int i10) {
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return true;
    }

    @Override // android.os.IBinder
    public IInterface queryLocalInterface(String str) {
        return null;
    }

    @Override // android.os.IBinder
    public boolean transact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(PROXY_TOKEN);
            parcelObtain.writeStrongBinder(this.original);
            parcelObtain.writeInt(i10);
            parcelObtain.writeInt(i11);
            if (parcel != null && parcel.dataSize() > 0) {
                parcelObtain.appendFrom(parcel, 0, parcel.dataSize());
            }
            this.server.asBinder().transact(TRANSACTION_PROXY, parcelObtain, parcel2, 0);
            parcelObtain.recycle();
            return true;
        } catch (Throwable th2) {
            parcelObtain.recycle();
            throw th2;
        }
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i10) {
        return false;
    }

    public GjBinderWrapper(IGjAdbFace iGjAdbFace, IBinder iBinder) {
        this.server = iGjAdbFace;
        this.original = iBinder;
    }
}

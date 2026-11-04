package com.yunpan.appmanage.carsdk;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.io.FileDescriptor;

/* loaded from: classes.dex */
public final class l implements IBinder {
    @Override // android.os.IBinder
    public final void dump(FileDescriptor fileDescriptor, String[] strArr) {
    }

    @Override // android.os.IBinder
    public final void dumpAsync(FileDescriptor fileDescriptor, String[] strArr) {
    }

    @Override // android.os.IBinder
    public final String getInterfaceDescriptor() {
        return "com.desay.libsvcarinfo.ICarInfoCallBack";
    }

    @Override // android.os.IBinder
    public final boolean isBinderAlive() {
        return true;
    }

    @Override // android.os.IBinder
    public final void linkToDeath(IBinder.DeathRecipient deathRecipient, int i10) {
    }

    @Override // android.os.IBinder
    public final boolean pingBinder() {
        return true;
    }

    @Override // android.os.IBinder
    public final IInterface queryLocalInterface(String str) {
        return null;
    }

    @Override // android.os.IBinder
    public final boolean transact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface("com.desay.libsvcarinfo.ICarInfoCallBack");
        }
        if (i10 != 1) {
            return false;
        }
        int i12 = parcel.readInt();
        int i13 = parcel.readInt();
        int i14 = parcel.readInt();
        if (i12 == 254 && i13 == 1) {
            wa.s.c().i(i14 == 1 ? 504 : 505);
        }
        if (parcel2 != null) {
            parcel2.writeNoException();
        }
        return true;
    }

    @Override // android.os.IBinder
    public final boolean unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i10) {
        return false;
    }
}

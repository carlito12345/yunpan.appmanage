package df;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import hi.e;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f4635e;

    public a(IBinder iBinder) {
        this.f4635e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4635e;
    }

    public final int getUid() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.f4635e.transact(4, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int getVersion() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.f4635e.transact(3, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int h(e eVar, Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeStrongBinder(eVar);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            if (!this.f4635e.transact(12, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final boolean i() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.f4635e.transact(16, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final int j(e eVar, Bundle bundle) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (eVar == null) {
                eVar = null;
            }
            parcelObtain.writeStrongBinder(eVar);
            parcelObtain.writeInt(1);
            bundle.writeToParcel(parcelObtain, 0);
            if (!this.f4635e.transact(13, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final void k() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            parcelObtain.writeInt(479479);
            if (!this.f4635e.transact(15, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final boolean l() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("moe.shizuku.server.IShizukuService");
            if (!this.f4635e.transact(17, parcelObtain, parcelObtain2, 0)) {
                int i10 = b.f4636e;
            }
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}

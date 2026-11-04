package j6;

import android.os.IBinder;
import android.os.Parcel;
import ua.x4;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f9768e;

    public a(IBinder iBinder) {
        this.f9768e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f9768e;
    }

    public final m6.a h(m6.a aVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desaysv.ivi.vdb.IVDBus");
            if (aVar != null) {
                parcelObtain.writeInt(1);
                aVar.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.f9768e.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            m6.a aVarCreateFromParcel = parcelObtain2.readInt() != 0 ? m6.a.CREATOR.createFromParcel(parcelObtain2) : null;
            parcelObtain2.recycle();
            parcelObtain.recycle();
            return aVarCreateFromParcel;
        } catch (Throwable th2) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            throw th2;
        }
    }

    public final void i(m6.a aVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desaysv.ivi.vdb.IVDBus");
            if (aVar != null) {
                parcelObtain.writeInt(1);
                aVar.writeToParcel(parcelObtain, 0);
            } else {
                parcelObtain.writeInt(0);
            }
            this.f9768e.transact(2, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            parcelObtain2.recycle();
            parcelObtain.recycle();
        } catch (Throwable th2) {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            throw th2;
        }
    }

    public final void j(int[] iArr, int i10, String str, d dVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desaysv.ivi.vdb.IVDBus");
            parcelObtain.writeIntArray(iArr);
            parcelObtain.writeInt(i10);
            parcelObtain.writeString(str);
            parcelObtain.writeStrongBinder(dVar != null ? (l6.a) dVar : null);
            this.f9768e.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final void k(m6.a aVar, x4 x4Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desaysv.ivi.vdb.IVDBus");
            parcelObtain.writeInt(1);
            aVar.writeToParcel(parcelObtain, 0);
            if (x4Var == null) {
                x4Var = null;
            }
            parcelObtain.writeStrongBinder(x4Var);
            this.f9768e.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    public final void l(m6.a aVar, x4 x4Var) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.desaysv.ivi.vdb.IVDBus");
            parcelObtain.writeInt(1);
            aVar.writeToParcel(parcelObtain, 0);
            if (x4Var == null) {
                x4Var = null;
            }
            parcelObtain.writeStrongBinder(x4Var);
            this.f9768e.transact(5, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}

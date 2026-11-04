package oa;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class c implements d {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f11678e;

    public c(IBinder iBinder) {
        this.f11678e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f11678e;
    }

    @Override // oa.d
    public final boolean e() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.yunpan.appmanage.magica.IRemoteService");
            this.f11678e.transact(4, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }

    @Override // oa.d
    public final b f() {
        b aVar;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.yunpan.appmanage.magica.IRemoteService");
            this.f11678e.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            IBinder strongBinder = parcelObtain2.readStrongBinder();
            int i10 = h.f11686i;
            if (strongBinder == null) {
                aVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.yunpan.appmanage.magica.IRemoteProcess");
                aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(strongBinder) : (b) iInterfaceQueryLocalInterface;
            }
            return aVar;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}

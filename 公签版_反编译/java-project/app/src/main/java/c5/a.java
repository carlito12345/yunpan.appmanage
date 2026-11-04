package c5;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f2872e;

    public a(IBinder iBinder) {
        this.f2872e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2872e;
    }

    public final String h(String str) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.baidu.naviauto.imaplbs.IMapAutoAPIService");
            parcelObtain.writeString(str);
            this.f2872e.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readString();
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}

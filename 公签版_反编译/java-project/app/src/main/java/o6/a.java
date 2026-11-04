package o6;

import android.os.IBinder;
import android.os.Parcel;
import com.gj.server.GjBinderWrapper;

/* loaded from: classes.dex */
public final class a implements c {

    /* renamed from: e, reason: collision with root package name */
    public final GjBinderWrapper f11646e;

    public a(GjBinderWrapper gjBinderWrapper) {
        this.f11646e = gjBinderWrapper;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f11646e;
    }

    public final boolean h() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken("com.fce.misc.proxy.source.ISourceCtrl");
            parcelObtain.writeString("hdd");
            parcelObtain.writeInt(0);
            this.f11646e.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readInt() != 0;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}

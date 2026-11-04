package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class c extends Binder implements b {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f53b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f54a;

    public c(d dVar) {
        this.f54a = dVar;
        attachInterface(this, "android.support.v4.os.IResultReceiver");
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
        parcel.enforceInterface("android.support.v4.os.IResultReceiver");
        int i3 = parcel.readInt();
        Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
        d dVar = this.f54a;
        dVar.getClass();
        dVar.a(i3, bundle);
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}

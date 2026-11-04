package j;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class c extends Binder implements b {

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f9613f = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d f9614e;

    public c(d dVar) {
        this.f9614e = dVar;
        attachInterface(this, b.f9612d);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
        String str = b.f9612d;
        if (i10 >= 1 && i10 <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i10 == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        int i12 = parcel.readInt();
        Object objCreateFromParcel = parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null;
        d dVar = this.f9614e;
        dVar.getClass();
        dVar.a(i12, (Bundle) objCreateFromParcel);
        return true;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }
}

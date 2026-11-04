package androidx.room;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class f implements g {

    /* renamed from: e, reason: collision with root package name */
    public final IBinder f2401e;

    public f(IBinder iBinder) {
        this.f2401e = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f2401e;
    }

    @Override // androidx.room.g
    public final void c(String[] strArr) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(g.f2402a);
            parcelObtain.writeStringArray(strArr);
            this.f2401e.transact(1, parcelObtain, null, 1);
        } finally {
            parcelObtain.recycle();
        }
    }
}

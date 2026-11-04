package j;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class d implements Parcelable {
    public static final Parcelable.Creator<d> CREATOR = new a7.b(26);

    /* renamed from: a, reason: collision with root package name */
    public b f9615a;

    public d(Parcel parcel) {
        b aVar;
        IBinder strongBinder = parcel.readStrongBinder();
        int i10 = c.f9613f;
        if (strongBinder == null) {
            aVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface(b.f9612d);
            aVar = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new a(strongBinder) : (b) iInterfaceQueryLocalInterface;
        }
        this.f9615a = aVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            try {
                if (this.f9615a == null) {
                    this.f9615a = new c(this);
                }
                parcel.writeStrongBinder(this.f9615a.asBinder());
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(int i10, Bundle bundle) {
    }
}

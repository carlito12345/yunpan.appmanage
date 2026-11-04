package moe.shizuku.api;

import a7.b;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BinderContainer implements Parcelable {
    public static final Parcelable.Creator<BinderContainer> CREATOR = new b(22);

    /* renamed from: a, reason: collision with root package name */
    public final IBinder f11239a;

    public BinderContainer(IBinder iBinder) {
        this.f11239a = iBinder;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStrongBinder(this.f11239a);
    }

    public BinderContainer(Parcel parcel) {
        this.f11239a = parcel.readStrongBinder();
    }
}

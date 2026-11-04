package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class z0 implements Parcelable {
    public static final Parcelable.Creator<z0> CREATOR = new a7.b(18);

    /* renamed from: a, reason: collision with root package name */
    public int f2379a;

    /* renamed from: b, reason: collision with root package name */
    public int f2380b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2381c;

    public z0() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2379a);
        parcel.writeInt(this.f2380b);
        parcel.writeInt(this.f2381c ? 1 : 0);
    }

    public z0(Parcel parcel) {
        this.f2379a = parcel.readInt();
        this.f2380b = parcel.readInt();
        this.f2381c = parcel.readInt() == 1;
    }

    public z0(z0 z0Var) {
        this.f2379a = z0Var.f2379a;
        this.f2380b = z0Var.f2380b;
        this.f2381c = z0Var.f2381c;
    }
}

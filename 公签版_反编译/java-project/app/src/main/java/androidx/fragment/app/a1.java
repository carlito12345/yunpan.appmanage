package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a1 implements Parcelable {
    public static final Parcelable.Creator<a1> CREATOR = new a7.b(14);

    /* renamed from: a, reason: collision with root package name */
    public final String f1194a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1195b;

    public a1(String str, int i10) {
        this.f1194a = str;
        this.f1195b = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f1194a);
        parcel.writeInt(this.f1195b);
    }

    public a1(Parcel parcel) {
        this.f1194a = parcel.readString();
        this.f1195b = parcel.readInt();
    }
}

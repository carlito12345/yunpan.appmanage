package p9;

import android.os.Parcel;
import android.os.Parcelable;
import mb.r;

/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new r(4);

    /* renamed from: a, reason: collision with root package name */
    public final String f12613a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12614b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12615c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12616d;

    public a(Parcel parcel) {
        this.f12613a = parcel.readString();
        this.f12615c = parcel.readString();
        this.f12614b = parcel.readString();
        this.f12616d = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f12613a);
        parcel.writeString(this.f12615c);
        parcel.writeString(this.f12614b);
        parcel.writeString(this.f12616d);
    }
}

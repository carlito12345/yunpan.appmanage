package p9;

import android.os.Parcel;
import android.os.Parcelable;
import mb.r;

/* loaded from: classes.dex */
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new r(5);

    /* renamed from: a, reason: collision with root package name */
    public final int f12619a;

    /* renamed from: b, reason: collision with root package name */
    public final int f12620b;

    /* renamed from: c, reason: collision with root package name */
    public final String f12621c;

    /* renamed from: d, reason: collision with root package name */
    public final String f12622d;

    /* renamed from: e, reason: collision with root package name */
    public final String f12623e;

    /* renamed from: f, reason: collision with root package name */
    public final int f12624f;

    /* renamed from: g, reason: collision with root package name */
    public final String f12625g;

    public e(Parcel parcel) {
        this.f12619a = parcel.readInt();
        this.f12624f = parcel.readInt();
        this.f12620b = parcel.readInt();
        this.f12621c = parcel.readString();
        this.f12622d = parcel.readString();
        this.f12625g = parcel.readString();
        this.f12623e = parcel.readString();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f12619a);
        parcel.writeInt(this.f12624f);
        parcel.writeInt(this.f12620b);
        parcel.writeString(this.f12621c);
        parcel.writeString(this.f12622d);
        parcel.writeString(this.f12625g);
        parcel.writeString(this.f12623e);
    }
}

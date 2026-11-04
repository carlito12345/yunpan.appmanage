package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new d(3);

    /* renamed from: a, reason: collision with root package name */
    public final int f23a;

    /* renamed from: b, reason: collision with root package name */
    public final float f24b;

    public RatingCompat(int i, float f2) {
        this.f23a = i;
        this.f24b = f2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f23a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f23a);
        sb.append(" rating=");
        float f2 = this.f24b;
        sb.append(f2 < 0.0f ? "unrated" : String.valueOf(f2));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f23a);
        parcel.writeFloat(this.f24b);
    }
}

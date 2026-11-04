package android.support.v4.media;

import a7.b;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new b(4);

    /* renamed from: a, reason: collision with root package name */
    public final int f731a;

    /* renamed from: b, reason: collision with root package name */
    public final float f732b;

    public RatingCompat(float f10, int i10) {
        this.f731a = i10;
        this.f732b = f10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f731a;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Rating:style=");
        sb2.append(this.f731a);
        sb2.append(" rating=");
        float f10 = this.f732b;
        sb2.append(f10 < 0.0f ? "unrated" : String.valueOf(f10));
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f731a);
        parcel.writeFloat(this.f732b);
    }
}

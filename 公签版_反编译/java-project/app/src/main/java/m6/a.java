package m6;

import a7.b;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new b(28);

    /* renamed from: a, reason: collision with root package name */
    public final int f10894a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f10895b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10896c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10897d;

    public a(Bundle bundle) {
        this.f10896c = 0;
        this.f10894a = 327684;
        this.f10895b = bundle;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("VDEvent{id=");
        sb2.append(this.f10894a);
        sb2.append(", payload=");
        sb2.append(this.f10895b);
        sb2.append(", threadType=");
        sb2.append(this.f10896c);
        sb2.append(", timeMillis=");
        return android.support.v4.media.session.a.t(sb2, this.f10897d, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f10894a);
        parcel.writeBundle(this.f10895b);
        parcel.writeInt(this.f10896c);
        parcel.writeLong(this.f10897d);
    }

    public a(Parcel parcel) {
        this.f10894a = 0;
        this.f10896c = 0;
        this.f10894a = parcel.readInt();
        this.f10895b = parcel.readBundle();
        this.f10896c = parcel.readInt();
        this.f10897d = parcel.readLong();
    }
}

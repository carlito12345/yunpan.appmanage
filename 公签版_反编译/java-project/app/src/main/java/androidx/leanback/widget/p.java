package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a7.b(17);

    /* renamed from: a, reason: collision with root package name */
    public int f1676a;

    /* renamed from: b, reason: collision with root package name */
    public Bundle f1677b;

    public p(Parcel parcel) {
        this.f1677b = Bundle.EMPTY;
        this.f1676a = parcel.readInt();
        this.f1677b = parcel.readBundle(q.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f1676a);
        parcel.writeBundle(this.f1677b);
    }

    public p() {
        this.f1677b = Bundle.EMPTY;
    }
}

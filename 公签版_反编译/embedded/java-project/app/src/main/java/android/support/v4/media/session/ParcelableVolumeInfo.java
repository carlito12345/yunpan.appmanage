package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.d;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new d(7);

    /* renamed from: a, reason: collision with root package name */
    public int f36a;

    /* renamed from: b, reason: collision with root package name */
    public int f37b;

    /* renamed from: c, reason: collision with root package name */
    public int f38c;

    /* renamed from: d, reason: collision with root package name */
    public int f39d;

    /* renamed from: e, reason: collision with root package name */
    public int f40e;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f36a);
        parcel.writeInt(this.f38c);
        parcel.writeInt(this.f39d);
        parcel.writeInt(this.f40e);
        parcel.writeInt(this.f37b);
    }
}

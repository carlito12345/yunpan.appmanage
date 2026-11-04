package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a7.b(8);

    /* renamed from: a, reason: collision with root package name */
    public final int f737a;

    /* renamed from: b, reason: collision with root package name */
    public final int f738b;

    /* renamed from: c, reason: collision with root package name */
    public final int f739c;

    /* renamed from: d, reason: collision with root package name */
    public final int f740d;

    /* renamed from: e, reason: collision with root package name */
    public final int f741e;

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f737a = parcel.readInt();
        this.f739c = parcel.readInt();
        this.f740d = parcel.readInt();
        this.f741e = parcel.readInt();
        this.f738b = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f737a);
        parcel.writeInt(this.f739c);
        parcel.writeInt(this.f740d);
        parcel.writeInt(this.f741e);
        parcel.writeInt(this.f738b);
    }
}

package w;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class l3 extends e1.b {
    public static final Parcelable.Creator<l3> CREATOR = new androidx.fragment.app.d0(10);

    /* renamed from: c, reason: collision with root package name */
    public int f17150c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17151d;

    public l3(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f17150c = parcel.readInt();
        this.f17151d = parcel.readInt() != 0;
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f17150c);
        parcel.writeInt(this.f17151d ? 1 : 0);
    }

    public l3(Parcelable parcelable) {
        super(parcelable);
    }
}

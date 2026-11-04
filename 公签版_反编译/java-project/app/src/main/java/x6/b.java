package x6;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public final class b extends e1.b {
    public static final Parcelable.Creator<b> CREATOR = new d0(12);

    /* renamed from: c, reason: collision with root package name */
    public boolean f18158c;

    public b(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f18158c ? 1 : 0);
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            b.class.getClassLoader();
        }
        this.f18158c = parcel.readInt() == 1;
    }
}

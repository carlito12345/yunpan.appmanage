package g7;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public final class a extends e1.b {
    public static final Parcelable.Creator<a> CREATOR = new d0(3);

    /* renamed from: c, reason: collision with root package name */
    public boolean f6057c;

    public a(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f6057c ? 1 : 0);
    }

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f6057c = parcel.readInt() == 1;
    }
}

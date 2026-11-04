package w;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class x2 extends e1.b {
    public static final Parcelable.Creator<x2> CREATOR = new androidx.fragment.app.d0(9);

    /* renamed from: c, reason: collision with root package name */
    public boolean f17299c;

    public x2(Parcelable parcelable) {
        super(parcelable);
    }

    public final String toString() {
        return "SearchView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " isIconified=" + this.f17299c + "}";
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeValue(Boolean.valueOf(this.f17299c));
    }

    public x2(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f17299c = ((Boolean) parcel.readValue(null)).booleanValue();
    }
}

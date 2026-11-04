package k4;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public final class f extends e1.b {
    public static final Parcelable.Creator<f> CREATOR = new d0(5);

    /* renamed from: c, reason: collision with root package name */
    public int f10144c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f10145d;

    public f(Parcelable parcelable) {
        super(parcelable);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("FragmentPager.SavedState{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" position=");
        return android.support.v4.media.session.a.s(sb2, this.f10144c, "}");
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f10144c);
        parcel.writeParcelable(this.f10145d, i10);
    }

    public f(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? f.class.getClassLoader() : classLoader;
        this.f10144c = parcel.readInt();
        this.f10145d = parcel.readParcelable(classLoader);
    }
}

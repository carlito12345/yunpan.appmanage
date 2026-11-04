package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class j2 extends e1.b {
    public static final Parcelable.Creator<j2> CREATOR = new androidx.fragment.app.d0(1);

    /* renamed from: c, reason: collision with root package name */
    public Parcelable f2164c;

    public j2(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2164c = parcel.readParcelable(classLoader == null ? RecyclerView.LayoutManager.class.getClassLoader() : classLoader);
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeParcelable(this.f2164c, 0);
    }

    public j2(Parcelable parcelable) {
        super(parcelable);
    }
}

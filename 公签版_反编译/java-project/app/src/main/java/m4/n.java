package m4;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public final class n extends View.BaseSavedState {
    public static final Parcelable.Creator<n> CREATOR = new d0(6);

    /* renamed from: a, reason: collision with root package name */
    public int f10874a;

    /* renamed from: b, reason: collision with root package name */
    public int f10875b;

    /* renamed from: c, reason: collision with root package name */
    public Parcelable f10876c;

    public n(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f10874a = parcel.readInt();
        this.f10875b = parcel.readInt();
        this.f10876c = parcel.readParcelable(classLoader);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f10874a);
        parcel.writeInt(this.f10875b);
        parcel.writeParcelable(this.f10876c, i10);
    }

    public n(Parcel parcel) {
        super(parcel);
        this.f10874a = parcel.readInt();
        this.f10875b = parcel.readInt();
        this.f10876c = parcel.readParcelable(null);
    }

    public n(Parcelable parcelable) {
        super(parcelable);
    }
}

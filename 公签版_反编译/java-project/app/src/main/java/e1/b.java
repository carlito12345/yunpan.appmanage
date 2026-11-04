package e1;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* renamed from: a, reason: collision with root package name */
    public final Parcelable f4709a;

    /* renamed from: b, reason: collision with root package name */
    public static final a f4708b = new a();
    public static final Parcelable.Creator<b> CREATOR = new d0(2);

    public b() {
        this.f4709a = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f4709a, i10);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f4709a = parcelable == f4708b ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f4709a = parcelable == null ? f4708b : parcelable;
    }
}

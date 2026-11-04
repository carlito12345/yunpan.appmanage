package n7;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import androidx.fragment.app.d0;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final class c extends e1.b {
    public static final Parcelable.Creator<c> CREATOR = new d0(7);

    /* renamed from: c, reason: collision with root package name */
    public final int f11311c;

    public c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f11311c = parcel.readInt();
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f11311c);
    }

    public c(AbsSavedState absSavedState, SideSheetBehavior sideSheetBehavior) {
        super(absSavedState);
        this.f11311c = sideSheetBehavior.f3629h;
    }
}

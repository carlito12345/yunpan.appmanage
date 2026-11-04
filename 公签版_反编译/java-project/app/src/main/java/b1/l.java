package b1;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public final class l extends View.BaseSavedState {
    public static final Parcelable.Creator<l> CREATOR = new a7.b(21);

    /* renamed from: a, reason: collision with root package name */
    public int f2519a;

    public l(Parcelable parcelable) {
        super(parcelable);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("HorizontalScrollView.SavedState{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" scrollPosition=");
        return android.support.v4.media.session.a.s(sb2, this.f2519a, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f2519a);
    }

    public l(Parcel parcel) {
        super(parcel);
        this.f2519a = parcel.readInt();
    }
}

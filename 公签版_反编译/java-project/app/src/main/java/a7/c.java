package a7;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public final class c extends View.BaseSavedState {
    public static final Parcelable.Creator<c> CREATOR = new b(0);

    /* renamed from: a, reason: collision with root package name */
    public int f452a;

    public c(Parcelable parcelable) {
        super(parcelable);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("MaterialCheckBox.SavedState{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        sb2.append(" CheckedState=");
        int i10 = this.f452a;
        return g.b.l(i10 != 1 ? i10 != 2 ? "unchecked" : "indeterminate" : "checked", "}", sb2);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeValue(Integer.valueOf(this.f452a));
    }

    public c(Parcel parcel) {
        super(parcel);
        this.f452a = ((Integer) parcel.readValue(c.class.getClassLoader())).intValue();
    }
}

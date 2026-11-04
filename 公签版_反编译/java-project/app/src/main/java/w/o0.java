package w;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public final class o0 extends View.BaseSavedState {
    public static final Parcelable.Creator<o0> CREATOR = new mb.r(7);

    /* renamed from: a, reason: collision with root package name */
    public boolean f17179a;

    public o0(Parcelable parcelable) {
        super(parcelable);
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeByte(this.f17179a ? (byte) 1 : (byte) 0);
    }

    public o0(Parcel parcel) {
        super(parcel);
        this.f17179a = parcel.readByte() != 0;
    }
}

package w6;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import androidx.fragment.app.d0;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import e1.b;

/* loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new d0(11);

    /* renamed from: c, reason: collision with root package name */
    public final int f17618c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17619d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f17620e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f17621f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f17622g;

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f17618c = parcel.readInt();
        this.f17619d = parcel.readInt();
        this.f17620e = parcel.readInt() == 1;
        this.f17621f = parcel.readInt() == 1;
        this.f17622g = parcel.readInt() == 1;
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.f17618c);
        parcel.writeInt(this.f17619d);
        parcel.writeInt(this.f17620e ? 1 : 0);
        parcel.writeInt(this.f17621f ? 1 : 0);
        parcel.writeInt(this.f17622g ? 1 : 0);
    }

    public a(AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
        super(absSavedState);
        this.f17618c = bottomSheetBehavior.L;
        this.f17619d = bottomSheetBehavior.f3469e;
        this.f17620e = bottomSheetBehavior.f3463b;
        this.f17621f = bottomSheetBehavior.I;
        this.f17622g = bottomSheetBehavior.J;
    }
}

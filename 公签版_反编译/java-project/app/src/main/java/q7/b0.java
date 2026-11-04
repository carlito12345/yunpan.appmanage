package q7;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.d0;

/* loaded from: classes.dex */
public final class b0 extends e1.b {
    public static final Parcelable.Creator<b0> CREATOR = new d0(8);

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f13057c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13058d;

    public b0(Parcelable parcelable) {
        super(parcelable);
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f13057c) + "}";
    }

    @Override // e1.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        TextUtils.writeToParcel(this.f13057c, parcel, i10);
        parcel.writeInt(this.f13058d ? 1 : 0);
    }

    public b0(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f13057c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f13058d = parcel.readInt() == 1;
    }
}

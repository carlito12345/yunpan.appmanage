package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a7.b(13);

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1215a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1216b;

    public c(Parcel parcel) {
        this.f1215a = parcel.createStringArrayList();
        this.f1216b = parcel.createTypedArrayList(b.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeStringList(this.f1215a);
        parcel.writeTypedList(this.f1216b);
    }
}

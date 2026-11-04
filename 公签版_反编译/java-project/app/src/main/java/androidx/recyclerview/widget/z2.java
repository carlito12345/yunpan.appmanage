package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class z2 implements Parcelable {
    public static final Parcelable.Creator<z2> CREATOR = new a7.b(19);

    /* renamed from: a, reason: collision with root package name */
    public int f2386a;

    /* renamed from: b, reason: collision with root package name */
    public int f2387b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f2388c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2389d;

    public z2(Parcel parcel) {
        this.f2386a = parcel.readInt();
        this.f2387b = parcel.readInt();
        this.f2389d = parcel.readInt() == 1;
        int i10 = parcel.readInt();
        if (i10 > 0) {
            int[] iArr = new int[i10];
            this.f2388c = iArr;
            parcel.readIntArray(iArr);
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f2386a + ", mGapDir=" + this.f2387b + ", mHasUnwantedGapAfter=" + this.f2389d + ", mGapPerSpan=" + Arrays.toString(this.f2388c) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2386a);
        parcel.writeInt(this.f2387b);
        parcel.writeInt(this.f2389d ? 1 : 0);
        int[] iArr = this.f2388c;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f2388c);
        }
    }

    public z2() {
    }
}

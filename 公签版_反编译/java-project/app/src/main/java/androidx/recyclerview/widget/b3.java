package androidx.recyclerview.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b3 implements Parcelable {
    public static final Parcelable.Creator<b3> CREATOR = new a7.b(20);

    /* renamed from: a, reason: collision with root package name */
    public int f2040a;

    /* renamed from: b, reason: collision with root package name */
    public int f2041b;

    /* renamed from: c, reason: collision with root package name */
    public int f2042c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f2043d;

    /* renamed from: e, reason: collision with root package name */
    public int f2044e;

    /* renamed from: f, reason: collision with root package name */
    public int[] f2045f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f2046g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2047h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2048i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2049j;

    public b3() {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f2040a);
        parcel.writeInt(this.f2041b);
        parcel.writeInt(this.f2042c);
        if (this.f2042c > 0) {
            parcel.writeIntArray(this.f2043d);
        }
        parcel.writeInt(this.f2044e);
        if (this.f2044e > 0) {
            parcel.writeIntArray(this.f2045f);
        }
        parcel.writeInt(this.f2047h ? 1 : 0);
        parcel.writeInt(this.f2048i ? 1 : 0);
        parcel.writeInt(this.f2049j ? 1 : 0);
        parcel.writeList(this.f2046g);
    }

    public b3(Parcel parcel) {
        this.f2040a = parcel.readInt();
        this.f2041b = parcel.readInt();
        int i10 = parcel.readInt();
        this.f2042c = i10;
        if (i10 > 0) {
            int[] iArr = new int[i10];
            this.f2043d = iArr;
            parcel.readIntArray(iArr);
        }
        int i11 = parcel.readInt();
        this.f2044e = i11;
        if (i11 > 0) {
            int[] iArr2 = new int[i11];
            this.f2045f = iArr2;
            parcel.readIntArray(iArr2);
        }
        this.f2047h = parcel.readInt() == 1;
        this.f2048i = parcel.readInt() == 1;
        this.f2049j = parcel.readInt() == 1;
        this.f2046g = parcel.readArrayList(z2.class.getClassLoader());
    }

    public b3(b3 b3Var) {
        this.f2042c = b3Var.f2042c;
        this.f2040a = b3Var.f2040a;
        this.f2041b = b3Var.f2041b;
        this.f2043d = b3Var.f2043d;
        this.f2044e = b3Var.f2044e;
        this.f2045f = b3Var.f2045f;
        this.f2047h = b3Var.f2047h;
        this.f2048i = b3Var.f2048i;
        this.f2049j = b3Var.f2049j;
        this.f2046g = b3Var.f2046g;
    }
}

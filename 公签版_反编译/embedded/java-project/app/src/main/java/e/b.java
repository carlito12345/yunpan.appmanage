package e;

import android.os.Parcel;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f83a;

    /* renamed from: b, reason: collision with root package name */
    public final Parcel f84b;

    /* renamed from: c, reason: collision with root package name */
    public final int f85c;

    /* renamed from: d, reason: collision with root package name */
    public final int f86d;

    /* renamed from: e, reason: collision with root package name */
    public final String f87e;

    /* renamed from: f, reason: collision with root package name */
    public int f88f;
    public int g;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "");
    }

    @Override // e.a
    public final b a() {
        Parcel parcel = this.f84b;
        int iDataPosition = parcel.dataPosition();
        int i = this.g;
        if (i == this.f85c) {
            i = this.f86d;
        }
        return new b(parcel, iDataPosition, i, this.f87e + "  ");
    }

    @Override // e.a
    public final boolean c(int i) {
        Parcel parcel;
        int iDataPosition;
        while (true) {
            int i2 = this.g;
            int i3 = this.f86d;
            parcel = this.f84b;
            if (i2 >= i3) {
                iDataPosition = -1;
                break;
            }
            parcel.setDataPosition(i2);
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            this.g += i4;
            if (i5 == i) {
                iDataPosition = parcel.dataPosition();
                break;
            }
        }
        if (iDataPosition == -1) {
            return false;
        }
        parcel.setDataPosition(iDataPosition);
        return true;
    }

    @Override // e.a
    public final void g(int i) {
        int i2 = this.f88f;
        SparseIntArray sparseIntArray = this.f83a;
        Parcel parcel = this.f84b;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(iDataPosition - i3);
            parcel.setDataPosition(iDataPosition);
        }
        this.f88f = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    public b(Parcel parcel, int i, int i2, String str) {
        this.f83a = new SparseIntArray();
        this.f88f = -1;
        this.f84b = parcel;
        this.f85c = i;
        this.f86d = i2;
        this.g = i;
        this.f87e = str;
    }
}

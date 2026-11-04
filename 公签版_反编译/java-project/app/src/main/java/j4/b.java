package j4;

import a0.e;
import android.os.Parcel;
import android.util.SparseIntArray;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f9744d;

    /* renamed from: e, reason: collision with root package name */
    public final Parcel f9745e;

    /* renamed from: f, reason: collision with root package name */
    public final int f9746f;

    /* renamed from: g, reason: collision with root package name */
    public final int f9747g;

    /* renamed from: h, reason: collision with root package name */
    public final String f9748h;

    /* renamed from: i, reason: collision with root package name */
    public int f9749i;

    /* renamed from: j, reason: collision with root package name */
    public int f9750j;

    /* renamed from: k, reason: collision with root package name */
    public int f9751k;

    public b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new e(), new e(), new e());
    }

    @Override // j4.a
    public final b a() {
        Parcel parcel = this.f9745e;
        int iDataPosition = parcel.dataPosition();
        int i10 = this.f9750j;
        if (i10 == this.f9746f) {
            i10 = this.f9747g;
        }
        return new b(parcel, iDataPosition, i10, g.b.l(this.f9748h, "  ", new StringBuilder()), this.f9741a, this.f9742b, this.f9743c);
    }

    @Override // j4.a
    public final boolean e(int i10) {
        while (this.f9750j < this.f9747g) {
            int i11 = this.f9751k;
            if (i11 == i10) {
                return true;
            }
            if (String.valueOf(i11).compareTo(String.valueOf(i10)) > 0) {
                return false;
            }
            int i12 = this.f9750j;
            Parcel parcel = this.f9745e;
            parcel.setDataPosition(i12);
            int i13 = parcel.readInt();
            this.f9751k = parcel.readInt();
            this.f9750j += i13;
        }
        return this.f9751k == i10;
    }

    @Override // j4.a
    public final void i(int i10) {
        int i11 = this.f9749i;
        SparseIntArray sparseIntArray = this.f9744d;
        Parcel parcel = this.f9745e;
        if (i11 >= 0) {
            int i12 = sparseIntArray.get(i11);
            int iDataPosition = parcel.dataPosition();
            parcel.setDataPosition(i12);
            parcel.writeInt(iDataPosition - i12);
            parcel.setDataPosition(iDataPosition);
        }
        this.f9749i = i10;
        sparseIntArray.put(i10, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i10);
    }

    public b(Parcel parcel, int i10, int i11, String str, e eVar, e eVar2, e eVar3) {
        super(eVar, eVar2, eVar3);
        this.f9744d = new SparseIntArray();
        this.f9749i = -1;
        this.f9751k = -1;
        this.f9745e = parcel;
        this.f9746f = i10;
        this.f9747g = i11;
        this.f9750j = i10;
        this.f9748h = str;
    }
}

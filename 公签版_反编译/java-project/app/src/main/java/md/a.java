package md;

import id.d;
import id.e;
import vc.f;
import vc.j;

/* loaded from: classes.dex */
public final class a extends id.c implements id.a {
    public final byte[] A;
    public final int B;
    public int C;
    public j D;

    /* renamed from: y, reason: collision with root package name */
    public byte[] f11192y;
    public final int z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(f fVar, int i10) {
        super(fVar, 11);
        byte[] bArr = e.f8677a;
        this.z = i10;
        this.f11192y = bArr;
        this.B = ((wc.a) fVar).f17841i0 & (-8);
        this.A = null;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        rd.a.e(57L, bArr, i10);
        rd.a.f(this.z, bArr, i10 + 4);
        System.arraycopy(this.f11192y, 0, bArr, i10 + 8, 16);
        int i11 = i10 + 24;
        int i12 = i10 + 28;
        rd.a.f(0, bArr, i10 + 32);
        int i13 = i10 + 36;
        int i14 = i10 + 40;
        rd.a.f(this.B, bArr, i10 + 44);
        rd.a.f(this.C, bArr, i10 + 48);
        int i15 = i10 + 56;
        if (this.D != null) {
            rd.a.f(i15 - this.f8658d, bArr, i11);
            int iC = this.D.c(i15, bArr);
            rd.a.f(iC, bArr, i12);
            i15 += iC;
        } else {
            rd.a.f(0L, bArr, i11);
            rd.a.f(0L, bArr, i12);
        }
        rd.a.f(0L, bArr, i13);
        rd.a.f(0L, bArr, i14);
        return i15 - i10;
    }

    @Override // id.c
    public final d q0(vc.b bVar) {
        return new b(bVar.e(), this.A, this.z);
    }

    @Override // ad.c
    public final int size() {
        j jVar = this.D;
        return id.b.o0(120 + (jVar != null ? jVar.size() : 0), 0);
    }

    @Override // id.a
    public final void w(byte[] bArr) {
        this.f11192y = bArr;
    }
}

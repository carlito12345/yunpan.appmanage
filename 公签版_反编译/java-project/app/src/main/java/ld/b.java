package ld;

import ad.g;
import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class b extends d {
    public int D;
    public final byte[] E;
    public final int F;

    public b(f fVar, byte[] bArr, int i10) {
        super(fVar);
        this.E = bArr;
        this.F = i10;
    }

    @Override // id.b
    public final boolean j0() {
        return this.f8664j != -2147483643 && super.j0();
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        int iA = rd.a.a(i10, bArr);
        if (iA == 9) {
            return m0(i10, bArr);
        }
        if (iA != 17) {
            throw new g("Expected structureSize = 17");
        }
        short s8 = bArr[i10 + 2];
        this.D = rd.a.b(i10 + 4, bArr);
        rd.a.b(i10 + 8, bArr);
        int i11 = i10 + 16;
        int i12 = this.f8658d + s8;
        int i13 = this.D;
        int i14 = this.F;
        int i15 = i13 + i14;
        byte[] bArr2 = this.E;
        if (i15 > bArr2.length) {
            throw new g("Buffer to small for read response");
        }
        System.arraycopy(bArr, i12, bArr2, i14, i13);
        return Math.max(i11, i12 + this.D) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}

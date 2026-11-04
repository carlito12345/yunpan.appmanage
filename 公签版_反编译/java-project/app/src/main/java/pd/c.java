package pd;

import ad.g;
import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class c extends d {
    public int D;
    public byte[] E;

    public c(f fVar) {
        super(fVar);
    }

    @Override // id.d, ad.d
    public final void E(ad.c cVar) {
        if (this.f8675x) {
            cVar.f(this.f8670s);
        }
        super.E(cVar);
    }

    @Override // id.b
    public final boolean j0() {
        return this.f8664j != -1073741802 && super.j0();
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 9) {
            throw new g("Structure size != 9");
        }
        this.D = rd.a.a(i10 + 2, bArr);
        int iA = rd.a.a(i10 + 4, bArr);
        int iA2 = rd.a.a(i10 + 6, bArr);
        int i11 = i10 + 8;
        int i12 = this.f8658d;
        int i13 = i11 - (i12 + iA);
        byte[] bArr2 = new byte[iA2];
        this.E = bArr2;
        System.arraycopy(bArr, i12 + iA, bArr2, 0, iA2);
        return ((i11 + i13) + iA2) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}

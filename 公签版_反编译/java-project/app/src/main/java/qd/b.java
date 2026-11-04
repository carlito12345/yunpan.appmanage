package qd;

import ad.g;
import ad.l;
import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class b extends d implements l {
    public int D;
    public int E;

    public b(f fVar) {
        super(fVar);
    }

    @Override // ad.l
    public final boolean A() {
        return this.f8668p != -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // id.d, ad.d
    public final void E(ad.c cVar) {
        if (this.f8675x) {
            ((id.b) cVar).n0(this.f8668p);
        }
        super.E(cVar);
    }

    @Override // ad.l
    public final String G() {
        return null;
    }

    @Override // ad.l
    public final boolean U() {
        return (this.D & 3) != 0 || (this.E & 8) == 8;
    }

    @Override // ad.l
    public final int Z() {
        return this.f8668p;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 16) {
            throw new g("Structure size is not 16");
        }
        byte b10 = bArr[i10 + 2];
        this.D = rd.a.b(i10 + 4, bArr);
        this.E = rd.a.b(i10 + 8, bArr);
        rd.a.b(i10 + 12, bArr);
        return (i10 + 16) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}

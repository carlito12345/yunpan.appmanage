package ld;

import ad.g;
import id.d;
import vc.f;

/* loaded from: classes.dex */
public final class c extends d {
    public int D;

    public c(f fVar) {
        super(fVar);
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 17) {
            throw new g("Expected structureSize = 17");
        }
        this.D = rd.a.b(i10 + 4, bArr);
        rd.a.b(i10 + 8, bArr);
        return (i10 + 16) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}

package kd;

import a1.i;
import dd.e;
import vc.f;
import vc.g;

/* loaded from: classes.dex */
public final class b extends id.d {
    public final byte D;
    public final byte E;
    public g F;

    public b(f fVar, byte b10, byte b11) {
        super(fVar);
        this.D = b10;
        this.E = b11;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws ad.g {
        g cVar;
        if (rd.a.a(i10, bArr) != 9) {
            throw new ad.g("Expected structureSize = 9");
        }
        int iA = rd.a.a(i10 + 2, bArr) + this.f8658d;
        int iB = rd.a.b(i10 + 4, bArr);
        int i11 = i10 + 8;
        byte b10 = this.D;
        byte b11 = this.E;
        if (b10 != 1) {
            if (b10 != 2) {
                if (b10 != 3) {
                    if (b10 != 4) {
                        throw new ad.g(da.b.a(b10, "Unknwon information type "));
                    }
                    throw new ad.g(da.b.a(b11, "Unknown quota info class "));
                }
                cVar = new i(9);
            } else if (b11 == 3) {
                cVar = new e(0);
            } else {
                if (b11 != 7) {
                    throw new ad.g(da.b.a(b11, "Unknown filesystem info class "));
                }
                cVar = new dd.d();
            }
        } else {
            if (b11 != 6) {
                throw new ad.g(da.b.a(b11, "Unknown file info class "));
            }
            cVar = new dd.c(1, false);
        }
        cVar.i(iA, iB, bArr);
        int iMax = Math.max(i11, iA + iB);
        this.F = cVar;
        return iMax - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }
}

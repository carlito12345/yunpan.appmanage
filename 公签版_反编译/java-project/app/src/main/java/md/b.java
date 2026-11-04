package md;

import ha.j2;
import ha.l2;
import id.d;
import vc.f;
import vc.g;
import vd.r;

/* loaded from: classes.dex */
public final class b extends d {
    public final byte[] D;
    public int E;
    public g F;

    public b(f fVar, byte[] bArr, int i10) {
        super(fVar);
        this.D = bArr;
        this.E = i10;
    }

    @Override // id.b
    public final boolean j0() {
        int i10;
        int i11;
        int i12 = this.f8664j;
        return i12 != -1073741811 && !(i12 == -1073741811 && ((i11 = this.E) == 1327346 || i11 == 1343730)) && (!(i12 == -2147483643 && ((i10 = this.E) == 1163287 || i10 == 1130508 || i10 == 393620)) && super.j0());
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws ad.g {
        int iA = rd.a.a(i10, bArr);
        if (iA == 9) {
            return m0(i10, bArr);
        }
        if (iA != 49) {
            throw new ad.g("Expected structureSize = 49");
        }
        this.E = rd.a.b(i10 + 4, bArr);
        System.arraycopy(bArr, i10 + 8, new byte[16], 0, 16);
        int iB = rd.a.b(i10 + 24, bArr) + this.f8658d;
        int iB2 = rd.a.b(i10 + 28, bArr);
        int iB3 = rd.a.b(i10 + 32, bArr) + this.f8658d;
        int iB4 = rd.a.b(i10 + 36, bArr);
        rd.a.b(i10 + 40, bArr);
        int i11 = i10 + 48;
        g dVar = null;
        byte[] bArr2 = this.D;
        if (bArr2 == null) {
            switch (this.E) {
                case 393620:
                    dVar = new bd.d();
                    break;
                case 1130508:
                    dVar = new j2(21);
                    break;
                case 1310840:
                    dVar = new l2(21);
                    break;
                case 1311236:
                    dVar = new c();
                    break;
                case 1327346:
                case 1343730:
                    dVar = new l2(20);
                    break;
            }
        }
        this.F = dVar;
        int iMax = Math.max(iB + iB2, i11);
        if (bArr2 == null) {
            g gVar = this.F;
            if (gVar != null) {
                gVar.i(iB3, iB4, bArr);
            }
        } else {
            if (iB4 > bArr2.length) {
                throw new ad.g("Output length exceeds buffer size");
            }
            System.arraycopy(bArr, iB3, bArr2, 0, iB4);
        }
        return Math.max(iB3 + iB4, iMax) - i10;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }

    public final g r0(Class cls) throws r {
        g gVar = this.F;
        if (gVar == null) {
            throw new r("Failed to decode output data");
        }
        if (cls.isAssignableFrom(gVar.getClass())) {
            return gVar;
        }
        throw new r("Incompatible response data " + gVar.getClass());
    }
}

package ed;

import ad.d;
import ad.g;
import androidx.fragment.app.b0;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.f;

/* loaded from: classes.dex */
public abstract class a extends c {
    public static final Logger K = LoggerFactory.getLogger((Class<?>) a.class);
    public byte G;
    public int H;
    public c I;

    public a(f fVar, byte b10, String str) {
        super(fVar, b10, str);
        this.G = (byte) -1;
        this.H = 0;
        this.I = null;
    }

    @Override // ed.c, ad.b
    public final int c(int i10, byte[] bArr) {
        this.f4929c = i10;
        p0(i10, bArr);
        int i11 = i10 + 32;
        int iU0 = (u0(i11, bArr) + i11) - i10;
        this.f4930d = iU0;
        b bVar = this.f4944v;
        if (bVar != null) {
            bVar.b(bArr, this.f4929c, iU0, this, b());
        }
        return this.f4930d;
    }

    @Override // ed.c, ad.b
    public final int decode(byte[] bArr) throws g {
        this.f4929c = 4;
        j0(bArr);
        int iT0 = t0(36, bArr) + 32;
        this.f4930d = iT0;
        if (this.B) {
            System.arraycopy(bArr, 4, new byte[iT0], 0, iT0);
        }
        if (n0(4, iT0, bArr)) {
            return iT0;
        }
        throw new g("Signature verification failed for ".concat(getClass().getName()));
    }

    @Override // ed.c, ad.c
    /* renamed from: getNext */
    public final ad.c h() {
        return this.I;
    }

    @Override // ed.c, ad.c
    public final ad.c h() {
        return this.I;
    }

    public int s0(f fVar, byte b10) {
        return 0;
    }

    @Override // ad.d
    public final d t() {
        return this.I;
    }

    public final int t0(int i10, byte[] bArr) {
        byte b10;
        int i11 = i10 + 1;
        byte b11 = bArr[i10];
        this.f4937k = b11;
        if (b11 != 0) {
            this.G = bArr[i11];
            int iA = rd.a.a(i10 + 3, bArr);
            this.H = iA;
            if (iA == 0) {
                this.G = (byte) -1;
            }
            if (this.f4937k > 2) {
                k0(i10 + 5, bArr);
                if (this.f4927a == -94) {
                }
            }
            i11 += this.f4937k * 2;
        }
        int iA2 = rd.a.a(i11, bArr);
        this.l = iA2;
        int iT0 = i11 + 2;
        if (iA2 != 0) {
            int iI0 = i0(iT0, bArr);
            if (iI0 != this.l) {
                Logger logger = K;
                if (logger.isTraceEnabled()) {
                    StringBuilder sbN = g.b.n("Short read, have ", iI0, ", want ");
                    sbN.append(this.l);
                    logger.trace(sbN.toString());
                }
            }
            iT0 += this.l;
        }
        int i12 = this.f4932f;
        if (i12 != 0 || (b10 = this.G) == -1) {
            this.G = (byte) -1;
            this.I = null;
        } else {
            c cVar = this.I;
            if (cVar == null) {
                this.G = (byte) -1;
                throw new b0("no andx command supplied with response", 10);
            }
            int i13 = this.f4929c;
            int i14 = this.H + i13;
            cVar.f4929c = i13;
            cVar.f4927a = b10;
            cVar.f4932f = i12;
            cVar.f4928b = this.f4928b;
            cVar.f4933g = this.f4933g;
            cVar.f4938m = this.f4938m;
            cVar.f4934h = this.f4934h;
            cVar.f4935i = this.f4935i;
            cVar.f4936j = this.f4936j;
            cVar.f4939n = this.f4939n;
            if (cVar instanceof a) {
                iT0 = ((a) cVar).t0(i14, bArr) + i14;
            } else {
                int iK0 = i14 + 1;
                int i15 = cVar.f4937k;
                bArr[i14] = (byte) (i15 & 255);
                if (i15 != 0 && i15 > 2) {
                    iK0 += cVar.k0(iK0, bArr);
                }
                this.I.l = rd.a.a(iK0, bArr);
                int i16 = iK0 + 2;
                c cVar2 = this.I;
                if (cVar2.l != 0) {
                    cVar2.i0(i16, bArr);
                    i16 += this.I.l;
                }
                iT0 = i16;
            }
            this.I.C();
        }
        return iT0 - i10;
    }

    @Override // ed.c
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(",andxCommand=0x");
        android.support.v4.media.session.a.E(this.G, 2, ",andxOffset=", sb2);
        sb2.append(this.H);
        return new String(sb2.toString());
    }

    public final int u0(int i10, byte[] bArr) {
        int iU0;
        int i11 = i10 + 3;
        int iQ0 = q0(i10 + 5, bArr);
        int i12 = iQ0 + 4;
        int i13 = iQ0 + 5 + i10;
        int i14 = i12 / 2;
        this.f4937k = i14;
        bArr[i10] = (byte) (i14 & 255);
        int iO0 = o0(i13 + 2, bArr);
        this.l = iO0;
        bArr[i13] = (byte) (iO0 & 255);
        bArr[i13 + 1] = (byte) ((iO0 >> 8) & 255);
        int i15 = i13 + 2 + iO0;
        if (this.I != null) {
            f fVar = this.f4946x;
            if (((wc.a) fVar).f17830d && this.f4931e < s0(fVar, r2.f4927a)) {
                this.I.f4931e = this.f4931e + 1;
                bArr[i10 + 1] = this.G;
                bArr[i10 + 2] = 0;
                int i16 = i15 - this.f4929c;
                this.H = i16;
                rd.a.e(i16, bArr, i11);
                c cVar = this.I;
                cVar.f4939n = this.f4939n;
                if (cVar instanceof a) {
                    cVar.f4935i = this.f4935i;
                    iU0 = ((a) cVar).u0(i15, bArr) + i15;
                } else {
                    cVar.f4937k = cVar.q0(i15, bArr);
                    c cVar2 = this.I;
                    int i17 = cVar2.f4937k;
                    int i18 = i17 + 1 + i15;
                    int i19 = i17 / 2;
                    cVar2.f4937k = i19;
                    bArr[i15] = (byte) (i19 & 255);
                    cVar2.l = cVar2.o0(i18 + 2, bArr);
                    int i20 = this.I.l;
                    bArr[i18] = (byte) (i20 & 255);
                    bArr[i18 + 1] = (byte) ((i20 >> 8) & 255);
                    iU0 = i18 + 2 + i20;
                }
                return iU0 - i10;
            }
        }
        this.G = (byte) -1;
        this.I = null;
        bArr[i10 + 1] = -1;
        bArr[i10 + 2] = 0;
        bArr[i11] = -34;
        bArr[i10 + 4] = -34;
        return i15 - i10;
    }

    @Override // ed.c
    /* renamed from: w */
    public final c getNext() {
        return this.I;
    }

    public a(f fVar, c cVar) {
        super(fVar);
        this.G = (byte) -1;
        this.H = 0;
        this.I = cVar;
        if (cVar != null) {
            this.G = cVar.f4927a;
        }
    }

    public a(f fVar, byte b10, c cVar) {
        super(fVar, b10, null);
        this.G = (byte) -1;
        this.H = 0;
        this.I = cVar;
        if (cVar != null) {
            this.G = cVar.f4927a;
        }
    }
}

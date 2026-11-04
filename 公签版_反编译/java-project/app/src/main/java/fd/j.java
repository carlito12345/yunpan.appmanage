package fd;

import java.util.Date;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public final class j extends ed.c implements ad.k {
    public static final Logger R = LoggerFactory.getLogger((Class<?>) j.class);
    public int G;
    public final b H;
    public int I;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public boolean P;

    public j(vc.b bVar) {
        super(bVar.e());
        this.H = new b();
        this.O = ((wc.a) bVar.e()).f17869y;
        this.I = ((wc.a) bVar.e()).f17867x;
        this.K = ((wc.a) bVar.e()).G;
        this.L = ((wc.a) bVar.e()).H;
        this.M = ((wc.a) bVar.e()).I;
        this.N = ((wc.a) bVar.e()).f17841i0;
        this.P = ((wc.a) bVar.e()).f17832e;
    }

    @Override // ad.k
    public final int H() {
        return this.M;
    }

    @Override // ad.k
    public final boolean J(vc.b bVar) {
        return this.f4946x.equals(bVar.e());
    }

    @Override // ad.k
    public final void K(he.d dVar) {
        if (dVar instanceof ed.c) {
            ((ed.c) dVar).f4939n = this.P;
        }
    }

    @Override // ad.k
    public final int N() {
        return this.N;
    }

    @Override // ad.k
    public final boolean Q() {
        return this.H.f5785j;
    }

    @Override // ad.k
    public final boolean b0() {
        return !((wc.a) this.f4946x).M && x(4096);
    }

    @Override // ad.k
    public final boolean d0() {
        b bVar = this.H;
        return bVar.f5784i || bVar.f5785j;
    }

    @Override // ad.k
    public final boolean f0(vc.b bVar, ad.j jVar) {
        if (this.G > 10) {
            return false;
        }
        b bVar2 = this.H;
        int i10 = bVar2.f5779d & Integer.MIN_VALUE;
        Logger logger = R;
        if (i10 != Integer.MIN_VALUE && bVar2.f5789o != 8 && ((wc.a) bVar.e()).r == 0) {
            logger.warn("Unexpected encryption key length: " + bVar2.f5789o);
            return false;
        }
        if (jVar.d() || bVar2.f5785j || (bVar2.f5784i && ((wc.a) bVar.e()).f17836g)) {
            this.I |= 4;
            if (jVar.d() || bVar2.f5785j) {
                this.I |= 16;
            }
        } else {
            this.I &= 65515;
        }
        if (logger.isDebugEnabled()) {
            StringBuilder sb2 = new StringBuilder("Signing ");
            sb2.append((this.I & 4) != 0 ? "enabled " : "not-enabled ");
            sb2.append((this.I & 16) != 0 ? "required" : "not-required");
            logger.debug(sb2.toString());
        }
        int iMin = Math.min(this.K, bVar2.f5776a);
        this.K = iMin;
        if (iMin < 1) {
            this.K = 1;
        }
        this.L = Math.min(this.L, bVar2.f5777b);
        this.M = Math.min(this.M, bVar2.f5777b);
        this.N = Math.min(this.N, bVar2.f5777b);
        int i11 = this.O;
        int i12 = bVar2.f5779d;
        int i13 = i11 & i12;
        this.O = i13;
        if ((i12 & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.O = i13 | Integer.MIN_VALUE;
        }
        if (((wc.a) bVar.e()).f17832e || ((wc.a) bVar.e()).f17834f) {
            this.O |= 4;
        }
        if ((this.O & 4) != 0) {
            this.P = ((wc.a) bVar.e()).f17832e;
        } else if (((wc.a) bVar.e()).f17834f) {
            this.O |= 4;
            this.P = true;
        } else {
            this.P = false;
            this.I &= 32767;
        }
        if (this.P) {
            logger.debug("Unicode is enabled");
        } else {
            logger.debug("Unicode is disabled");
        }
        return true;
    }

    @Override // ed.c
    public final int i0(int i10, byte[] bArr) {
        int i11;
        int iA;
        b bVar = this.H;
        if ((bVar.f5779d & Integer.MIN_VALUE) == 0) {
            int i12 = bVar.f5789o;
            byte[] bArr2 = new byte[i12];
            bVar.f5790p = bArr2;
            System.arraycopy(bArr, i10, bArr2, 0, i12);
            int i13 = bVar.f5789o;
            i11 = i10 + i13;
            if (this.l > i13) {
                if ((this.I & 32768) == 32768) {
                    iA = ge.b.b(i11, 256, bArr);
                    bVar.f5780e = new String(bArr, i11, iA, ge.b.f6136b);
                } else {
                    iA = ge.b.a(i11, 256, bArr);
                    bVar.f5780e = ge.b.c(bArr, i11, iA, this.f4946x);
                }
                i11 += iA;
            } else {
                bVar.f5780e = new String();
            }
        } else {
            byte[] bArr3 = new byte[16];
            bVar.f5791q = bArr3;
            System.arraycopy(bArr, i10, bArr3, 0, 16);
            int length = bVar.f5791q.length + i10;
            bVar.f5780e = new String();
            int i14 = this.l;
            if (i14 > 16) {
                int i15 = i14 - 16;
                bVar.f5789o = i15;
                byte[] bArr4 = new byte[i15];
                bVar.f5790p = bArr4;
                System.arraycopy(bArr, length, bArr4, 0, i15);
                Logger logger = R;
                if (logger.isDebugEnabled()) {
                    logger.debug("Have initial token ".concat(ge.a.m(bVar.f5790p, 0, bVar.f5789o)));
                }
            }
            i11 = length;
        }
        return i11 - i10;
    }

    @Override // ed.c
    public final int k0(int i10, byte[] bArr) {
        int iA = rd.a.a(i10, bArr);
        this.G = iA;
        int i11 = i10 + 2;
        if (iA > 10) {
            return i11 - i10;
        }
        int i12 = i10 + 3;
        byte b10 = bArr[i11];
        b bVar = this.H;
        bVar.f5781f = b10 & 255;
        bVar.f5782g = b10 & 1;
        bVar.f5783h = (b10 & 2) == 2;
        bVar.f5784i = (b10 & 4) == 4;
        bVar.f5785j = (b10 & 8) == 8;
        bVar.f5776a = rd.a.a(i12, bArr);
        bVar.f5786k = rd.a.a(i10 + 5, bArr);
        bVar.f5777b = rd.a.b(i10 + 7, bArr);
        bVar.l = rd.a.b(i10 + 11, bArr);
        bVar.f5778c = rd.a.b(i10 + 15, bArr);
        bVar.f5779d = rd.a.b(i10 + 19, bArr);
        bVar.f5787m = rd.a.d(i10 + 23, bArr);
        int iA2 = rd.a.a(i10 + 31, bArr);
        if (iA2 > 32767) {
            iA2 = (65536 - iA2) * (-1);
        }
        bVar.f5788n = iA2;
        bVar.f5789o = bArr[i10 + 33] & 255;
        return (i10 + 34) - i10;
    }

    @Override // ad.k
    public final boolean m() {
        return (this.I & 4) == 4;
    }

    @Override // ad.k
    public final vc.i n() {
        return vc.i.f16786c;
    }

    @Override // ad.k
    public final int o() {
        return this.L;
    }

    @Override // ed.c
    public final int o0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final int q0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // ed.c
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("SmbComNegotiateResponse[");
        sb2.append(super.toString());
        sb2.append(",wordCount=");
        sb2.append(this.f4937k);
        sb2.append(",dialectIndex=");
        sb2.append(this.G);
        sb2.append(",securityMode=0x");
        b bVar = this.H;
        android.support.v4.media.session.a.E(bVar.f5781f, 1, ",security=", sb2);
        sb2.append(bVar.f5782g == 0 ? "share" : "user");
        sb2.append(",encryptedPasswords=");
        sb2.append(bVar.f5783h);
        sb2.append(",maxMpxCount=");
        sb2.append(bVar.f5776a);
        sb2.append(",maxNumberVcs=");
        sb2.append(bVar.f5786k);
        sb2.append(",maxBufferSize=");
        sb2.append(bVar.f5777b);
        sb2.append(",maxRawSize=");
        sb2.append(bVar.l);
        sb2.append(",sessionKey=0x");
        android.support.v4.media.session.a.E(bVar.f5778c, 8, ",capabilities=0x", sb2);
        sb2.append(ge.a.l(bVar.f5779d, 8));
        sb2.append(",serverTime=");
        sb2.append(new Date(bVar.f5787m));
        sb2.append(",serverTimeZone=");
        sb2.append(bVar.f5788n);
        sb2.append(",encryptionKeyLength=");
        sb2.append(bVar.f5789o);
        sb2.append(",byteCount=");
        sb2.append(this.l);
        sb2.append(",oemDomainName=");
        return new String(g.b.l(bVar.f5780e, "]", sb2));
    }

    @Override // ad.k
    public final boolean x(int i10) {
        return (this.O & i10) == i10;
    }

    @Override // ad.k
    public final void z(ad.c cVar) {
        if (cVar instanceof ed.c) {
            ed.c cVar2 = (ed.c) cVar;
            cVar2.f4933g = this.I | cVar2.f4933g;
            boolean z = cVar2.h0() || this.P;
            cVar2.f4939n = z;
            if (z) {
                cVar2.f4933g |= 32768;
            }
            if (cVar2 instanceof gd.a) {
                ((gd.a) cVar2).N0 = this.L;
            }
        }
    }
}

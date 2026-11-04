package od;

import ad.g;
import ad.j;
import ad.k;
import java.util.Date;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.i;

/* loaded from: classes.dex */
public final class f extends id.d implements k {
    public static final Logger S = LoggerFactory.getLogger((Class<?>) f.class);
    public int D;
    public int E;
    public final byte[] F;
    public int G;
    public int H;
    public int I;
    public int K;
    public int L;
    public long M;
    public c[] N;
    public byte[] O;
    public i P;
    public int R;

    public f(vc.f fVar) {
        super(fVar);
        this.F = new byte[16];
        this.R = -1;
    }

    @Override // ad.k
    public final int H() {
        return this.K;
    }

    @Override // ad.k
    public final boolean J(vc.b bVar) {
        return this.f8662h.equals(bVar.e());
    }

    @Override // ad.k
    public final int N() {
        return this.I;
    }

    @Override // ad.k
    public final boolean Q() {
        return (this.D & 2) != 0;
    }

    @Override // ad.k
    public final boolean b0() {
        return !((wc.a) this.f8662h).M && x(1);
    }

    @Override // ad.k
    public final boolean d0() {
        return (this.D & 1) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0155, code lost:
    
        r3.error("Server returned no hash selection");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00f7, code lost:
    
        r3.error("Server returned no cipher selection");
     */
    @Override // ad.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean f0(vc.b bVar, j jVar) {
        if (this.f8675x && this.f8664j == 0) {
            boolean zD = jVar.d();
            Logger logger = S;
            if (zD && !d0()) {
                logger.error("Signing is enforced but server does not allow it");
                return false;
            }
            if (this.E == 767) {
                logger.error("Server returned ANY dialect");
                return false;
            }
            e eVar = (e) jVar;
            i iVar = null;
            for (i iVar2 : i.values()) {
                boolean z = iVar2.f16792a;
                if (z) {
                    if (!z) {
                        throw new UnsupportedOperationException();
                    }
                    if (iVar2.f16793b == this.E) {
                        iVar = iVar2;
                    }
                }
            }
            if (iVar == null) {
                logger.error("Server returned an unknown dialect");
                return false;
            }
            wc.a aVar = (wc.a) this.f8662h;
            if (iVar.a(aVar.f17856q0)) {
                if (iVar.ordinal() <= aVar.f17857r0.ordinal()) {
                    this.P = iVar;
                    int i10 = this.G & eVar.z;
                    this.H = i10;
                    if ((i10 & 64) != 0) {
                        bVar.e().getClass();
                    }
                    int i11 = 1;
                    if (this.P.a(i.f16790g)) {
                        int i12 = this.H;
                        c[] cVarArr = this.N;
                        if (cVarArr == null || cVarArr.length == 0) {
                            logger.error("Response lacks negotiate contexts");
                        } else {
                            int length = cVarArr.length;
                            int i13 = 0;
                            boolean z4 = false;
                            boolean z10 = false;
                            while (true) {
                                if (i13 < length) {
                                    c cVar = cVarArr[i13];
                                    if (cVar != null) {
                                        b[] bVarArr = eVar.C;
                                        if (z10 || cVar.a() != 2) {
                                            if (cVar.a() == 2) {
                                                logger.error("Multiple encryption negotiate contexts");
                                                break;
                                            }
                                            if (z4 || cVar.a() != 1) {
                                                if (cVar.a() == 1) {
                                                    logger.error("Multiple preauth negotiate contexts");
                                                    break;
                                                }
                                            } else {
                                                d dVar = (d) cVar;
                                                int[] iArr = dVar.f11768a;
                                                if (iArr == null || iArr.length != 1) {
                                                    break;
                                                }
                                                d dVar2 = null;
                                                for (b bVar2 : bVarArr) {
                                                    if (bVar2 instanceof d) {
                                                        dVar2 = (d) bVar2;
                                                    }
                                                }
                                                if (dVar2 == null) {
                                                    break;
                                                }
                                                int[] iArr2 = dVar2.f11768a;
                                                boolean z11 = false;
                                                for (int i14 : iArr2) {
                                                    if (i14 == dVar.f11768a[0]) {
                                                        z11 = true;
                                                    }
                                                }
                                                if (!z11) {
                                                    logger.error("Server returned invalid hash selection");
                                                    break;
                                                }
                                                this.R = dVar.f11768a[0];
                                                z4 = true;
                                            }
                                        } else {
                                            a aVar2 = (a) cVar;
                                            int[] iArr3 = aVar2.f11767a;
                                            if (iArr3 == null || iArr3.length != i11) {
                                                break;
                                            }
                                            a aVar3 = null;
                                            for (b bVar3 : bVarArr) {
                                                if (bVar3 instanceof a) {
                                                    aVar3 = (a) bVar3;
                                                }
                                            }
                                            if (aVar3 == null) {
                                                break;
                                            }
                                            boolean z12 = false;
                                            for (int i15 : aVar3.f11767a) {
                                                if (i15 == aVar2.f11767a[0]) {
                                                    z12 = true;
                                                }
                                            }
                                            if (!z12) {
                                                logger.error("Server returned invalid cipher selection");
                                                break;
                                            }
                                            int i16 = aVar2.f11767a[0];
                                            z10 = true;
                                        }
                                    }
                                    i13++;
                                    i11 = 1;
                                } else if (!z4) {
                                    logger.error("Missing preauth negotiate context");
                                } else if (!z10 && (i12 & 64) != 0) {
                                    logger.error("Missing encryption negotiate context");
                                } else if (!z10) {
                                    logger.debug("No encryption support");
                                }
                            }
                        }
                        return false;
                    }
                    int i17 = ((wc.a) bVar.e()).f17841i0;
                    this.K = Math.min(i17 - 80, Math.min(((wc.a) bVar.e()).I, this.K)) & (-8);
                    this.L = Math.min(i17 - 112, Math.min(((wc.a) bVar.e()).H, this.L)) & (-8);
                    this.I = Math.min(i17 - 512, this.I) & (-8);
                    return true;
                }
            }
            logger.error("Server selected an disallowed dialect version " + iVar + " (min: " + aVar.f17856q0 + " max: " + aVar.f17857r0 + ")");
        }
        return false;
    }

    @Override // id.b
    public final int l0(int i10, byte[] bArr) throws g {
        if (rd.a.a(i10, bArr) != 65) {
            throw new g("Structure size is not 65");
        }
        this.D = rd.a.a(i10 + 2, bArr);
        this.E = rd.a.a(i10 + 4, bArr);
        int iA = rd.a.a(i10 + 6, bArr);
        System.arraycopy(bArr, i10 + 8, this.F, 0, 16);
        this.G = rd.a.b(i10 + 24, bArr);
        this.I = rd.a.b(i10 + 28, bArr);
        this.K = rd.a.b(i10 + 32, bArr);
        this.L = rd.a.b(i10 + 36, bArr);
        this.M = rd.a.d(i10 + 40, bArr);
        rd.a.d(i10 + 48, bArr);
        int iA2 = rd.a.a(i10 + 56, bArr);
        int iA3 = rd.a.a(i10 + 58, bArr);
        int iB = rd.a.b(i10 + 60, bArr);
        int i11 = i10 + 64;
        int i12 = this.f8658d;
        int i13 = iA2 + i12;
        if (i13 + iA3 < bArr.length) {
            byte[] bArr2 = new byte[iA3];
            this.O = bArr2;
            System.arraycopy(bArr, i13, bArr2, 0, iA3);
            i11 += iA3;
        }
        int i14 = ((i11 - i12) % 8) + i11;
        if (this.E != 785 || iB == 0 || iA == 0) {
            return i14 - i10;
        }
        int iK0 = this.f8658d + iB;
        c[] cVarArr = new c[iA];
        for (int i15 = 0; i15 < iA; i15++) {
            int iA4 = rd.a.a(iK0, bArr);
            int iA5 = rd.a.a(iK0 + 2, bArr);
            int i16 = iK0 + 8;
            c aVar = iA4 != 1 ? iA4 != 2 ? null : new a() : new d();
            if (aVar != null) {
                aVar.i(i16, iA5, bArr);
                cVarArr[i15] = aVar;
            }
            iK0 = i16 + iA5;
            if (i15 != iA - 1) {
                iK0 = k0(iK0) + iK0;
            }
        }
        this.N = cVarArr;
        return Math.max(i14, iK0) - i10;
    }

    @Override // ad.k
    public final boolean m() {
        return Q();
    }

    @Override // ad.k
    public final i n() {
        return this.P;
    }

    @Override // ad.k
    public final int o() {
        return this.L;
    }

    @Override // id.b
    public final int p0(int i10, byte[] bArr) {
        return 0;
    }

    @Override // id.b
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Smb2NegotiateResponse[");
        sb2.append(super.toString());
        sb2.append(",dialectRevision=");
        sb2.append(this.E);
        sb2.append(",securityMode=0x");
        android.support.v4.media.session.a.E(this.D, 1, ",capabilities=0x", sb2);
        sb2.append(ge.a.l(this.G, 8));
        sb2.append(",serverTime=");
        sb2.append(new Date(this.M));
        return new String(sb2.toString());
    }

    @Override // ad.k
    public final boolean x(int i10) {
        return (this.H & i10) == i10;
    }

    @Override // ad.k
    public final void K(he.d dVar) {
    }

    @Override // ad.k
    public final void z(ad.c cVar) {
    }
}

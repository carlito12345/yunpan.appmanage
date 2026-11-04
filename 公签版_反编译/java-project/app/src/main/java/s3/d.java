package s3;

import java.math.RoundingMode;
import java.util.concurrent.atomic.AtomicInteger;
import l2.j0;
import r1.f0;

/* loaded from: classes.dex */
public final class d implements f {

    /* renamed from: a, reason: collision with root package name */
    public final u1.q f14045a;

    /* renamed from: c, reason: collision with root package name */
    public final String f14047c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14048d;

    /* renamed from: f, reason: collision with root package name */
    public String f14050f;

    /* renamed from: g, reason: collision with root package name */
    public j0 f14051g;

    /* renamed from: i, reason: collision with root package name */
    public int f14053i;

    /* renamed from: j, reason: collision with root package name */
    public int f14054j;

    /* renamed from: k, reason: collision with root package name */
    public long f14055k;
    public r1.p l;

    /* renamed from: m, reason: collision with root package name */
    public int f14056m;

    /* renamed from: n, reason: collision with root package name */
    public int f14057n;

    /* renamed from: h, reason: collision with root package name */
    public int f14052h = 0;

    /* renamed from: q, reason: collision with root package name */
    public long f14060q = -9223372036854775807L;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f14046b = new AtomicInteger();

    /* renamed from: o, reason: collision with root package name */
    public int f14058o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f14059p = -1;

    /* renamed from: e, reason: collision with root package name */
    public final String f14049e = "video/mp2t";

    public d(String str, int i10, int i11) {
        this.f14045a = new u1.q(new byte[i11]);
        this.f14047c = str;
        this.f14048d = i10;
    }

    @Override // s3.f
    public final void a(u1.q qVar) throws f0 {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int iG;
        int iG2;
        int i16;
        int iG3;
        int i17;
        long jM;
        int i18;
        long jM2;
        int i19;
        int i20;
        int i21;
        int i22 = 1;
        this.f14051g.getClass();
        while (qVar.a() > 0) {
            int i23 = this.f14052h;
            u1.q qVar2 = this.f14045a;
            switch (i23) {
                case 0:
                    while (true) {
                        if (qVar.a() <= 0) {
                            break;
                        } else {
                            int i24 = this.f14054j << 8;
                            this.f14054j = i24;
                            int iB = i24 | qVar.B();
                            this.f14054j = iB;
                            int i25 = l2.b.i(iB);
                            this.f14057n = i25;
                            if (i25 != 0) {
                                byte[] bArr = qVar2.f15266a;
                                int i26 = this.f14054j;
                                bArr[0] = (byte) ((i26 >> 24) & 255);
                                bArr[1] = (byte) ((i26 >> 16) & 255);
                                bArr[2] = (byte) ((i26 >> 8) & 255);
                                bArr[3] = (byte) (i26 & 255);
                                this.f14053i = 4;
                                this.f14054j = 0;
                                if (i25 != 3 && i25 != 4) {
                                    if (i25 == 1) {
                                        this.f14052h = 1;
                                        break;
                                    } else {
                                        this.f14052h = 2;
                                        break;
                                    }
                                } else {
                                    this.f14052h = 4;
                                    break;
                                }
                            }
                        }
                    }
                case 1:
                    if (f(qVar, qVar2.f15266a, 18)) {
                        byte[] bArr2 = qVar2.f15266a;
                        if (this.l == null) {
                            String str = this.f14050f;
                            j3.f fVarK = l2.b.k(bArr2);
                            fVarK.o(60);
                            int i27 = l2.b.f10407j[fVarK.g(6)];
                            int i28 = l2.b.f10408k[fVarK.g(4)];
                            int iG4 = fVarK.g(5);
                            if (iG4 >= 29) {
                                i13 = -1;
                                i12 = 2;
                            } else {
                                int i29 = l2.b.l[iG4] * 1000;
                                i12 = 2;
                                i13 = i29 / 2;
                            }
                            fVarK.o(10);
                            int i30 = i27 + (fVarK.g(i12) > 0 ? 1 : 0);
                            r1.o oVar = new r1.o();
                            oVar.f13480a = str;
                            oVar.f13491m = r1.e0.l(this.f14049e);
                            oVar.f13492n = r1.e0.l("audio/vnd.dts");
                            oVar.f13487h = i13;
                            oVar.F = i30;
                            oVar.G = i28;
                            oVar.r = null;
                            oVar.f13483d = this.f14047c;
                            oVar.f13485f = this.f14048d;
                            r1.p pVar = new r1.p(oVar);
                            this.l = pVar;
                            this.f14051g.g(pVar);
                        }
                        this.f14056m = l2.b.g(bArr2);
                        byte b10 = bArr2[0];
                        if (b10 != -2) {
                            i11 = b10 != -1 ? b10 != 31 ? ((bArr2[5] & 252) >> 2) | ((bArr2[4] & 1) << 6) : ((bArr2[6] & 60) >> 2) | ((bArr2[5] & 7) << 4) : ((bArr2[7] & 60) >> 2) | ((bArr2[4] & 7) << 4);
                            i10 = 1;
                        } else {
                            i10 = 1;
                            i11 = ((bArr2[4] & 252) >> 2) | ((bArr2[5] & 1) << 6);
                        }
                        this.f14055k = d.b.h(u1.f0.K(this.l.H, (i11 + i10) * 32));
                        qVar2.O(0);
                        this.f14051g.a(18, qVar2);
                        this.f14052h = 6;
                        break;
                    }
                    break;
                case 2:
                    if (f(qVar, qVar2.f15266a, 7)) {
                        j3.f fVarK2 = l2.b.k(qVar2.f15266a);
                        fVarK2.o(42);
                        this.f14058o = fVarK2.g(fVarK2.f() ? 12 : 8) + 1;
                        this.f14052h = 3;
                        break;
                    }
                    break;
                case 3:
                    if (f(qVar, qVar2.f15266a, this.f14058o)) {
                        j3.f fVarK3 = l2.b.k(qVar2.f15266a);
                        fVarK3.o(40);
                        int iG5 = fVarK3.g(2);
                        if (fVarK3.f()) {
                            i14 = 20;
                            i15 = 12;
                        } else {
                            i14 = 16;
                            i15 = 8;
                        }
                        fVarK3.o(i15);
                        int iG6 = fVarK3.g(i14) + 1;
                        boolean zF = fVarK3.f();
                        if (zF) {
                            iG = fVarK3.g(2);
                            iG2 = (fVarK3.g(3) + 1) * 512;
                            if (fVarK3.f()) {
                                fVarK3.o(36);
                            }
                            int iG7 = fVarK3.g(3) + 1;
                            int iG8 = fVarK3.g(3) + 1;
                            if (iG7 != 1 || iG8 != 1) {
                                throw f0.b("Multiple audio presentations or assets not supported");
                            }
                            int i31 = iG5 + 1;
                            int iG9 = fVarK3.g(i31);
                            for (int i32 = 0; i32 < i31; i32++) {
                                if (((iG9 >> i32) & 1) == 1) {
                                    fVarK3.o(8);
                                }
                            }
                            if (fVarK3.f()) {
                                fVarK3.o(2);
                                int iG10 = (fVarK3.g(2) + 1) << 2;
                                int iG11 = fVarK3.g(2) + 1;
                                for (int i33 = 0; i33 < iG11; i33++) {
                                    fVarK3.o(iG10);
                                }
                            }
                        } else {
                            iG = -1;
                            iG2 = 0;
                        }
                        fVarK3.o(i14);
                        fVarK3.o(12);
                        if (zF) {
                            if (fVarK3.f()) {
                                fVarK3.o(4);
                            }
                            if (fVarK3.f()) {
                                fVarK3.o(24);
                            }
                            if (fVarK3.f()) {
                                i16 = 1;
                                fVarK3.p(fVarK3.g(10) + 1);
                            } else {
                                i16 = 1;
                            }
                            fVarK3.o(5);
                            int i34 = l2.b.f10409m[fVarK3.g(4)];
                            iG3 = fVarK3.g(8) + i16;
                            i17 = i34;
                        } else {
                            i16 = 1;
                            iG3 = -1;
                            i17 = -2147483647;
                        }
                        if (zF) {
                            if (iG == 0) {
                                i18 = 32000;
                            } else if (iG == i16) {
                                i18 = 44100;
                            } else {
                                if (iG != 2) {
                                    throw f0.a(null, "Unsupported reference clock code in DTS HD header: " + iG);
                                }
                                i18 = 48000;
                            }
                            String str2 = u1.f0.f15206a;
                            jM = u1.f0.M(iG2, 1000000L, i18, RoundingMode.DOWN);
                        } else {
                            jM = -9223372036854775807L;
                        }
                        g(new l2.a("audio/vnd.dts.hd;profile=lbr", iG3, i17, iG6, jM));
                        this.f14056m = iG6;
                        if (jM == -9223372036854775807L) {
                            jM = 0;
                        }
                        this.f14055k = jM;
                        qVar2.O(0);
                        this.f14051g.a(this.f14058o, qVar2);
                        this.f14052h = 6;
                        break;
                    }
                    break;
                case 4:
                    if (f(qVar, qVar2.f15266a, 6)) {
                        j3.f fVarK4 = l2.b.k(qVar2.f15266a);
                        fVarK4.o(32);
                        int iR = l2.b.r(fVarK4, l2.b.r) + 1;
                        this.f14059p = iR;
                        int i35 = this.f14053i;
                        if (i35 > iR) {
                            int i36 = i35 - iR;
                            this.f14053i = i35 - i36;
                            qVar.O(qVar.f15267b - i36);
                        }
                        this.f14052h = 5;
                        break;
                    }
                    break;
                case 5:
                    if (f(qVar, qVar2.f15266a, this.f14059p)) {
                        byte[] bArr3 = qVar2.f15266a;
                        AtomicInteger atomicInteger = this.f14046b;
                        j3.f fVarK5 = l2.b.k(bArr3);
                        int i37 = fVarK5.g(32) == 1078008818 ? 1 : 0;
                        int iR2 = l2.b.r(fVarK5, l2.b.f10410n);
                        int i38 = iR2 + 1;
                        if (i37 == 0) {
                            jM2 = -9223372036854775807L;
                            i19 = -2147483647;
                        } else {
                            if (!fVarK5.f()) {
                                throw f0.b("Only supports full channel mask-based audio presentation");
                            }
                            int i39 = iR2 - 1;
                            int i40 = ((bArr3[i39] << 8) & 65535) | (bArr3[iR2] & 255);
                            String str3 = u1.f0.f15206a;
                            int i41 = 65535;
                            for (int i42 = 0; i42 < i39; i42++) {
                                byte b11 = bArr3[i42];
                                int[] iArr = u1.f0.f15213h;
                                int i43 = (((i41 << 4) & 65535) ^ iArr[(((i41 >> 12) & 255) ^ ((b11 & 255) >> 4)) & 255]) & 65535;
                                i41 = (((i43 << 4) & 65535) ^ iArr[((b11 & 15) ^ ((i43 >> 12) & 255)) & 255]) & 65535;
                                i22 = 1;
                            }
                            if (i40 != i41) {
                                throw f0.a(null, "CRC check failed");
                            }
                            int iG12 = fVarK5.g(2);
                            if (iG12 == 0) {
                                i20 = 512;
                            } else if (iG12 == i22) {
                                i20 = 480;
                            } else {
                                if (iG12 != 2) {
                                    throw f0.a(null, "Unsupported base duration index in DTS UHD header: " + iG12);
                                }
                                i20 = 384;
                            }
                            int iG13 = (fVarK5.g(3) + 1) * i20;
                            int iG14 = fVarK5.g(2);
                            if (iG14 == 0) {
                                i21 = 32000;
                            } else if (iG14 == 1) {
                                i21 = 44100;
                            } else {
                                if (iG14 != 2) {
                                    throw f0.a(null, "Unsupported clock rate index in DTS UHD header: " + iG14);
                                }
                                i21 = 48000;
                            }
                            if (fVarK5.f()) {
                                fVarK5.o(36);
                            }
                            int iG15 = i21 * (1 << fVarK5.g(2));
                            jM2 = u1.f0.M(iG13, 1000000L, i21, RoundingMode.DOWN);
                            i19 = iG15;
                        }
                        int iR3 = 0;
                        for (int i44 = 0; i44 < i37; i44++) {
                            iR3 += l2.b.r(fVarK5, l2.b.f10411o);
                        }
                        if (i37 != 0) {
                            atomicInteger.set(l2.b.r(fVarK5, l2.b.f10412p));
                        }
                        int iR4 = iR3 + (atomicInteger.get() != 0 ? l2.b.r(fVarK5, l2.b.f10413q) : 0) + i38;
                        l2.a aVar = new l2.a("audio/vnd.dts.uhd;profile=p2", 2, i19, iR4, jM2);
                        if (this.f14057n == 3) {
                            g(aVar);
                        }
                        this.f14056m = iR4;
                        if (jM2 == -9223372036854775807L) {
                            jM2 = 0;
                        }
                        this.f14055k = jM2;
                        qVar2.O(0);
                        this.f14051g.a(this.f14059p, qVar2);
                        this.f14052h = 6;
                        break;
                    } else {
                        continue;
                    }
                case 6:
                    int iMin = Math.min(qVar.a(), this.f14056m - this.f14053i);
                    this.f14051g.a(iMin, qVar);
                    int i45 = this.f14053i + iMin;
                    this.f14053i = i45;
                    if (i45 == this.f14056m) {
                        a9.o.t(this.f14060q != -9223372036854775807L);
                        this.f14051g.b(this.f14060q, this.f14057n == 4 ? 0 : 1, this.f14056m, 0, null);
                        this.f14060q += this.f14055k;
                        this.f14052h = 0;
                    } else {
                        continue;
                    }
                default:
                    throw new IllegalStateException();
            }
            i22 = 1;
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14052h = 0;
        this.f14053i = 0;
        this.f14054j = 0;
        this.f14060q = -9223372036854775807L;
        this.f14046b.set(0);
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14060q = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14050f = (String) d0Var.f14066f;
        d0Var.n();
        this.f14051g = qVar.z(d0Var.f14064d, 1);
    }

    public final boolean f(u1.q qVar, byte[] bArr, int i10) {
        int iMin = Math.min(qVar.a(), i10 - this.f14053i);
        qVar.l(this.f14053i, iMin, bArr);
        int i11 = this.f14053i + iMin;
        this.f14053i = i11;
        return i11 == i10;
    }

    public final void g(l2.a aVar) {
        int i10;
        int i11 = aVar.f10389b;
        if (i11 == -2147483647 || (i10 = aVar.f10390c) == -1) {
            return;
        }
        r1.p pVar = this.l;
        String str = aVar.f10388a;
        if (pVar != null && i10 == pVar.G && i11 == pVar.H && str.equals(pVar.f13523o)) {
            return;
        }
        r1.p pVar2 = this.l;
        r1.o oVar = pVar2 == null ? new r1.o() : new r1.o(pVar2);
        oVar.f13480a = this.f14050f;
        oVar.f13491m = r1.e0.l(this.f14049e);
        oVar.f13492n = r1.e0.l(str);
        oVar.F = i10;
        oVar.G = i11;
        oVar.f13483d = this.f14047c;
        oVar.f13485f = this.f14048d;
        r1.p pVar3 = new r1.p(oVar);
        this.l = pVar3;
        this.f14051g.g(pVar3);
    }

    @Override // s3.f
    public final void c(boolean z) {
    }
}

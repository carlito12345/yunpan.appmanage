package s3;

import com.hsae.autosdk.core.NoConst;
import l2.j0;
import r1.f0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class s implements f {

    /* renamed from: e, reason: collision with root package name */
    public String f14228e;

    /* renamed from: f, reason: collision with root package name */
    public j0 f14229f;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14232i;

    /* renamed from: k, reason: collision with root package name */
    public int f14234k;
    public int l;

    /* renamed from: n, reason: collision with root package name */
    public int f14236n;

    /* renamed from: o, reason: collision with root package name */
    public int f14237o;

    /* renamed from: s, reason: collision with root package name */
    public int f14240s;

    /* renamed from: u, reason: collision with root package name */
    public boolean f14242u;

    /* renamed from: d, reason: collision with root package name */
    public int f14227d = 0;

    /* renamed from: a, reason: collision with root package name */
    public final u1.q f14224a = new u1.q(new byte[15], 2);

    /* renamed from: b, reason: collision with root package name */
    public final j3.f f14225b = new j3.f();

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14226c = new u1.q();

    /* renamed from: p, reason: collision with root package name */
    public final f3.a f14238p = new f3.a();

    /* renamed from: q, reason: collision with root package name */
    public int f14239q = -2147483647;
    public int r = -1;

    /* renamed from: t, reason: collision with root package name */
    public long f14241t = -1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f14233j = true;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14235m = true;

    /* renamed from: g, reason: collision with root package name */
    public double f14230g = -9.223372036854776E18d;

    /* renamed from: h, reason: collision with root package name */
    public double f14231h = -9.223372036854776E18d;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x03c6  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x042a  */
    @Override // s3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(u1.q qVar) throws f0 {
        long j10;
        int i10;
        int iG;
        int iG2;
        int i11;
        char c7;
        byte[] bArr;
        long j11;
        long j12;
        int iG3;
        int i12 = 4;
        int i13 = 8;
        int i14 = 1;
        this.f14229f.getClass();
        while (qVar.a() > 0) {
            int i15 = this.f14227d;
            if (i15 != 0) {
                f3.a aVar = this.f14238p;
                u1.q qVar2 = this.f14226c;
                if (i15 == i14) {
                    int iA = qVar.a();
                    u1.q qVar3 = this.f14224a;
                    int iMin = Math.min(iA, qVar3.a());
                    qVar.l(qVar3.f15267b, iMin, qVar3.f15266a);
                    qVar3.P(iMin);
                    if (qVar3.a() == 0) {
                        int i16 = qVar3.f15268c;
                        byte[] bArr2 = qVar3.f15266a;
                        j3.f fVar = this.f14225b;
                        fVar.k(i16, bArr2);
                        fVar.d();
                        int iY = com.bumptech.glide.c.Y(fVar, 3, 8, 8);
                        aVar.f5455b = iY;
                        if (iY != -1) {
                            a9.o.k(Math.max(Math.max(2, 8), 32) <= 63);
                            d.b.g(d.b.g(3L, 255L), 4294967296L);
                            if (fVar.b() < 2) {
                                j10 = -1;
                                aVar.f5456c = j10;
                                if (j10 != -1) {
                                    if (j10 > 16) {
                                        throw f0.b("Contains sub-stream with an invalid packet label " + aVar.f5456c);
                                    }
                                    if (j10 == 0) {
                                        int i17 = aVar.f5455b;
                                        if (i17 == 1) {
                                            throw f0.a(null, "Mpegh3daConfig packet with invalid packet label 0");
                                        }
                                        if (i17 == 2) {
                                            throw f0.a(null, "Mpegh3daFrame packet with invalid packet label 0");
                                        }
                                        if (i17 == 17) {
                                            throw f0.a(null, "AudioTruncation packet with invalid packet label 0");
                                        }
                                    }
                                    int iY2 = com.bumptech.glide.c.Y(fVar, 11, 24, 24);
                                    aVar.f5457d = iY2;
                                    boolean z = iY2 != -1;
                                    if (z) {
                                        this.f14236n = 0;
                                        this.f14237o = aVar.f5457d + i16 + this.f14237o;
                                    }
                                    if (z) {
                                        qVar3.O(0);
                                        this.f14229f.a(qVar3.f15268c, qVar3);
                                        qVar3.L(2);
                                        qVar2.L(aVar.f5457d);
                                        this.f14235m = true;
                                        this.f14227d = 2;
                                    } else {
                                        int i18 = qVar3.f15268c;
                                        if (i18 < 15) {
                                            qVar3.N(i18 + 1);
                                            this.f14235m = false;
                                        }
                                    }
                                }
                            } else {
                                long jI = fVar.i(2);
                                if (jI == 3) {
                                    if (fVar.b() >= 8) {
                                        long jI2 = fVar.i(8);
                                        jI += jI2;
                                        if (jI2 == 255) {
                                            if (fVar.b() >= 32) {
                                                jI = fVar.i(32) + jI;
                                            }
                                        }
                                    }
                                    j10 = -1;
                                    aVar.f5456c = j10;
                                    if (j10 != -1) {
                                    }
                                }
                                j10 = jI;
                                aVar.f5456c = j10;
                                if (j10 != -1) {
                                }
                            }
                        }
                    } else {
                        this.f14235m = false;
                    }
                } else {
                    if (i15 != 2) {
                        throw new IllegalStateException();
                    }
                    int i19 = aVar.f5455b;
                    if (i19 == i14 || i19 == 17) {
                        int i20 = qVar.f15267b;
                        int iMin2 = Math.min(qVar.a(), qVar2.a());
                        qVar.l(qVar2.f15267b, iMin2, qVar2.f15266a);
                        qVar2.P(iMin2);
                        qVar.O(i20);
                    }
                    int iMin3 = Math.min(qVar.a(), aVar.f5457d - this.f14236n);
                    this.f14229f.a(iMin3, qVar);
                    int i21 = this.f14236n + iMin3;
                    this.f14236n = i21;
                    if (i21 != aVar.f5457d) {
                        continue;
                    } else {
                        int i22 = aVar.f5455b;
                        if (i22 == i14) {
                            byte[] bArr3 = qVar2.f15266a;
                            j3.f fVar2 = new j3.f(bArr3, bArr3.length);
                            int iG4 = fVar2.g(i13);
                            int iG5 = fVar2.g(5);
                            if (iG5 != 31) {
                                switch (iG5) {
                                    case 0:
                                        iG2 = 96000;
                                        break;
                                    case 1:
                                        iG2 = 88200;
                                        break;
                                    case 2:
                                        iG2 = 64000;
                                        break;
                                    case 3:
                                        iG2 = 48000;
                                        break;
                                    case 4:
                                        iG2 = 44100;
                                        break;
                                    case 5:
                                        iG2 = 32000;
                                        break;
                                    case 6:
                                        iG2 = 24000;
                                        break;
                                    case 7:
                                        iG2 = 22050;
                                        break;
                                    case 8:
                                        iG2 = 16000;
                                        break;
                                    case 9:
                                        iG2 = 12000;
                                        break;
                                    case 10:
                                        iG2 = 11025;
                                        break;
                                    case 11:
                                        iG2 = 8000;
                                        break;
                                    case 12:
                                        iG2 = 7350;
                                        break;
                                    case 13:
                                    case 14:
                                    default:
                                        throw f0.b("Unsupported sampling rate index " + iG5);
                                    case 15:
                                        iG2 = 57600;
                                        break;
                                    case 16:
                                        iG2 = 51200;
                                        break;
                                    case 17:
                                        iG2 = 40000;
                                        break;
                                    case 18:
                                        iG2 = 38400;
                                        break;
                                    case 19:
                                        iG2 = 34150;
                                        break;
                                    case 20:
                                        iG2 = 28800;
                                        break;
                                    case 21:
                                        iG2 = 25600;
                                        break;
                                    case 22:
                                        iG2 = 20000;
                                        break;
                                    case 23:
                                        iG2 = 19200;
                                        break;
                                    case 24:
                                        iG2 = 17075;
                                        break;
                                    case 25:
                                        iG2 = 14400;
                                        break;
                                    case 26:
                                        iG2 = 12800;
                                        break;
                                    case 27:
                                        iG2 = 9600;
                                        break;
                                }
                            } else {
                                iG2 = fVar2.g(24);
                            }
                            int iG6 = fVar2.g(3);
                            if (iG6 == 0) {
                                i11 = 768;
                            } else if (iG6 == i14) {
                                i11 = 1024;
                            } else if (iG6 == 2 || iG6 == 3) {
                                i11 = 2048;
                            } else {
                                if (iG6 != i12) {
                                    throw f0.b("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                i11 = 4096;
                            }
                            if (iG6 == 0 || iG6 == i14) {
                                c7 = 0;
                            } else if (iG6 == 2) {
                                c7 = 2;
                            } else if (iG6 == 3) {
                                c7 = 3;
                            } else {
                                if (iG6 != i12) {
                                    throw f0.b("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                c7 = 1;
                            }
                            fVar2.o(2);
                            com.bumptech.glide.c.i0(fVar2);
                            int iG7 = fVar2.g(5);
                            int i23 = 0;
                            int iY3 = 0;
                            while (true) {
                                int i24 = 16;
                                if (i23 < iG7 + 1) {
                                    int iG8 = fVar2.g(3);
                                    iY3 = com.bumptech.glide.c.Y(fVar2, 5, i13, 16) + i14 + iY3;
                                    if ((iG8 == 0 || iG8 == 2) && fVar2.f()) {
                                        com.bumptech.glide.c.i0(fVar2);
                                    }
                                    i23 += i14;
                                } else {
                                    int iY4 = com.bumptech.glide.c.Y(fVar2, 4, i13, 16) + i14;
                                    fVar2.n();
                                    int i25 = 0;
                                    while (true) {
                                        double d10 = 2.0d;
                                        if (i25 < iY4) {
                                            int iG9 = fVar2.g(2);
                                            if (iG9 == 0) {
                                                fVar2.o(3);
                                                if (fVar2.f()) {
                                                    fVar2.o(13);
                                                }
                                                if (c7 > 0) {
                                                    com.bumptech.glide.c.h0(fVar2);
                                                }
                                            } else if (iG9 == i14) {
                                                fVar2.o(3);
                                                boolean zF = fVar2.f();
                                                if (zF) {
                                                    fVar2.o(13);
                                                }
                                                if (zF) {
                                                    fVar2.n();
                                                }
                                                if (c7 > 0) {
                                                    com.bumptech.glide.c.h0(fVar2);
                                                    iG3 = fVar2.g(2);
                                                } else {
                                                    iG3 = 0;
                                                }
                                                if (iG3 > 0) {
                                                    fVar2.o(6);
                                                    int iG10 = fVar2.g(2);
                                                    fVar2.o(4);
                                                    if (fVar2.f()) {
                                                        fVar2.o(5);
                                                    }
                                                    if (iG3 == 2 || iG3 == 3) {
                                                        fVar2.o(6);
                                                    }
                                                    if (iG10 == 2) {
                                                        fVar2.n();
                                                    }
                                                }
                                                int iFloor = ((int) Math.floor(Math.log(iY3 - 1) / Math.log(2.0d))) + 1;
                                                int iG11 = fVar2.g(2);
                                                if (iG11 > 0 && fVar2.f()) {
                                                    fVar2.o(iFloor);
                                                }
                                                if (fVar2.f()) {
                                                    fVar2.o(iFloor);
                                                }
                                                if (c7 == 0 && iG11 == 0) {
                                                    fVar2.n();
                                                }
                                            } else if (iG9 == 3) {
                                                com.bumptech.glide.c.Y(fVar2, 4, i13, i24);
                                                int iY5 = com.bumptech.glide.c.Y(fVar2, 4, i13, i24);
                                                if (fVar2.f()) {
                                                    com.bumptech.glide.c.Y(fVar2, i13, i24, 0);
                                                }
                                                fVar2.n();
                                                if (iY5 > 0) {
                                                    fVar2.o(iY5 * 8);
                                                }
                                            }
                                            i25++;
                                            i24 = 16;
                                            i13 = 8;
                                            i14 = 1;
                                        } else {
                                            if (fVar2.f()) {
                                                int i26 = 8;
                                                int i27 = 4;
                                                int iY6 = com.bumptech.glide.c.Y(fVar2, 2, 4, 8) + 1;
                                                int i28 = 0;
                                                bArr = null;
                                                while (i28 < iY6) {
                                                    int iY7 = com.bumptech.glide.c.Y(fVar2, i27, i26, 16);
                                                    int iY8 = com.bumptech.glide.c.Y(fVar2, i27, i26, 16);
                                                    if (iY7 == 7) {
                                                        int iG12 = fVar2.g(i27) + 1;
                                                        fVar2.o(i27);
                                                        byte[] bArr4 = new byte[iG12];
                                                        for (int i29 = 0; i29 < iG12; i29++) {
                                                            bArr4[i29] = (byte) fVar2.g(i26);
                                                        }
                                                        bArr = bArr4;
                                                    } else {
                                                        fVar2.o(iY8 * 8);
                                                    }
                                                    i28++;
                                                    i26 = 8;
                                                    i27 = 4;
                                                }
                                            } else {
                                                bArr = null;
                                            }
                                            switch (iG2) {
                                                case 14700:
                                                case 16000:
                                                    d10 = 3.0d;
                                                    double d11 = iG2;
                                                    Double.isNaN(d11);
                                                    int i30 = (int) (d11 * d10);
                                                    double d12 = i11;
                                                    Double.isNaN(d12);
                                                    this.f14239q = i30;
                                                    this.r = (int) (d12 * d10);
                                                    j11 = this.f14241t;
                                                    j12 = aVar.f5456c;
                                                    if (j11 != j12) {
                                                        this.f14241t = j12;
                                                        String strConcat = iG4 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(iG4))) : "mhm1";
                                                        y0 y0VarS = (bArr == null || bArr.length <= 0) ? null : g0.s(u1.f0.f15207b, bArr);
                                                        r1.o oVar = new r1.o();
                                                        oVar.f13480a = this.f14228e;
                                                        oVar.f13491m = r1.e0.l("video/mp2t");
                                                        oVar.f13492n = r1.e0.l("audio/mhm1");
                                                        oVar.G = this.f14239q;
                                                        oVar.f13489j = strConcat;
                                                        oVar.f13495q = y0VarS;
                                                        this.f14229f.g(new r1.p(oVar));
                                                    }
                                                    this.f14242u = true;
                                                    break;
                                                case 22050:
                                                case 24000:
                                                    double d112 = iG2;
                                                    Double.isNaN(d112);
                                                    int i302 = (int) (d112 * d10);
                                                    double d122 = i11;
                                                    Double.isNaN(d122);
                                                    this.f14239q = i302;
                                                    this.r = (int) (d122 * d10);
                                                    j11 = this.f14241t;
                                                    j12 = aVar.f5456c;
                                                    if (j11 != j12) {
                                                    }
                                                    this.f14242u = true;
                                                    break;
                                                case 29400:
                                                case 32000:
                                                case 58800:
                                                case 64000:
                                                    d10 = 1.5d;
                                                    double d1122 = iG2;
                                                    Double.isNaN(d1122);
                                                    int i3022 = (int) (d1122 * d10);
                                                    double d1222 = i11;
                                                    Double.isNaN(d1222);
                                                    this.f14239q = i3022;
                                                    this.r = (int) (d1222 * d10);
                                                    j11 = this.f14241t;
                                                    j12 = aVar.f5456c;
                                                    if (j11 != j12) {
                                                    }
                                                    this.f14242u = true;
                                                    break;
                                                case 44100:
                                                case 48000:
                                                case 88200:
                                                case 96000:
                                                    d10 = 1.0d;
                                                    double d11222 = iG2;
                                                    Double.isNaN(d11222);
                                                    int i30222 = (int) (d11222 * d10);
                                                    double d12222 = i11;
                                                    Double.isNaN(d12222);
                                                    this.f14239q = i30222;
                                                    this.r = (int) (d12222 * d10);
                                                    j11 = this.f14241t;
                                                    j12 = aVar.f5456c;
                                                    if (j11 != j12) {
                                                    }
                                                    this.f14242u = true;
                                                    break;
                                                default:
                                                    throw f0.b("Unsupported sampling rate " + iG2);
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (i22 == 17) {
                            byte[] bArr5 = qVar2.f15266a;
                            j3.f fVar3 = new j3.f(bArr5, bArr5.length);
                            if (fVar3.f()) {
                                fVar3.o(2);
                                iG = fVar3.g(13);
                            } else {
                                iG = 0;
                            }
                            this.f14240s = iG;
                        } else if (i22 == 2) {
                            if (this.f14242u) {
                                this.f14233j = false;
                                i10 = 1;
                            } else {
                                i10 = 0;
                            }
                            double d13 = this.r - this.f14240s;
                            Double.isNaN(d13);
                            double d14 = this.f14239q;
                            Double.isNaN(d14);
                            double d15 = (d13 * 1000000.0d) / d14;
                            long jRound = Math.round(this.f14230g);
                            if (this.f14232i) {
                                this.f14232i = false;
                                this.f14230g = this.f14231h;
                            } else {
                                this.f14230g += d15;
                            }
                            this.f14229f.b(jRound, i10, this.f14237o, 0, null);
                            this.f14242u = false;
                            this.f14240s = 0;
                            this.f14237o = 0;
                        }
                        this.f14227d = 1;
                    }
                }
                i12 = 4;
                i13 = 8;
                i14 = 1;
            } else {
                int i31 = this.f14234k;
                if ((i31 & 2) == 0) {
                    qVar.O(qVar.f15268c);
                } else {
                    if ((i31 & 4) == 0) {
                        while (qVar.a() > 0) {
                            i13 = 8;
                            int i32 = this.l << 8;
                            this.l = i32;
                            int iB = i32 | qVar.B();
                            this.l = iB;
                            if ((iB & NoConst.I24) == 12583333) {
                                qVar.O(qVar.f15267b - 3);
                                this.l = 0;
                            }
                        }
                    } else {
                        i13 = 8;
                    }
                    i14 = 1;
                    this.f14227d = 1;
                    i12 = 4;
                }
                i13 = 8;
                i12 = 4;
                i14 = 1;
            }
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14227d = 0;
        this.l = 0;
        this.f14224a.L(2);
        this.f14236n = 0;
        this.f14237o = 0;
        this.f14239q = -2147483647;
        this.r = -1;
        this.f14240s = 0;
        this.f14241t = -1L;
        this.f14242u = false;
        this.f14232i = false;
        this.f14235m = true;
        this.f14233j = true;
        this.f14230g = -9.223372036854776E18d;
        this.f14231h = -9.223372036854776E18d;
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14234k = i10;
        if (!this.f14233j && (this.f14237o != 0 || !this.f14235m)) {
            this.f14232i = true;
        }
        if (j10 != -9223372036854775807L) {
            if (this.f14232i) {
                this.f14231h = j10;
            } else {
                this.f14230g = j10;
            }
        }
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14228e = (String) d0Var.f14066f;
        d0Var.n();
        this.f14229f = qVar.z(d0Var.f14064d, 1);
    }

    @Override // s3.f
    public final void c(boolean z) {
    }
}

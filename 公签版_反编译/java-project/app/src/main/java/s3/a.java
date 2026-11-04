package s3;

import j$.util.Objects;
import l2.j0;

/* loaded from: classes.dex */
public final class a implements f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13976a;

    /* renamed from: b, reason: collision with root package name */
    public final j3.f f13977b;

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f13978c;

    /* renamed from: d, reason: collision with root package name */
    public final String f13979d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13980e;

    /* renamed from: f, reason: collision with root package name */
    public final String f13981f;

    /* renamed from: g, reason: collision with root package name */
    public String f13982g;

    /* renamed from: h, reason: collision with root package name */
    public j0 f13983h;

    /* renamed from: i, reason: collision with root package name */
    public int f13984i;

    /* renamed from: j, reason: collision with root package name */
    public int f13985j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f13986k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public r1.p f13987m;

    /* renamed from: n, reason: collision with root package name */
    public int f13988n;

    /* renamed from: o, reason: collision with root package name */
    public long f13989o;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public a(String str) {
        this(null, 0, str, 0);
        this.f13976a = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:181:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x03c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03c9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:232:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x03f0  */
    @Override // s3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(u1.q qVar) {
        int i10;
        int iE;
        int i11;
        int i12;
        int i13;
        String str;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        switch (this.f13976a) {
            case 0:
                this.f13983h.getClass();
                while (qVar.a() > 0) {
                    int i25 = this.f13984i;
                    u1.q qVar2 = this.f13978c;
                    if (i25 == 0) {
                        while (true) {
                            if (qVar.a() <= 0) {
                                break;
                            }
                            if (this.f13986k) {
                                int iB = qVar.B();
                                if (iB == 119) {
                                    this.f13986k = false;
                                    this.f13984i = 1;
                                    byte[] bArr = qVar2.f15266a;
                                    bArr[0] = 11;
                                    bArr[1] = 119;
                                    this.f13985j = 2;
                                } else {
                                    this.f13986k = iB == 11;
                                }
                            } else {
                                this.f13986k = qVar.B() == 11;
                            }
                        }
                    } else if (i25 == 1) {
                        byte[] bArr2 = qVar2.f15266a;
                        int iMin = Math.min(qVar.a(), 128 - this.f13985j);
                        qVar.l(this.f13985j, iMin, bArr2);
                        int i26 = this.f13985j + iMin;
                        this.f13985j = i26;
                        if (i26 == 128) {
                            j3.f fVar = this.f13977b;
                            fVar.m(0);
                            int iE2 = fVar.e();
                            fVar.o(40);
                            boolean z = fVar.g(5) > 10;
                            fVar.m(iE2);
                            int[] iArr = l2.b.f10403f;
                            int[] iArr2 = l2.b.f10401d;
                            if (z) {
                                fVar.o(16);
                                int iG = fVar.g(2);
                                char c7 = iG != 0 ? iG != 1 ? iG != 2 ? (char) 65535 : (char) 2 : (char) 1 : (char) 0;
                                fVar.o(3);
                                iE = (fVar.g(11) + 1) * 2;
                                int iG2 = fVar.g(2);
                                if (iG2 == 3) {
                                    i14 = l2.b.f10402e[fVar.g(2)];
                                    i16 = 6;
                                    i15 = 3;
                                } else {
                                    int iG3 = fVar.g(2);
                                    int i27 = l2.b.f10400c[iG3];
                                    i14 = iArr2[iG2];
                                    i15 = iG3;
                                    i16 = i27;
                                }
                                i13 = i16 * 256;
                                int i28 = (iE * i14) / (i16 * 32);
                                int iG4 = fVar.g(3);
                                boolean zF = fVar.f();
                                i12 = iArr[iG4] + (zF ? 1 : 0);
                                fVar.o(10);
                                if (fVar.f()) {
                                    fVar.o(8);
                                }
                                if (iG4 == 0) {
                                    fVar.o(5);
                                    if (fVar.f()) {
                                        fVar.o(8);
                                    }
                                }
                                if (c7 == 1 && fVar.f()) {
                                    fVar.o(16);
                                }
                                if (fVar.f()) {
                                    if (iG4 > 2) {
                                        fVar.o(2);
                                    }
                                    if ((iG4 & 1) == 0 || iG4 <= 2) {
                                        i21 = 6;
                                    } else {
                                        i21 = 6;
                                        fVar.o(6);
                                    }
                                    if ((iG4 & 4) != 0) {
                                        fVar.o(i21);
                                    }
                                    if (zF && fVar.f()) {
                                        fVar.o(5);
                                    }
                                    if (c7 == 0) {
                                        if (fVar.f()) {
                                            i22 = 6;
                                            fVar.o(6);
                                        } else {
                                            i22 = 6;
                                        }
                                        if (iG4 == 0 && fVar.f()) {
                                            fVar.o(i22);
                                        }
                                        if (fVar.f()) {
                                            fVar.o(i22);
                                        }
                                        int iG5 = fVar.g(2);
                                        if (iG5 == 1) {
                                            fVar.o(5);
                                        } else if (iG5 == 2) {
                                            fVar.o(12);
                                        } else {
                                            if (iG5 == 3) {
                                                int iG6 = fVar.g(5);
                                                if (fVar.f()) {
                                                    fVar.o(5);
                                                    if (fVar.f()) {
                                                        i24 = 4;
                                                        fVar.o(4);
                                                    } else {
                                                        i24 = 4;
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        fVar.o(i24);
                                                    }
                                                    if (fVar.f()) {
                                                        if (fVar.f()) {
                                                            fVar.o(i24);
                                                        }
                                                        if (fVar.f()) {
                                                            fVar.o(i24);
                                                        }
                                                    }
                                                }
                                                if (fVar.f()) {
                                                    fVar.o(5);
                                                    if (fVar.f()) {
                                                        fVar.o(7);
                                                        if (fVar.f()) {
                                                            fVar.o(8);
                                                        }
                                                        i23 = 2;
                                                        fVar.o((iG6 + 2) * 8);
                                                        fVar.c();
                                                    }
                                                }
                                            }
                                            if (iG4 < i23) {
                                                if (fVar.f()) {
                                                    fVar.o(14);
                                                }
                                                if (iG4 == 0 && fVar.f()) {
                                                    fVar.o(14);
                                                }
                                            }
                                            if (!fVar.f()) {
                                                i17 = i15;
                                                if (i17 == 0) {
                                                    fVar.o(5);
                                                } else {
                                                    int i29 = 5;
                                                    int i30 = 0;
                                                    while (i30 < i16) {
                                                        if (fVar.f()) {
                                                            fVar.o(i29);
                                                        }
                                                        i30++;
                                                        i29 = 5;
                                                    }
                                                }
                                            }
                                            if (fVar.f()) {
                                            }
                                            if (c7 == 0) {
                                                fVar.n();
                                            }
                                            if (c7 == 2) {
                                                i19 = 6;
                                                if (!fVar.f()) {
                                                    i10 = i28;
                                                }
                                            }
                                        }
                                        i23 = 2;
                                        if (iG4 < i23) {
                                        }
                                        if (!fVar.f()) {
                                        }
                                        if (fVar.f()) {
                                        }
                                        if (c7 == 0) {
                                        }
                                        if (c7 == 2) {
                                        }
                                    }
                                } else {
                                    i17 = i15;
                                    if (fVar.f()) {
                                        fVar.o(5);
                                        if (iG4 == 2) {
                                            fVar.o(4);
                                        }
                                        if (iG4 >= 6) {
                                            fVar.o(2);
                                        }
                                        if (fVar.f()) {
                                            i20 = 8;
                                            fVar.o(8);
                                        } else {
                                            i20 = 8;
                                        }
                                        if (iG4 == 0 && fVar.f()) {
                                            fVar.o(i20);
                                        }
                                        i18 = 3;
                                        if (iG2 < 3) {
                                            fVar.n();
                                        }
                                    } else {
                                        i18 = 3;
                                    }
                                    if (c7 == 0 && i17 != i18) {
                                        fVar.n();
                                    }
                                    if (c7 == 2 && (i17 == i18 || fVar.f())) {
                                        i19 = 6;
                                        fVar.o(6);
                                    } else {
                                        i19 = 6;
                                    }
                                    str = (!fVar.f() && fVar.g(i19) == 1 && fVar.g(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                                    i10 = i28;
                                }
                            } else {
                                fVar.o(32);
                                int iG7 = fVar.g(2);
                                String str2 = iG7 == 3 ? null : "audio/ac3";
                                int iG8 = fVar.g(6);
                                i10 = l2.b.f10404g[iG8 / 2] * 1000;
                                iE = l2.b.e(iG7, iG8);
                                fVar.o(8);
                                int iG9 = fVar.g(3);
                                if ((iG9 & 1) == 0 || iG9 == 1) {
                                    i11 = 2;
                                } else {
                                    i11 = 2;
                                    fVar.o(2);
                                }
                                if ((iG9 & 4) != 0) {
                                    fVar.o(i11);
                                }
                                if (iG9 == i11) {
                                    fVar.o(i11);
                                }
                                int i31 = iG7 < 3 ? iArr2[iG7] : -1;
                                i12 = iArr[iG9] + (fVar.f() ? 1 : 0);
                                i13 = 1536;
                                str = str2;
                                i14 = i31;
                            }
                            r1.p pVar = this.f13987m;
                            if (pVar == null || i12 != pVar.G || i14 != pVar.H || !Objects.equals(str, pVar.f13523o)) {
                                r1.o oVar = new r1.o();
                                oVar.f13480a = this.f13982g;
                                oVar.f13491m = r1.e0.l(this.f13981f);
                                oVar.f13492n = r1.e0.l(str);
                                oVar.F = i12;
                                oVar.G = i14;
                                oVar.f13483d = this.f13979d;
                                oVar.f13485f = this.f13980e;
                                oVar.f13488i = i10;
                                if ("audio/ac3".equals(str)) {
                                    oVar.f13487h = i10;
                                }
                                r1.p pVar2 = new r1.p(oVar);
                                this.f13987m = pVar2;
                                this.f13983h.g(pVar2);
                            }
                            this.f13988n = iE;
                            this.l = (i13 * 1000000) / this.f13987m.H;
                            qVar2.O(0);
                            this.f13983h.a(128, qVar2);
                            this.f13984i = 2;
                        }
                    } else if (i25 == 2) {
                        int iMin2 = Math.min(qVar.a(), this.f13988n - this.f13985j);
                        this.f13983h.a(iMin2, qVar);
                        int i32 = this.f13985j + iMin2;
                        this.f13985j = i32;
                        if (i32 == this.f13988n) {
                            a9.o.t(this.f13989o != -9223372036854775807L);
                            this.f13983h.b(this.f13989o, 1, this.f13988n, 0, null);
                            this.f13989o += this.l;
                            this.f13984i = 0;
                        }
                    }
                }
                break;
            default:
                this.f13983h.getClass();
                while (qVar.a() > 0) {
                    int i33 = this.f13984i;
                    u1.q qVar3 = this.f13978c;
                    if (i33 == 0) {
                        while (qVar.a() > 0) {
                            if (this.f13986k) {
                                int iB2 = qVar.B();
                                this.f13986k = iB2 == 172;
                                if (iB2 == 64 || iB2 == 65) {
                                    boolean z4 = iB2 == 65;
                                    this.f13984i = 1;
                                    byte[] bArr3 = qVar3.f15266a;
                                    bArr3[0] = -84;
                                    bArr3[1] = (byte) (z4 ? 65 : 64);
                                    this.f13985j = 2;
                                }
                            } else {
                                this.f13986k = qVar.B() == 172;
                            }
                        }
                    } else if (i33 == 1) {
                        byte[] bArr4 = qVar3.f15266a;
                        int iMin3 = Math.min(qVar.a(), 16 - this.f13985j);
                        qVar.l(this.f13985j, iMin3, bArr4);
                        int i34 = this.f13985j + iMin3;
                        this.f13985j = i34;
                        if (i34 == 16) {
                            j3.f fVar2 = this.f13977b;
                            fVar2.m(0);
                            androidx.media3.exoplayer.video.k kVarN = l2.b.n(fVar2);
                            r1.p pVar3 = this.f13987m;
                            int i35 = kVarN.f1915a;
                            if (pVar3 == null || 2 != pVar3.G || i35 != pVar3.H || !"audio/ac4".equals(pVar3.f13523o)) {
                                r1.o oVar2 = new r1.o();
                                oVar2.f13480a = this.f13982g;
                                oVar2.f13491m = r1.e0.l(this.f13981f);
                                oVar2.f13492n = r1.e0.l("audio/ac4");
                                oVar2.F = 2;
                                oVar2.G = i35;
                                oVar2.f13483d = this.f13979d;
                                oVar2.f13485f = this.f13980e;
                                r1.p pVar4 = new r1.p(oVar2);
                                this.f13987m = pVar4;
                                this.f13983h.g(pVar4);
                            }
                            this.f13988n = kVarN.f1916b;
                            this.l = (kVarN.f1917c * 1000000) / this.f13987m.H;
                            qVar3.O(0);
                            this.f13983h.a(16, qVar3);
                            this.f13984i = 2;
                        }
                    } else if (i33 == 2) {
                        int iMin4 = Math.min(qVar.a(), this.f13988n - this.f13985j);
                        this.f13983h.a(iMin4, qVar);
                        int i36 = this.f13985j + iMin4;
                        this.f13985j = i36;
                        if (i36 == this.f13988n) {
                            a9.o.t(this.f13989o != -9223372036854775807L);
                            this.f13983h.b(this.f13989o, 1, this.f13988n, 0, null);
                            this.f13989o += this.l;
                            this.f13984i = 0;
                        }
                    }
                }
                break;
        }
    }

    @Override // s3.f
    public final void b() {
        switch (this.f13976a) {
            case 0:
                this.f13984i = 0;
                this.f13985j = 0;
                this.f13986k = false;
                this.f13989o = -9223372036854775807L;
                break;
            default:
                this.f13984i = 0;
                this.f13985j = 0;
                this.f13986k = false;
                this.f13989o = -9223372036854775807L;
                break;
        }
    }

    @Override // s3.f
    public final void c(boolean z) {
        int i10 = this.f13976a;
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        switch (this.f13976a) {
            case 0:
                this.f13989o = j10;
                break;
            default:
                this.f13989o = j10;
                break;
        }
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        switch (this.f13976a) {
            case 0:
                d0Var.m();
                d0Var.n();
                this.f13982g = (String) d0Var.f14066f;
                d0Var.n();
                this.f13983h = qVar.z(d0Var.f14064d, 1);
                break;
            default:
                d0Var.m();
                d0Var.n();
                this.f13982g = (String) d0Var.f14066f;
                d0Var.n();
                this.f13983h = qVar.z(d0Var.f14064d, 1);
                break;
        }
    }

    public a(String str, int i10, String str2, int i11) {
        this.f13976a = i11;
        switch (i11) {
            case 1:
                j3.f fVar = new j3.f(new byte[16], 16);
                this.f13977b = fVar;
                this.f13978c = new u1.q(fVar.f9720b);
                this.f13984i = 0;
                this.f13985j = 0;
                this.f13986k = false;
                this.f13989o = -9223372036854775807L;
                this.f13979d = str;
                this.f13980e = i10;
                this.f13981f = str2;
                break;
            default:
                j3.f fVar2 = new j3.f(new byte[128], 128);
                this.f13977b = fVar2;
                this.f13978c = new u1.q(fVar2.f9720b);
                this.f13984i = 0;
                this.f13989o = -9223372036854775807L;
                this.f13979d = str;
                this.f13980e = i10;
                this.f13981f = str2;
                break;
        }
    }

    private final void f(boolean z) {
    }

    private final void g(boolean z) {
    }
}

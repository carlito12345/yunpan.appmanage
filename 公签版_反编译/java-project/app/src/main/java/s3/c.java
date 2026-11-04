package s3;

import java.util.Arrays;
import java.util.Collections;
import l2.j0;
import r1.f0;

/* loaded from: classes.dex */
public final class c implements f {

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f14021x = {73, 68, 51};

    /* renamed from: a, reason: collision with root package name */
    public final boolean f14022a;

    /* renamed from: d, reason: collision with root package name */
    public final String f14025d;

    /* renamed from: e, reason: collision with root package name */
    public final int f14026e;

    /* renamed from: f, reason: collision with root package name */
    public final String f14027f;

    /* renamed from: g, reason: collision with root package name */
    public String f14028g;

    /* renamed from: h, reason: collision with root package name */
    public j0 f14029h;

    /* renamed from: i, reason: collision with root package name */
    public j0 f14030i;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14033m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f14034n;

    /* renamed from: q, reason: collision with root package name */
    public int f14037q;
    public boolean r;

    /* renamed from: t, reason: collision with root package name */
    public int f14039t;

    /* renamed from: v, reason: collision with root package name */
    public j0 f14041v;

    /* renamed from: w, reason: collision with root package name */
    public long f14042w;

    /* renamed from: b, reason: collision with root package name */
    public final j3.f f14023b = new j3.f(new byte[7], 7);

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14024c = new u1.q(Arrays.copyOf(f14021x, 10));

    /* renamed from: o, reason: collision with root package name */
    public int f14035o = -1;

    /* renamed from: p, reason: collision with root package name */
    public int f14036p = -1;

    /* renamed from: s, reason: collision with root package name */
    public long f14038s = -9223372036854775807L;

    /* renamed from: u, reason: collision with root package name */
    public long f14040u = -9223372036854775807L;

    /* renamed from: j, reason: collision with root package name */
    public int f14031j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f14032k = 0;
    public int l = 256;

    public c(String str, int i10, String str2, boolean z) {
        this.f14022a = z;
        this.f14025d = str;
        this.f14026e = i10;
        this.f14027f = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x030a  */
    @Override // s3.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(u1.q qVar) throws f0 {
        int i10;
        byte b10;
        byte[] bArr;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z = 0;
        int i15 = 7;
        int i16 = 2;
        this.f14029h.getClass();
        String str = u1.f0.f15206a;
        while (qVar.a() > 0) {
            int i17 = this.f14031j;
            j3.f fVar = this.f14023b;
            int i18 = 4;
            u1.q qVar2 = this.f14024c;
            if (i17 == 0) {
                byte[] bArr2 = qVar.f15266a;
                int i19 = qVar.f15267b;
                int i20 = qVar.f15268c;
                int i21 = z;
                while (true) {
                    if (i19 >= i20) {
                        qVar.O(i19);
                        break;
                    }
                    i10 = i19 + 1;
                    b10 = bArr2[i19];
                    int i22 = b10 & 255;
                    if (this.l != 512 || ((65280 | (((byte) i22) & 255)) & 65526) != 65520) {
                        bArr = bArr2;
                        int i23 = this.l;
                        i11 = i23 | i22;
                        if (i11 == 329) {
                            this.l = 768;
                        } else if (i11 == 511) {
                            this.l = 512;
                        } else if (i11 == 836) {
                            this.l = 1024;
                        } else {
                            if (i11 == 1075) {
                                this.f14031j = 2;
                                this.f14032k = 3;
                                this.f14039t = 0;
                                qVar2.O(0);
                                qVar.O(i10);
                                break;
                            }
                            if (i23 != 256) {
                                this.l = 256;
                                bArr2 = bArr;
                                i21 = 0;
                                i16 = 2;
                                i18 = 4;
                            }
                        }
                        i19 = i10;
                        bArr2 = bArr;
                        i21 = 0;
                        i16 = 2;
                        i18 = 4;
                    } else {
                        if (this.f14034n) {
                            break;
                        }
                        int i24 = i19 - 1;
                        qVar.O(i19);
                        byte[] bArr3 = fVar.f9720b;
                        if (qVar.a() >= 1) {
                            qVar.l(i21, 1, bArr3);
                            fVar.m(i18);
                            int iG = fVar.g(1);
                            int i25 = this.f14035o;
                            if (i25 == -1 || iG == i25) {
                                if (this.f14036p != -1) {
                                    byte[] bArr4 = fVar.f9720b;
                                    if (qVar.a() < 1) {
                                        break;
                                    }
                                    qVar.l(i21, 1, bArr4);
                                    fVar.m(i16);
                                    i12 = 4;
                                    if (fVar.g(4) == this.f14036p) {
                                        qVar.O(i10);
                                    }
                                    bArr = bArr2;
                                    int i232 = this.l;
                                    i11 = i232 | i22;
                                    if (i11 == 329) {
                                    }
                                    i19 = i10;
                                    bArr2 = bArr;
                                    i21 = 0;
                                    i16 = 2;
                                    i18 = 4;
                                } else {
                                    i12 = 4;
                                }
                                byte[] bArr5 = fVar.f9720b;
                                if (qVar.a() < i12) {
                                    break;
                                }
                                qVar.l(i21, i12, bArr5);
                                fVar.m(14);
                                int iG2 = fVar.g(13);
                                if (iG2 >= 7) {
                                    byte[] bArr6 = qVar.f15266a;
                                    int i26 = qVar.f15268c;
                                    int i27 = i24 + iG2;
                                    if (i27 < i26) {
                                        byte b11 = bArr6[i27];
                                        bArr = bArr2;
                                        if (b11 != -1) {
                                            if (b11 == 73 && ((i13 = i27 + 1) == i26 || (bArr6[i13] == 68 && ((i14 = i27 + 2) == i26 || bArr6[i14] == 51)))) {
                                                break;
                                            }
                                        } else {
                                            int i28 = i27 + 1;
                                            if (i28 != i26) {
                                                byte b12 = bArr6[i28];
                                                if (((65280 | (b12 & 255)) & 65526) == 65520 && ((b12 & 8) >> 3) == iG) {
                                                    break;
                                                }
                                            } else {
                                                break;
                                            }
                                        }
                                    } else {
                                        break;
                                    }
                                }
                                int i2322 = this.l;
                                i11 = i2322 | i22;
                                if (i11 == 329) {
                                }
                                i19 = i10;
                                bArr2 = bArr;
                                i21 = 0;
                                i16 = 2;
                                i18 = 4;
                            }
                        }
                    }
                }
                this.f14037q = (b10 & 8) >> 3;
                this.f14033m = (b10 & 1) == 0;
                if (this.f14034n) {
                    this.f14031j = 3;
                    this.f14032k = 0;
                } else {
                    this.f14031j = 1;
                    this.f14032k = 0;
                }
                qVar.O(i10);
                z = 0;
                i15 = 7;
                i16 = 2;
            } else if (i17 != 1) {
                if (i17 == i16) {
                    byte[] bArr7 = qVar2.f15266a;
                    int iMin = Math.min(qVar.a(), 10 - this.f14032k);
                    qVar.l(this.f14032k, iMin, bArr7);
                    int i29 = this.f14032k + iMin;
                    this.f14032k = i29;
                    if (i29 == 10) {
                        this.f14030i.a(10, qVar2);
                        qVar2.O(6);
                        j0 j0Var = this.f14030i;
                        int iA = qVar2.A() + 10;
                        this.f14031j = 4;
                        this.f14032k = 10;
                        this.f14041v = j0Var;
                        this.f14042w = 0L;
                        this.f14039t = iA;
                    }
                } else if (i17 == 3) {
                    int i30 = this.f14033m ? 7 : 5;
                    byte[] bArr8 = fVar.f9720b;
                    int iMin2 = Math.min(qVar.a(), i30 - this.f14032k);
                    qVar.l(this.f14032k, iMin2, bArr8);
                    int i31 = this.f14032k + iMin2;
                    this.f14032k = i31;
                    if (i31 == i30) {
                        fVar.m(z ? 1 : 0);
                        if (this.r) {
                            fVar.o(10);
                        } else {
                            int iG3 = fVar.g(i16) + 1;
                            if (iG3 != i16) {
                                u1.a.p("Detected audio object type: " + iG3 + ", but assuming AAC LC.");
                                iG3 = 2;
                            }
                            fVar.o(5);
                            int iG4 = fVar.g(3);
                            int i32 = this.f14036p;
                            byte b13 = (byte) (((iG3 << 3) & 248) | ((i32 >> 1) & i15));
                            byte b14 = (byte) (((iG4 << 3) & 120) | ((i32 << i15) & 128));
                            byte[] bArr9 = new byte[i16];
                            bArr9[z ? 1 : 0] = b13;
                            bArr9[1] = b14;
                            l2.a aVarO = l2.b.o(new j3.f(bArr9, i16), z);
                            r1.o oVar = new r1.o();
                            oVar.f13480a = this.f14028g;
                            oVar.f13491m = r1.e0.l(this.f14027f);
                            oVar.f13492n = r1.e0.l("audio/mp4a-latm");
                            oVar.f13489j = aVarO.f10388a;
                            oVar.F = aVarO.f10390c;
                            oVar.G = aVarO.f10389b;
                            oVar.f13495q = Collections.singletonList(bArr9);
                            oVar.f13483d = this.f14025d;
                            oVar.f13485f = this.f14026e;
                            r1.p pVar = new r1.p(oVar);
                            this.f14038s = 1024000000 / pVar.H;
                            this.f14029h.g(pVar);
                            this.r = true;
                        }
                        fVar.o(4);
                        int iG5 = fVar.g(13);
                        int i33 = iG5 - 7;
                        if (this.f14033m) {
                            i33 = iG5 - 9;
                        }
                        j0 j0Var2 = this.f14029h;
                        long j10 = this.f14038s;
                        this.f14031j = 4;
                        this.f14032k = z ? 1 : 0;
                        this.f14041v = j0Var2;
                        this.f14042w = j10;
                        this.f14039t = i33;
                    }
                } else {
                    if (i17 != 4) {
                        throw new IllegalStateException();
                    }
                    int iMin3 = Math.min(qVar.a(), this.f14039t - this.f14032k);
                    this.f14041v.a(iMin3, qVar);
                    int i34 = this.f14032k + iMin3;
                    this.f14032k = i34;
                    if (i34 == this.f14039t) {
                        a9.o.t(this.f14040u != -9223372036854775807L);
                        this.f14041v.b(this.f14040u, 1, this.f14039t, 0, null);
                        this.f14040u += this.f14042w;
                        this.f14031j = z ? 1 : 0;
                        this.f14032k = z ? 1 : 0;
                        this.l = 256;
                    }
                }
            } else if (qVar.a() != 0) {
                fVar.f9720b[z ? 1 : 0] = qVar.f15266a[qVar.f15267b];
                fVar.m(i16);
                int iG6 = fVar.g(4);
                int i35 = this.f14036p;
                if (i35 == -1 || iG6 == i35) {
                    if (!this.f14034n) {
                        this.f14034n = true;
                        this.f14035o = this.f14037q;
                        this.f14036p = iG6;
                    }
                    this.f14031j = 3;
                    this.f14032k = z ? 1 : 0;
                } else {
                    this.f14034n = z;
                    this.f14031j = z ? 1 : 0;
                    this.f14032k = z ? 1 : 0;
                    this.l = 256;
                }
            }
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14040u = -9223372036854775807L;
        this.f14034n = false;
        this.f14031j = 0;
        this.f14032k = 0;
        this.l = 256;
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.f14040u = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14028g = (String) d0Var.f14066f;
        d0Var.n();
        j0 j0VarZ = qVar.z(d0Var.f14064d, 1);
        this.f14029h = j0VarZ;
        this.f14041v = j0VarZ;
        if (!this.f14022a) {
            this.f14030i = new l2.n();
            return;
        }
        d0Var.m();
        d0Var.n();
        j0 j0VarZ2 = qVar.z(d0Var.f14064d, 5);
        this.f14030i = j0VarZ2;
        r1.o oVar = new r1.o();
        d0Var.n();
        oVar.f13480a = (String) d0Var.f14066f;
        oVar.f13491m = r1.e0.l(this.f14027f);
        oVar.f13492n = r1.e0.l("application/id3");
        j0VarZ2.g(new r1.p(oVar));
    }

    @Override // s3.f
    public final void c(boolean z) {
    }
}

package s3;

import java.util.Collections;
import l2.j0;
import r1.f0;

/* loaded from: classes.dex */
public final class q implements f {

    /* renamed from: a, reason: collision with root package name */
    public final String f14191a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14192b;

    /* renamed from: c, reason: collision with root package name */
    public final u1.q f14193c;

    /* renamed from: d, reason: collision with root package name */
    public final j3.f f14194d;

    /* renamed from: e, reason: collision with root package name */
    public j0 f14195e;

    /* renamed from: f, reason: collision with root package name */
    public String f14196f;

    /* renamed from: g, reason: collision with root package name */
    public r1.p f14197g;

    /* renamed from: h, reason: collision with root package name */
    public int f14198h;

    /* renamed from: i, reason: collision with root package name */
    public int f14199i;

    /* renamed from: j, reason: collision with root package name */
    public int f14200j;

    /* renamed from: k, reason: collision with root package name */
    public int f14201k;
    public long l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f14202m;

    /* renamed from: n, reason: collision with root package name */
    public int f14203n;

    /* renamed from: o, reason: collision with root package name */
    public int f14204o;

    /* renamed from: p, reason: collision with root package name */
    public int f14205p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f14206q;
    public long r;

    /* renamed from: s, reason: collision with root package name */
    public int f14207s;

    /* renamed from: t, reason: collision with root package name */
    public long f14208t;

    /* renamed from: u, reason: collision with root package name */
    public int f14209u;

    /* renamed from: v, reason: collision with root package name */
    public String f14210v;

    public q(String str, int i10) {
        this.f14191a = str;
        this.f14192b = i10;
        u1.q qVar = new u1.q(1024);
        this.f14193c = qVar;
        byte[] bArr = qVar.f15266a;
        this.f14194d = new j3.f(bArr, bArr.length);
        this.l = -9223372036854775807L;
    }

    @Override // s3.f
    public final void a(u1.q qVar) throws f0 {
        int iG;
        boolean zF;
        this.f14195e.getClass();
        while (qVar.a() > 0) {
            int i10 = this.f14198h;
            if (i10 != 0) {
                if (i10 != 1) {
                    u1.q qVar2 = this.f14193c;
                    j3.f fVar = this.f14194d;
                    if (i10 == 2) {
                        int iB = ((this.f14201k & (-225)) << 8) | qVar.B();
                        this.f14200j = iB;
                        if (iB > qVar2.f15266a.length) {
                            qVar2.L(iB);
                            byte[] bArr = qVar2.f15266a;
                            fVar.getClass();
                            fVar.k(bArr.length, bArr);
                        }
                        this.f14199i = 0;
                        this.f14198h = 3;
                    } else {
                        if (i10 != 3) {
                            throw new IllegalStateException();
                        }
                        int iMin = Math.min(qVar.a(), this.f14200j - this.f14199i);
                        qVar.l(this.f14199i, iMin, fVar.f9720b);
                        int i11 = this.f14199i + iMin;
                        this.f14199i = i11;
                        if (i11 == this.f14200j) {
                            fVar.m(0);
                            if (fVar.f()) {
                                if (this.f14202m) {
                                }
                                this.f14198h = 0;
                            } else {
                                this.f14202m = true;
                                int iG2 = fVar.g(1);
                                int iG3 = iG2 == 1 ? fVar.g(1) : 0;
                                this.f14203n = iG3;
                                if (iG3 != 0) {
                                    throw f0.a(null, null);
                                }
                                if (iG2 == 1) {
                                    fVar.g((fVar.g(2) + 1) * 8);
                                }
                                if (!fVar.f()) {
                                    throw f0.a(null, null);
                                }
                                this.f14204o = fVar.g(6);
                                int iG4 = fVar.g(4);
                                int iG5 = fVar.g(3);
                                if (iG4 != 0 || iG5 != 0) {
                                    throw f0.a(null, null);
                                }
                                if (iG2 == 0) {
                                    int iE = fVar.e();
                                    int iB2 = fVar.b();
                                    l2.a aVarO = l2.b.o(fVar, true);
                                    this.f14210v = aVarO.f10388a;
                                    this.f14207s = aVarO.f10389b;
                                    this.f14209u = aVarO.f10390c;
                                    int iB3 = iB2 - fVar.b();
                                    fVar.m(iE);
                                    byte[] bArr2 = new byte[(iB3 + 7) / 8];
                                    fVar.h(iB3, bArr2);
                                    r1.o oVar = new r1.o();
                                    oVar.f13480a = this.f14196f;
                                    oVar.f13491m = r1.e0.l("video/mp2t");
                                    oVar.f13492n = r1.e0.l("audio/mp4a-latm");
                                    oVar.f13489j = this.f14210v;
                                    oVar.F = this.f14209u;
                                    oVar.G = this.f14207s;
                                    oVar.f13495q = Collections.singletonList(bArr2);
                                    oVar.f13483d = this.f14191a;
                                    oVar.f13485f = this.f14192b;
                                    r1.p pVar = new r1.p(oVar);
                                    if (!pVar.equals(this.f14197g)) {
                                        this.f14197g = pVar;
                                        this.f14208t = 1024000000 / pVar.H;
                                        this.f14195e.g(pVar);
                                    }
                                } else {
                                    int iB4 = fVar.b();
                                    l2.a aVarO2 = l2.b.o(fVar, true);
                                    this.f14210v = aVarO2.f10388a;
                                    this.f14207s = aVarO2.f10389b;
                                    this.f14209u = aVarO2.f10390c;
                                    fVar.o(fVar.g((fVar.g(2) + 1) * 8) - (iB4 - fVar.b()));
                                }
                                int iG6 = fVar.g(3);
                                this.f14205p = iG6;
                                if (iG6 == 0) {
                                    fVar.o(8);
                                } else if (iG6 == 1) {
                                    fVar.o(9);
                                } else if (iG6 == 3 || iG6 == 4 || iG6 == 5) {
                                    fVar.o(6);
                                } else {
                                    if (iG6 != 6 && iG6 != 7) {
                                        throw new IllegalStateException();
                                    }
                                    fVar.o(1);
                                }
                                boolean zF2 = fVar.f();
                                this.f14206q = zF2;
                                this.r = 0L;
                                if (zF2) {
                                    if (iG2 == 1) {
                                        this.r = fVar.g((fVar.g(2) + 1) * 8);
                                    } else {
                                        do {
                                            zF = fVar.f();
                                            this.r = (this.r << 8) + fVar.g(8);
                                        } while (zF);
                                    }
                                }
                                if (fVar.f()) {
                                    fVar.o(8);
                                }
                            }
                            if (this.f14203n != 0) {
                                throw f0.a(null, null);
                            }
                            if (this.f14204o != 0) {
                                throw f0.a(null, null);
                            }
                            if (this.f14205p != 0) {
                                throw f0.a(null, null);
                            }
                            int i12 = 0;
                            do {
                                iG = fVar.g(8);
                                i12 += iG;
                            } while (iG == 255);
                            int iE2 = fVar.e();
                            if ((iE2 & 7) == 0) {
                                qVar2.O(iE2 >> 3);
                            } else {
                                fVar.h(i12 * 8, qVar2.f15266a);
                                qVar2.O(0);
                            }
                            this.f14195e.a(i12, qVar2);
                            a9.o.t(this.l != -9223372036854775807L);
                            this.f14195e.b(this.l, 1, i12, 0, null);
                            this.l += this.f14208t;
                            if (this.f14206q) {
                                fVar.o((int) this.r);
                            }
                            this.f14198h = 0;
                        } else {
                            continue;
                        }
                    }
                } else {
                    int iB5 = qVar.B();
                    if ((iB5 & 224) == 224) {
                        this.f14201k = iB5;
                        this.f14198h = 2;
                    } else if (iB5 != 86) {
                        this.f14198h = 0;
                    }
                }
            } else if (qVar.B() == 86) {
                this.f14198h = 1;
            }
        }
    }

    @Override // s3.f
    public final void b() {
        this.f14198h = 0;
        this.l = -9223372036854775807L;
        this.f14202m = false;
    }

    @Override // s3.f
    public final void d(int i10, long j10) {
        this.l = j10;
    }

    @Override // s3.f
    public final void e(l2.q qVar, d0 d0Var) {
        d0Var.m();
        d0Var.n();
        this.f14195e = qVar.z(d0Var.f14064d, 1);
        d0Var.n();
        this.f14196f = (String) d0Var.f14066f;
    }

    @Override // s3.f
    public final void c(boolean z) {
    }
}

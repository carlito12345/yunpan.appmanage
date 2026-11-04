package q2;

import androidx.room.s;
import dd.c;
import f2.u0;
import j$.util.Objects;
import j3.f;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.List;
import kf.d;
import l2.c0;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.t;
import l2.x;
import ph.j;
import r1.d0;
import r1.e0;
import r1.f0;
import u1.q;
import u7.g0;
import u7.y0;
import z2.h;

/* loaded from: classes.dex */
public final class b implements o {

    /* renamed from: e, reason: collision with root package name */
    public u0 f12940e;

    /* renamed from: f, reason: collision with root package name */
    public j0 f12941f;

    /* renamed from: h, reason: collision with root package name */
    public d0 f12943h;

    /* renamed from: i, reason: collision with root package name */
    public t f12944i;

    /* renamed from: j, reason: collision with root package name */
    public int f12945j;

    /* renamed from: k, reason: collision with root package name */
    public int f12946k;
    public a l;

    /* renamed from: m, reason: collision with root package name */
    public int f12947m;

    /* renamed from: n, reason: collision with root package name */
    public long f12948n;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f12936a = new byte[42];

    /* renamed from: b, reason: collision with root package name */
    public final q f12937b = new q(new byte[32768], 0);

    /* renamed from: c, reason: collision with root package name */
    public final boolean f12938c = false;

    /* renamed from: d, reason: collision with root package name */
    public final c f12939d = new c(2, false);

    /* renamed from: g, reason: collision with root package name */
    public int f12942g = 0;

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        u0 u0Var = (u0) qVar;
        this.f12940e = u0Var;
        this.f12941f = u0Var.z(0, 1);
        u0Var.q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [boolean, int] */
    @Override // l2.o
    public final int d(p pVar, c cVar) throws f0, EOFException, InterruptedIOException {
        t tVar;
        c0 sVar;
        s sVar2;
        long j10;
        boolean z;
        long j11;
        boolean zA;
        long J;
        long j12;
        int i10 = 1;
        int i11 = this.f12942g;
        d0 d0Var = null;
        if (i11 == 0) {
            ((l) pVar).f10501f = 0;
            l lVar = (l) pVar;
            long jD = lVar.d();
            d0 d0VarA = new x(0).a(lVar, !this.f12938c ? null : h.f19414c, 0);
            if (d0VarA != null && d0VarA.f13430a.length != 0) {
                d0Var = d0VarA;
            }
            lVar.o((int) (lVar.d() - jD), false);
            this.f12943h = d0Var;
            this.f12942g = 1;
            return 0;
        }
        byte[] bArr = this.f12936a;
        if (i11 == 1) {
            ((l) pVar).c(bArr, 0, bArr.length, false);
            ((l) pVar).f10501f = 0;
            this.f12942g = 2;
            return 0;
        }
        int i12 = 3;
        if (i11 == 2) {
            q qVar = new q(4);
            ((l) pVar).b(qVar.f15266a, 0, 4, false);
            if (qVar.D() != 1716281667) {
                throw f0.a(null, "Failed to read FLAC stream marker.");
            }
            this.f12942g = 3;
            return 0;
        }
        int i13 = 7;
        if (i11 == 3) {
            ?? r22 = 0;
            t tVar2 = this.f12944i;
            boolean z4 = false;
            while (!z4) {
                ((l) pVar).f10501f = r22;
                byte[] bArr2 = new byte[4];
                f fVar = new f(bArr2, 4);
                l lVar2 = (l) pVar;
                lVar2.c(bArr2, r22, 4, r22);
                boolean zF = fVar.f();
                int iG = fVar.g(i13);
                int iG2 = fVar.g(24) + 4;
                if (iG == 0) {
                    byte[] bArr3 = new byte[38];
                    lVar2.b(bArr3, r22, 38, r22);
                    tVar = new t(bArr3, 4);
                } else {
                    if (tVar2 == null) {
                        throw new IllegalArgumentException();
                    }
                    if (iG == i12) {
                        q qVar2 = new q(iG2);
                        lVar2.b(qVar2.f15266a, 0, iG2, false);
                        tVar = new t(tVar2.f10517a, tVar2.f10518b, tVar2.f10519c, tVar2.f10520d, tVar2.f10521e, tVar2.f10523g, tVar2.f10524h, tVar2.f10526j, l2.b.u(qVar2), tVar2.l);
                    } else {
                        d0 d0Var2 = tVar2.l;
                        if (iG == 4) {
                            q qVar3 = new q(iG2);
                            lVar2.b(qVar3.f15266a, 0, iG2, false);
                            qVar3.P(4);
                            d0 d0VarS = l2.b.s(Arrays.asList(l2.b.v(qVar3, false, false).f10503a));
                            if (d0Var2 != null) {
                                d0VarS = d0Var2.b(d0VarS);
                            }
                            tVar = new t(tVar2.f10517a, tVar2.f10518b, tVar2.f10519c, tVar2.f10520d, tVar2.f10521e, tVar2.f10523g, tVar2.f10524h, tVar2.f10526j, tVar2.f10527k, d0VarS);
                        } else if (iG == 6) {
                            q qVar4 = new q(iG2);
                            lVar2.b(qVar4.f15266a, 0, iG2, false);
                            qVar4.P(4);
                            d0 d0Var3 = new d0(g0.r(x2.a.d(qVar4)));
                            if (d0Var2 != null) {
                                d0Var3 = d0Var2.b(d0Var3);
                            }
                            tVar = new t(tVar2.f10517a, tVar2.f10518b, tVar2.f10519c, tVar2.f10520d, tVar2.f10521e, tVar2.f10523g, tVar2.f10524h, tVar2.f10526j, tVar2.f10527k, d0Var3);
                        } else {
                            lVar2.o(iG2, false);
                            String str = u1.f0.f15206a;
                            this.f12944i = tVar2;
                            z4 = zF;
                            r22 = 0;
                            i12 = 3;
                            i13 = 7;
                        }
                    }
                }
                tVar2 = tVar;
                String str2 = u1.f0.f15206a;
                this.f12944i = tVar2;
                z4 = zF;
                r22 = 0;
                i12 = 3;
                i13 = 7;
            }
            this.f12944i.getClass();
            this.f12945j = Math.max(this.f12944i.f10519c, 6);
            r1.p pVarC = this.f12944i.c(bArr, this.f12943h);
            j0 j0Var = this.f12941f;
            r1.o oVar = new r1.o(pVarC);
            oVar.f13491m = e0.l("audio/flac");
            j0Var.g(new r1.p(oVar));
            this.f12941f.d(this.f12944i.b());
            this.f12942g = 4;
            return 0;
        }
        long j13 = 0;
        if (i11 == 4) {
            ((l) pVar).f10501f = 0;
            q qVar5 = new q(2);
            l lVar3 = (l) pVar;
            lVar3.c(qVar5.f15266a, 0, 2, false);
            int I = qVar5.I();
            if ((I >> 2) != 16382) {
                lVar3.f10501f = 0;
                throw f0.a(null, "First frame does not start with sync code.");
            }
            lVar3.f10501f = 0;
            this.f12946k = I;
            u0 u0Var = this.f12940e;
            String str3 = u1.f0.f15206a;
            long j14 = lVar3.f10499d;
            this.f12944i.getClass();
            t tVar3 = this.f12944i;
            d dVar = tVar3.f10527k;
            if (dVar == null || ((long[]) dVar.f10286b).length <= 0) {
                long j15 = lVar3.f10498c;
                if (j15 == -1 || tVar3.f10526j <= 0) {
                    sVar = new l2.s(tVar3.b());
                } else {
                    int i14 = this.f12946k;
                    Objects.requireNonNull(tVar3);
                    j jVar = new j(i10, tVar3);
                    s sVar3 = new s(tVar3, i14);
                    long jB = tVar3.b();
                    int i15 = tVar3.f10519c;
                    int i16 = tVar3.f10520d;
                    if (i16 > 0) {
                        sVar2 = sVar3;
                        j10 = ((i16 + i15) / 2) + 1;
                    } else {
                        sVar2 = sVar3;
                        int i17 = tVar3.f10518b;
                        int i18 = tVar3.f10517a;
                        j10 = (((((i18 != i17 || i18 <= 0) ? 4096L : i18) * tVar3.f10523g) * tVar3.f10524h) / 8) + 64;
                    }
                    a aVar = new a(jVar, sVar2, jB, tVar3.f10526j, j14, j15, j10, Math.max(6, i15));
                    this.l = aVar;
                    sVar = aVar.f12932a;
                }
            } else {
                sVar = new l2.s(0, j14, tVar3);
            }
            u0Var.s(sVar);
            this.f12942g = 5;
            return 0;
        }
        if (i11 != 5) {
            throw new IllegalStateException();
        }
        this.f12941f.getClass();
        this.f12944i.getClass();
        a aVar2 = this.l;
        if (aVar2 != null && aVar2.f12934c != null) {
            return aVar2.b((l) pVar, cVar);
        }
        if (this.f12948n == -1) {
            t tVar4 = this.f12944i;
            ((l) pVar).f10501f = 0;
            l lVar4 = (l) pVar;
            lVar4.k(1, false);
            byte[] bArr4 = new byte[1];
            lVar4.c(bArr4, 0, 1, false);
            boolean z10 = (bArr4[0] & 1) == 1;
            lVar4.k(2, false);
            int i19 = z10 ? 7 : 6;
            q qVar6 = new q(i19);
            byte[] bArr5 = qVar6.f15266a;
            int i20 = 0;
            while (i20 < i19) {
                int iM = lVar4.m(i20, i19 - i20, bArr5);
                if (iM == -1) {
                    break;
                }
                i20 += iM;
            }
            qVar6.N(i20);
            lVar4.f10501f = 0;
            try {
                J = qVar6.J();
                if (!z10) {
                    J *= tVar4.f10518b;
                }
                j12 = tVar4.f10526j;
            } catch (NumberFormatException unused) {
            }
            if (j12 == 0 || J <= j12) {
                j13 = J;
            } else {
                i10 = 0;
            }
            if (i10 == 0) {
                throw f0.a(null, null);
            }
            this.f12948n = j13;
            return 0;
        }
        q qVar7 = this.f12937b;
        int i21 = qVar7.f15268c;
        if (i21 < 32768) {
            int i22 = ((l) pVar).read(qVar7.f15266a, i21, 32768 - i21);
            z = i22 == -1;
            if (!z) {
                qVar7.N(i21 + i22);
            } else if (qVar7.a() == 0) {
                long j16 = this.f12948n * 1000000;
                t tVar5 = this.f12944i;
                String str4 = u1.f0.f15206a;
                this.f12941f.b(j16 / tVar5.f10521e, 1, this.f12947m, 0, null);
                return -1;
            }
        } else {
            z = false;
        }
        int i23 = qVar7.f15267b;
        int i24 = this.f12947m;
        int i25 = this.f12945j;
        if (i24 < i25) {
            qVar7.P(Math.min(i25 - i24, qVar7.a()));
        }
        this.f12944i.getClass();
        int i26 = qVar7.f15267b;
        while (true) {
            int i27 = qVar7.f15268c - 16;
            c cVar2 = this.f12939d;
            if (i26 <= i27) {
                qVar7.O(i26);
                if (l2.b.a(qVar7, this.f12944i, this.f12946k, cVar2)) {
                    qVar7.O(i26);
                    j11 = cVar2.f4591b;
                    break;
                }
                i26++;
            } else {
                if (z) {
                    while (true) {
                        int i28 = qVar7.f15268c;
                        if (i26 > i28 - this.f12945j) {
                            qVar7.O(i28);
                            break;
                        }
                        qVar7.O(i26);
                        try {
                            zA = l2.b.a(qVar7, this.f12944i, this.f12946k, cVar2);
                        } catch (IndexOutOfBoundsException unused2) {
                            zA = false;
                        }
                        if (qVar7.f15267b > qVar7.f15268c) {
                            zA = false;
                        }
                        if (zA) {
                            qVar7.O(i26);
                            j11 = cVar2.f4591b;
                            break;
                        }
                        i26++;
                    }
                } else {
                    qVar7.O(i26);
                }
                j11 = -1;
            }
        }
        int i29 = qVar7.f15267b - i23;
        qVar7.O(i23);
        this.f12941f.a(i29, qVar7);
        int i30 = this.f12947m + i29;
        this.f12947m = i30;
        if (j11 != -1) {
            long j17 = this.f12948n * 1000000;
            t tVar6 = this.f12944i;
            String str5 = u1.f0.f15206a;
            this.f12941f.b(j17 / tVar6.f10521e, 1, i30, 0, null);
            this.f12947m = 0;
            this.f12948n = j11;
        }
        int length = qVar7.f15266a.length - qVar7.f15268c;
        if (qVar7.a() >= 16 || length >= 16) {
            return 0;
        }
        int iA = qVar7.a();
        byte[] bArr6 = qVar7.f15266a;
        System.arraycopy(bArr6, qVar7.f15267b, bArr6, 0, iA);
        qVar7.O(0);
        qVar7.N(iA);
        return 0;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        if (j10 == 0) {
            this.f12942g = 0;
        } else {
            a aVar = this.l;
            if (aVar != null) {
                aVar.d(j11);
            }
        }
        this.f12948n = j11 != 0 ? -1L : 0L;
        this.f12947m = 0;
        this.f12937b.L(0);
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        l lVar = (l) pVar;
        d0 d0VarA = new x(0).a(lVar, h.f19414c, 0);
        if (d0VarA != null) {
            int length = d0VarA.f13430a.length;
        }
        q qVar = new q(4);
        lVar.c(qVar.f15266a, 0, 4, false);
        return qVar.D() == 1716281667;
    }

    @Override // l2.o
    public final void a() {
    }
}

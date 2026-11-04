package e3;

import a2.u0;
import java.io.EOFException;
import java.math.RoundingMode;
import java.util.List;
import l2.a0;
import l2.j0;
import l2.l;
import l2.n;
import l2.o;
import l2.p;
import l2.v;
import l2.x;
import r1.d0;
import u1.f0;
import u1.q;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class e implements o {

    /* renamed from: v, reason: collision with root package name */
    public static final u0 f4728v = new u0(18);

    /* renamed from: f, reason: collision with root package name */
    public final n f4734f;

    /* renamed from: g, reason: collision with root package name */
    public f2.u0 f4735g;

    /* renamed from: h, reason: collision with root package name */
    public j0 f4736h;

    /* renamed from: i, reason: collision with root package name */
    public j0 f4737i;

    /* renamed from: j, reason: collision with root package name */
    public int f4738j;

    /* renamed from: k, reason: collision with root package name */
    public d0 f4739k;
    public d0 l;

    /* renamed from: n, reason: collision with root package name */
    public long f4741n;

    /* renamed from: o, reason: collision with root package name */
    public long f4742o;

    /* renamed from: p, reason: collision with root package name */
    public long f4743p;

    /* renamed from: q, reason: collision with root package name */
    public int f4744q;
    public i r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f4745s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f4746t;

    /* renamed from: u, reason: collision with root package name */
    public long f4747u;

    /* renamed from: a, reason: collision with root package name */
    public final int f4729a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final q f4730b = new q(10);

    /* renamed from: c, reason: collision with root package name */
    public final a0 f4731c = new a0();

    /* renamed from: d, reason: collision with root package name */
    public final v f4732d = new v();

    /* renamed from: m, reason: collision with root package name */
    public long f4740m = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public final x f4733e = new x(0);

    public e() {
        n nVar = new n();
        this.f4734f = nVar;
        this.f4737i = nVar;
        this.f4743p = -1L;
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        f2.u0 u0Var = (f2.u0) qVar;
        this.f4735g = u0Var;
        j0 j0VarZ = u0Var.z(0, 1);
        this.f4736h = j0VarZ;
        this.f4737i = j0VarZ;
        this.f4735g.q();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0369  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x038f A[LOOP:0: B:160:0x038d->B:161:0x038f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x04e6  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0500  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x05cc  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0092 A[PHI: r1 r3 r7 r8
  0x0092: PHI (r1v12 l2.a0) = (r1v10 l2.a0), (r1v10 l2.a0), (r1v10 l2.a0), (r1v27 l2.a0) binds: [B:139:0x02f7, B:146:0x0309, B:121:0x0285, B:35:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r3v15 l2.l) = (r3v13 l2.l), (r3v13 l2.l), (r3v13 l2.l), (r3v17 l2.l) binds: [B:139:0x02f7, B:146:0x0309, B:121:0x0285, B:35:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r7v24 e3.e) = (r7v10 e3.e), (r7v10 e3.e), (r7v10 e3.e), (r7v29 e3.e) binds: [B:139:0x02f7, B:146:0x0309, B:121:0x0285, B:35:0x008b] A[DONT_GENERATE, DONT_INLINE]
  0x0092: PHI (r8v47 l2.v) = (r8v23 l2.v), (r8v23 l2.v), (r8v23 l2.v), (r8v49 l2.v) binds: [B:139:0x02f7, B:146:0x0309, B:121:0x0285, B:35:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) {
        e eVar;
        a0 a0Var;
        int i10;
        int i11;
        p pVar2;
        int iE;
        int i12;
        int i13;
        l lVar;
        long[] jArr;
        q qVar;
        int i14;
        int i15;
        g gVar;
        v vVar;
        long j10;
        long jK;
        int i16;
        i aVar;
        long j11;
        long jK2;
        int i17;
        d0 d0Var;
        long position;
        z2.l lVar2;
        int length;
        int i18;
        v vVar2;
        i cVar2;
        boolean z;
        i iVarH;
        d0 d0VarB;
        v vVar3;
        l lVar3;
        long jMax;
        int iB;
        this.f4736h.getClass();
        String str = f0.f15206a;
        int i19 = this.f4738j;
        a0 a0Var2 = this.f4731c;
        if (i19 == 0) {
            try {
                k((l) pVar, false);
                if (this.r != null) {
                    q qVar2 = new q(a0Var2.f10392b);
                    l lVar4 = (l) pVar;
                    lVar4.a(0, a0Var2.f10392b, qVar2.f15266a);
                    if ((a0Var2.f10391a & 1) != 0) {
                        i13 = a0Var2.f10394d != 1 ? 36 : 21;
                        if (qVar2.f15268c < i13 + 4) {
                            qVar2.O(i13);
                            int iO = qVar2.o();
                            if (iO != 1483304551 && iO != 1231971951) {
                                if (qVar2.f15268c >= 40) {
                                    qVar2.O(36);
                                    iO = qVar2.o() == 1447187017 ? 1447187017 : 0;
                                }
                            }
                            v vVar4 = this.f4732d;
                            if (iO == 1231971951) {
                                lVar = lVar4;
                                a0Var = a0Var2;
                                int iO2 = qVar2.o();
                                int iF = (iO2 & 1) != 0 ? qVar2.F() : -1;
                                long jD = (iO2 & 2) != 0 ? qVar2.D() : -1L;
                                if ((iO2 & 4) == 4) {
                                    long[] jArr2 = new long[100];
                                    for (int i20 = 0; i20 < 100; i20++) {
                                        jArr2[i20] = qVar2.B();
                                    }
                                    jArr = jArr2;
                                } else {
                                    jArr = null;
                                }
                                if ((iO2 & 8) != 0) {
                                    qVar = qVar2;
                                    qVar.P(4);
                                } else {
                                    qVar = qVar2;
                                }
                                if (qVar.a() >= 24) {
                                    qVar.P(11);
                                    float fN = qVar.n();
                                    int I = qVar.I();
                                    int I2 = qVar.I();
                                    f fVarA = f.a(I);
                                    f fVarA2 = f.a(I2);
                                    if (fN <= 0.0f && fVarA == null && fVarA2 == null) {
                                        i17 = 2;
                                        gVar = null;
                                    } else {
                                        gVar = new g(fN, fVarA, fVarA2);
                                        i17 = 2;
                                    }
                                    qVar.P(i17);
                                    int iE2 = qVar.E();
                                    i15 = (16773120 & iE2) >> 12;
                                    i14 = iE2 & 4095;
                                } else {
                                    i14 = -1;
                                    i15 = -1;
                                    gVar = null;
                                }
                                long j12 = iF;
                                a0 a0Var3 = new a0(a0Var);
                                if (vVar4.a() || i15 == -1 || i14 == -1) {
                                    vVar = vVar4;
                                } else {
                                    vVar = vVar4;
                                    vVar.f10530a = i15;
                                    vVar.f10531b = i14;
                                }
                                eVar = this;
                                eVar.l = gVar != null ? new d0(gVar) : null;
                                long position2 = lVar.getPosition();
                                lVar.i(a0Var.f10392b);
                                if (iO == 1483304551) {
                                    long length2 = lVar.getLength();
                                    if (j12 == -1 || j12 == 0) {
                                        j11 = -9223372036854775807L;
                                        jK2 = -9223372036854775807L;
                                    } else {
                                        jK2 = f0.K(a0Var3.f10393c, (j12 * a0Var3.f10396f) - 1);
                                        j11 = -9223372036854775807L;
                                    }
                                    if (jK2 == j11) {
                                        aVar = null;
                                    } else {
                                        if (jD != -1 && length2 != -1 && position2 + jD != length2) {
                                            long j13 = length2 - position2;
                                            StringBuilder sbW = android.support.v4.media.session.a.w(j13, "Data size mismatch between stream (", ") and Xing frame (");
                                            sbW.append(jD);
                                            sbW.append("), using smaller value.");
                                            u1.a.j(sbW.toString());
                                            jD = Math.min(jD, j13);
                                        }
                                        aVar = new k(position2, a0Var3.f10392b, jK2, a0Var3.f10395e, jD, jArr);
                                    }
                                    d0Var = eVar.f4739k;
                                    position = lVar.getPosition();
                                    if (d0Var == null || (lVar2 = (z2.l) d0Var.c(z2.l.class, t7.k.f14831a)) == null) {
                                        vVar2 = vVar;
                                        cVar2 = null;
                                    } else {
                                        z2.n nVar = (z2.n) d0Var.c(z2.n.class, new d(0));
                                        long jG = nVar != null ? -9223372036854775807L : f0.G(Long.parseLong((String) nVar.f19429c.get(0)));
                                        int[] iArr = lVar2.f19424e;
                                        length = iArr.length;
                                        int i21 = length + 1;
                                        long[] jArr3 = new long[i21];
                                        long[] jArr4 = new long[i21];
                                        jArr3[0] = position;
                                        jArr4[0] = 0;
                                        i18 = 1;
                                        long j14 = 0;
                                        while (i18 <= length) {
                                            int i22 = i18 - 1;
                                            position += lVar2.f19422c + iArr[i22];
                                            j14 += lVar2.f19423d + lVar2.f19425f[i22];
                                            jArr3[i18] = position;
                                            jArr4[i18] = j14;
                                            i18++;
                                            length = length;
                                            iArr = iArr;
                                            vVar = vVar;
                                        }
                                        vVar2 = vVar;
                                        cVar2 = new c(jG, jArr3, jArr4);
                                    }
                                    z = eVar.f4745s;
                                    int i23 = eVar.f4729a;
                                    if (z) {
                                        i bVar = cVar2 != null ? cVar2 : aVar != null ? aVar : null;
                                        if (bVar == null) {
                                            bVar = eVar.h(lVar, (i23 & 2) != 0);
                                        }
                                        if ((4 & i23) != 0 && !bVar.c()) {
                                            bVar = new b(bVar.h(), lVar.getPosition(), bVar.a());
                                        }
                                        if (!bVar.c() && !(bVar instanceof a) && (i23 & 1) != 0 && bVar.h() != -9223372036854775807L && (bVar.a() != -1 || lVar.getLength() != -1)) {
                                            long jB = bVar.b() != -1 ? bVar.b() : 0L;
                                            long jA = bVar.a() != -1 ? bVar.a() : lVar.getLength();
                                            iVarH = new a(jA, jB, d.b.i0(f0.M(jA - jB, 8000000L, bVar.h(), RoundingMode.HALF_UP)), -1, false, true);
                                        } else if (bVar.c() || (bVar instanceof a) || (i23 & 1) == 0) {
                                            iVarH = bVar;
                                        } else {
                                            iVarH = eVar.h(lVar, (2 & i23) != 0);
                                        }
                                        eVar.f4736h.d(iVarH.h());
                                    } else {
                                        iVarH = new h();
                                    }
                                    eVar.r = iVarH;
                                    eVar.f4735g.s(iVarH);
                                    d0VarB = eVar.f4739k;
                                    if (d0VarB == null && (i23 & 8) == 0) {
                                        d0 d0Var2 = eVar.l;
                                        if (d0Var2 != null) {
                                            d0VarB = d0VarB.b(d0Var2);
                                        }
                                    } else {
                                        d0VarB = eVar.l;
                                    }
                                    r1.o oVar = new r1.o();
                                    oVar.b("audio/mpeg");
                                    oVar.c((String) a0Var.f10397g);
                                    oVar.f13493o = 4096;
                                    oVar.F = a0Var.f10394d;
                                    oVar.G = a0Var.f10393c;
                                    v vVar5 = vVar2;
                                    oVar.I = vVar5.f10530a;
                                    oVar.J = vVar5.f10531b;
                                    oVar.f13490k = d0VarB;
                                    if (eVar.r.g() != -2147483647) {
                                        oVar.f13487h = eVar.r.g();
                                    }
                                    eVar.f4737i.g(oVar.a());
                                    eVar.f4742o = lVar.getPosition();
                                } else {
                                    long length3 = lVar.getLength();
                                    if (j12 == -1 || j12 == 0) {
                                        j10 = -9223372036854775807L;
                                        jK = -9223372036854775807L;
                                    } else {
                                        jK = f0.K(a0Var3.f10393c, (a0Var3.f10396f * j12) - 1);
                                        j10 = -9223372036854775807L;
                                    }
                                    if (jK != j10) {
                                        if (jD != -1) {
                                            length3 = position2 + jD;
                                            i16 = a0Var3.f10392b;
                                        } else {
                                            if (length3 != -1) {
                                                jD = length3 - position2;
                                                i16 = a0Var3.f10392b;
                                            }
                                            aVar = null;
                                            d0Var = eVar.f4739k;
                                            position = lVar.getPosition();
                                            if (d0Var == null) {
                                                z2.n nVar2 = (z2.n) d0Var.c(z2.n.class, new d(0));
                                                if (nVar2 != null) {
                                                }
                                                int[] iArr2 = lVar2.f19424e;
                                                length = iArr2.length;
                                                int i212 = length + 1;
                                                long[] jArr32 = new long[i212];
                                                long[] jArr42 = new long[i212];
                                                jArr32[0] = position;
                                                jArr42[0] = 0;
                                                i18 = 1;
                                                long j142 = 0;
                                                while (i18 <= length) {
                                                }
                                                vVar2 = vVar;
                                                cVar2 = new c(jG, jArr32, jArr42);
                                                z = eVar.f4745s;
                                                int i232 = eVar.f4729a;
                                                if (z) {
                                                }
                                                eVar.r = iVarH;
                                                eVar.f4735g.s(iVarH);
                                                d0VarB = eVar.f4739k;
                                                if (d0VarB == null) {
                                                    d0VarB = eVar.l;
                                                    r1.o oVar2 = new r1.o();
                                                    oVar2.b("audio/mpeg");
                                                    oVar2.c((String) a0Var.f10397g);
                                                    oVar2.f13493o = 4096;
                                                    oVar2.F = a0Var.f10394d;
                                                    oVar2.G = a0Var.f10393c;
                                                    v vVar52 = vVar2;
                                                    oVar2.I = vVar52.f10530a;
                                                    oVar2.J = vVar52.f10531b;
                                                    oVar2.f13490k = d0VarB;
                                                    if (eVar.r.g() != -2147483647) {
                                                    }
                                                    eVar.f4737i.g(oVar2.a());
                                                    eVar.f4742o = lVar.getPosition();
                                                }
                                            }
                                        }
                                        long j15 = jD - i16;
                                        long j16 = length3;
                                        RoundingMode roundingMode = RoundingMode.HALF_UP;
                                        aVar = new a(j16, position2 + a0Var3.f10392b, d.b.h(f0.M(j15, 8000000L, jK, roundingMode)), d.b.h(d.b.q(j15, j12, roundingMode)), false, true);
                                        d0Var = eVar.f4739k;
                                        position = lVar.getPosition();
                                        if (d0Var == null) {
                                        }
                                    }
                                }
                            } else if (iO != 1447187017) {
                                if (iO != 1483304551) {
                                    lVar4.h();
                                    eVar = this;
                                    lVar = lVar4;
                                    a0Var = a0Var2;
                                    vVar = vVar4;
                                }
                                aVar = null;
                                d0Var = eVar.f4739k;
                                position = lVar.getPosition();
                                if (d0Var == null) {
                                }
                            } else {
                                long length4 = lVar4.getLength();
                                long position3 = lVar4.getPosition();
                                qVar2.P(6);
                                long j17 = position3 + a0Var2.f10392b;
                                long jO = j17 + qVar2.o();
                                int iO3 = qVar2.o();
                                if (iO3 <= 0) {
                                    lVar3 = lVar4;
                                    a0Var = a0Var2;
                                    vVar3 = vVar4;
                                } else {
                                    vVar3 = vVar4;
                                    long jK3 = f0.K(a0Var2.f10393c, (iO3 * a0Var2.f10396f) - 1);
                                    int I3 = qVar2.I();
                                    int I4 = qVar2.I();
                                    int I5 = qVar2.I();
                                    qVar2.P(2);
                                    long[] jArr5 = new long[I3];
                                    long[] jArr6 = new long[I3];
                                    int i24 = 0;
                                    long j18 = position3 + a0Var2.f10392b;
                                    while (i24 < I3) {
                                        lVar3 = lVar4;
                                        a0 a0Var4 = a0Var2;
                                        jArr5[i24] = (i24 * jK3) / I3;
                                        jArr6[i24] = j18;
                                        if (I5 == 1) {
                                            iB = qVar2.B();
                                        } else if (I5 == 2) {
                                            iB = qVar2.I();
                                        } else if (I5 == 3) {
                                            iB = qVar2.E();
                                        } else if (I5 != 4) {
                                            a0Var = a0Var4;
                                        } else {
                                            iB = qVar2.F();
                                        }
                                        j18 += iB * I4;
                                        i24++;
                                        a0Var2 = a0Var4;
                                        lVar4 = lVar3;
                                    }
                                    lVar3 = lVar4;
                                    a0 a0Var5 = a0Var2;
                                    if (length4 != -1 && length4 != jO) {
                                        StringBuilder sbW2 = android.support.v4.media.session.a.w(length4, "VBRI data size mismatch: ", ", ");
                                        sbW2.append(jO);
                                        u1.a.p(sbW2.toString());
                                    }
                                    if (jO != j18) {
                                        StringBuilder sbW3 = android.support.v4.media.session.a.w(jO, "VBRI bytes and ToC mismatch (using max): ", ", ");
                                        sbW3.append(j18);
                                        sbW3.append("\nSeeking will be inaccurate.");
                                        u1.a.p(sbW3.toString());
                                        jMax = Math.max(jO, j18);
                                    } else {
                                        jMax = jO;
                                    }
                                    a0Var = a0Var5;
                                    aVar = new j(jArr5, jArr6, jK3, j17, jMax, a0Var.f10395e);
                                    lVar = lVar3;
                                    lVar.i(a0Var.f10392b);
                                    eVar = this;
                                    vVar = vVar3;
                                    d0Var = eVar.f4739k;
                                    position = lVar.getPosition();
                                    if (d0Var == null) {
                                    }
                                }
                                aVar = null;
                                lVar = lVar3;
                                lVar.i(a0Var.f10392b);
                                eVar = this;
                                vVar = vVar3;
                                d0Var = eVar.f4739k;
                                position = lVar.getPosition();
                                if (d0Var == null) {
                                }
                            }
                        }
                    } else {
                        if (a0Var2.f10394d == 1) {
                            i13 = 13;
                        }
                        if (qVar2.f15268c < i13 + 4) {
                        }
                    }
                } else {
                    eVar = this;
                    a0Var = a0Var2;
                    if (eVar.f4742o != 0) {
                        pVar2 = pVar;
                        l lVar5 = (l) pVar2;
                        long position4 = lVar5.getPosition();
                        long j19 = eVar.f4742o;
                        if (position4 < j19) {
                            lVar5.i((int) (j19 - position4));
                        }
                    }
                    if (eVar.f4744q == 0) {
                        l lVar6 = (l) pVar2;
                        lVar6.h();
                        if (!eVar.j(lVar6)) {
                            q qVar3 = eVar.f4730b;
                            qVar3.O(0);
                            int iO4 = qVar3.o();
                            if (((-128000) & iO4) != (eVar.f4738j & (-128000)) || l2.b.h(iO4) == -1) {
                                lVar6.i(1);
                                eVar.f4738j = 0;
                                i12 = 0;
                                i11 = i12;
                                i10 = -1;
                            } else {
                                a0Var.a(iO4);
                                if (eVar.f4740m == -9223372036854775807L) {
                                    eVar.f4740m = eVar.r.d(lVar6.getPosition());
                                }
                                eVar.f4744q = a0Var.f10392b;
                                long position5 = lVar6.getPosition() + a0Var.f10392b;
                                eVar.f4743p = position5;
                                i iVar = eVar.r;
                                if (iVar instanceof b) {
                                    b bVar2 = (b) iVar;
                                    long j20 = (((eVar.f4741n + a0Var.f10396f) * 1000000) / a0Var.f10393c) + eVar.f4740m;
                                    if (!bVar2.i(j20)) {
                                        bVar2.f4723d.i(j20, position5);
                                    }
                                    if (eVar.f4746t && bVar2.i(eVar.f4747u)) {
                                        eVar.f4746t = false;
                                        eVar.f4737i = eVar.f4736h;
                                    }
                                }
                                iE = eVar.f4737i.e(pVar2, eVar.f4744q, true);
                                if (iE != -1) {
                                    int i25 = eVar.f4744q - iE;
                                    eVar.f4744q = i25;
                                    if (i25 <= 0) {
                                        eVar.f4737i.b(((eVar.f4741n * 1000000) / a0Var.f10393c) + eVar.f4740m, 1, a0Var.f10392b, 0, null);
                                        eVar.f4741n += a0Var.f10396f;
                                        eVar.f4744q = 0;
                                    }
                                    i12 = 0;
                                    i11 = i12;
                                    i10 = -1;
                                }
                            }
                        }
                        i12 = -1;
                        i11 = i12;
                        i10 = -1;
                    } else {
                        iE = eVar.f4737i.e(pVar2, eVar.f4744q, true);
                        if (iE != -1) {
                        }
                        i12 = -1;
                        i11 = i12;
                        i10 = -1;
                    }
                }
                pVar2 = pVar;
                if (eVar.f4744q == 0) {
                }
            } catch (EOFException unused) {
                eVar = this;
                a0Var = a0Var2;
                i10 = -1;
                i11 = -1;
            }
        } else {
            if (this.r != null) {
            }
            pVar2 = pVar;
            if (eVar.f4744q == 0) {
            }
        }
        if (i11 == i10) {
            i iVar2 = eVar.r;
            if (iVar2 instanceof b) {
                long j21 = ((eVar.f4741n * 1000000) / a0Var.f10393c) + eVar.f4740m;
                if (iVar2.h() != j21) {
                    ((b) eVar.r).f4723d.f10549c = j21;
                    eVar.f4735g.s(eVar.r);
                    eVar.f4736h.d(eVar.r.h());
                }
            }
        }
        return i11;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f4738j = 0;
        this.f4740m = -9223372036854775807L;
        this.f4741n = 0L;
        this.f4744q = 0;
        this.f4743p = -1L;
        this.f4747u = j11;
        i iVar = this.r;
        if (!(iVar instanceof b) || ((b) iVar).i(j11)) {
            return;
        }
        this.f4746t = true;
        this.f4737i = this.f4734f;
    }

    @Override // l2.o
    public final List f() {
        e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        return k((l) pVar, true);
    }

    public final a h(l lVar, boolean z) {
        q qVar = this.f4730b;
        lVar.c(qVar.f15266a, 0, 4, false);
        qVar.O(0);
        int iO = qVar.o();
        a0 a0Var = this.f4731c;
        a0Var.a(iO);
        return new a(lVar.f10498c, lVar.f10499d, a0Var.f10395e, a0Var.f10392b, z, true);
    }

    public final void i() {
        Object obj = this.r;
        if ((obj instanceof a) && ((l2.k) obj).c()) {
            long j10 = this.f4743p;
            if (j10 == -1 || j10 == this.r.a()) {
                return;
            }
            a aVar = (a) this.r;
            this.r = new a(this.f4743p, aVar.f4716i, aVar.f4717j, aVar.f4718k, aVar.l, false);
            f2.u0 u0Var = this.f4735g;
            u0Var.getClass();
            u0Var.s(this.r);
            j0 j0Var = this.f4736h;
            j0Var.getClass();
            j0Var.d(this.r.h());
        }
    }

    public final boolean j(l lVar) {
        i iVar = this.r;
        if (iVar != null) {
            long jA = iVar.a();
            if (jA != -1 && lVar.d() > jA - 4) {
                return true;
            }
        }
        try {
            return !lVar.c(this.f4730b.f15266a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean k(l lVar, boolean z) throws EOFException {
        int i10;
        int iD;
        int iH;
        lVar.f10501f = 0;
        if (lVar.f10499d == 0) {
            d0 d0VarA = this.f4733e.a(lVar, (this.f4729a & 8) == 0 ? null : f4728v, 131072);
            this.f4739k = d0VarA;
            if (d0VarA != null) {
                this.f4732d.c(d0VarA);
            }
            iD = (int) lVar.d();
            if (!z) {
                lVar.o(iD, false);
            }
            i10 = 0;
        } else {
            i10 = 0;
            iD = 0;
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            if (!j(lVar)) {
                q qVar = this.f4730b;
                qVar.O(0);
                int iO = qVar.o();
                if ((i10 == 0 || ((-128000) & iO) == (i10 & (-128000))) && (iH = l2.b.h(iO)) != -1) {
                    i11++;
                    if (i11 != 1) {
                        if (i11 == 4) {
                            break;
                        }
                    } else {
                        this.f4731c.a(iO);
                        i10 = iO;
                    }
                    lVar.k(iH - 4, false);
                } else {
                    int i13 = i12 + 1;
                    if (i12 == 131072) {
                        if (z) {
                            return false;
                        }
                        i();
                        throw new EOFException();
                    }
                    if (z) {
                        lVar.f10501f = 0;
                        lVar.k(iD + i13, false);
                    } else {
                        lVar.o(1, false);
                    }
                    i12 = i13;
                    i10 = 0;
                    i11 = 0;
                }
            } else if (i11 <= 0) {
                i();
                throw new EOFException();
            }
        }
        if (z) {
            lVar.o(iD + i12, false);
        } else {
            lVar.f10501f = 0;
        }
        this.f4738j = i10;
        return true;
    }

    @Override // l2.o
    public final void a() {
    }
}

package r2;

import f2.u0;
import j3.f;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.s;
import l2.y;
import r1.e0;
import r1.f0;
import u1.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements o {

    /* renamed from: f, reason: collision with root package name */
    public u0 f13644f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13646h;

    /* renamed from: i, reason: collision with root package name */
    public long f13647i;

    /* renamed from: j, reason: collision with root package name */
    public int f13648j;

    /* renamed from: k, reason: collision with root package name */
    public int f13649k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public long f13650m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13651n;

    /* renamed from: o, reason: collision with root package name */
    public a f13652o;

    /* renamed from: p, reason: collision with root package name */
    public e f13653p;

    /* renamed from: a, reason: collision with root package name */
    public final q f13639a = new q(4);

    /* renamed from: b, reason: collision with root package name */
    public final q f13640b = new q(9);

    /* renamed from: c, reason: collision with root package name */
    public final q f13641c = new q(11);

    /* renamed from: d, reason: collision with root package name */
    public final q f13642d = new q();

    /* renamed from: e, reason: collision with root package name */
    public final c f13643e = new c();

    /* renamed from: g, reason: collision with root package name */
    public int f13645g = 1;

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f13644f = (u0) qVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x03ab A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03c6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02a8  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02b7  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws f0 {
        long j10;
        long j11;
        int i10;
        boolean z;
        this.f13644f.getClass();
        while (true) {
            int i11 = this.f13645g;
            boolean z4 = true;
            if (i11 == 1) {
                q qVar = this.f13640b;
                if (!((l) pVar).b(qVar.f15266a, 0, 9, true)) {
                    return -1;
                }
                qVar.O(0);
                qVar.P(4);
                int iB = qVar.B();
                boolean z10 = (iB & 4) != 0;
                boolean z11 = (iB & 1) != 0;
                if (z10 && this.f13652o == null) {
                    this.f13652o = new a(this.f13644f.z(8, 1));
                }
                if (z11 && this.f13653p == null) {
                    this.f13653p = new e(this.f13644f.z(9, 2));
                }
                this.f13644f.q();
                this.f13648j = qVar.o() - 5;
                this.f13645g = 2;
            } else if (i11 == 2) {
                ((l) pVar).o(this.f13648j, false);
                this.f13648j = 0;
                this.f13645g = 3;
            } else if (i11 == 3) {
                q qVar2 = this.f13641c;
                if (!((l) pVar).b(qVar2.f15266a, 0, 11, true)) {
                    return -1;
                }
                qVar2.O(0);
                this.f13649k = qVar2.B();
                this.l = qVar2.E();
                this.f13650m = qVar2.E();
                this.f13650m = ((qVar2.B() << 24) | this.f13650m) * 1000;
                qVar2.P(3);
                this.f13645g = 4;
            } else {
                if (i11 != 4) {
                    throw new IllegalStateException();
                }
                boolean z12 = this.f13646h;
                c cVar2 = this.f13643e;
                if (z12) {
                    j10 = this.f13647i + this.f13650m;
                } else if (cVar2.f13654b == -9223372036854775807L) {
                    j11 = 0;
                    i10 = this.f13649k;
                    if (i10 == 8 || this.f13652o == null) {
                        if (i10 != 9 && this.f13653p != null) {
                            if (!this.f13651n) {
                                this.f13644f.s(new s(-9223372036854775807L));
                                this.f13651n = true;
                            }
                            e eVar = this.f13653p;
                            q qVarH = h((l) pVar);
                            eVar.getClass();
                            int iB2 = qVarH.B();
                            int i12 = (iB2 >> 4) & 15;
                            int i13 = iB2 & 15;
                            if (i13 != 7) {
                                throw new d(da.b.a(i13, "Video format not supported: "));
                            }
                            eVar.f13662g = i12;
                            if (i12 != 5) {
                                int iB3 = qVarH.B();
                                qVarH.g(3);
                                byte[] bArr = qVarH.f15266a;
                                int i14 = qVarH.f15267b;
                                int i15 = i14 + 1;
                                qVarH.f15267b = i15;
                                int i16 = ((bArr[i14] & 255) << 24) >> 8;
                                qVarH.f15267b = i14 + 2;
                                int i17 = ((bArr[i15] & 255) << 8) | i16;
                                qVarH.f15267b = i14 + 3;
                                long j12 = (((bArr[r8] & 255) | i17) * 1000) + j11;
                                boolean z13 = true;
                                j0 j0Var = (j0) eVar.f1a;
                                if (iB3 == 0 && !eVar.f13660e) {
                                    byte[] bArr2 = new byte[qVarH.a()];
                                    q qVar3 = new q(bArr2);
                                    qVarH.l(0, qVarH.a(), bArr2);
                                    l2.d dVarA = l2.d.a(qVar3);
                                    eVar.f13659d = dVarA.f10431b;
                                    r1.o oVar = new r1.o();
                                    oVar.f13491m = e0.l("video/x-flv");
                                    oVar.f13492n = e0.l("video/avc");
                                    oVar.f13489j = dVarA.l;
                                    oVar.f13498u = dVarA.f10432c;
                                    oVar.f13499v = dVarA.f10433d;
                                    oVar.A = dVarA.f10440k;
                                    oVar.f13495q = dVarA.f10430a;
                                    j0Var.g(new r1.p(oVar));
                                    eVar.f13660e = true;
                                } else if (iB3 == 1 && eVar.f13660e) {
                                    int i18 = eVar.f13662g == 1 ? 1 : 0;
                                    if (eVar.f13661f || i18 != 0) {
                                        q qVar4 = eVar.f13658c;
                                        byte[] bArr3 = qVar4.f15266a;
                                        bArr3[0] = 0;
                                        bArr3[1] = 0;
                                        bArr3[2] = 0;
                                        int i19 = 4 - eVar.f13659d;
                                        int i20 = 0;
                                        while (qVarH.a() > 0) {
                                            qVarH.l(i19, eVar.f13659d, qVar4.f15266a);
                                            qVar4.O(0);
                                            int iF = qVar4.F();
                                            q qVar5 = eVar.f13657b;
                                            qVar5.O(0);
                                            j0Var.a(4, qVar5);
                                            j0Var.a(iF, qVarH);
                                            i20 = i20 + 4 + iF;
                                        }
                                        ((j0) eVar.f1a).b(j12, i18, i20, 0, null);
                                        eVar.f13661f = true;
                                    }
                                    if (!z13) {
                                        z = true;
                                    }
                                    if (!this.f13646h && z) {
                                        this.f13646h = true;
                                        this.f13647i = cVar2.f13654b != -9223372036854775807L ? -this.f13650m : 0L;
                                    }
                                    this.f13648j = 4;
                                    this.f13645g = 2;
                                    if (z4) {
                                        return 0;
                                    }
                                }
                                z13 = false;
                                if (!z13) {
                                }
                                if (!this.f13646h) {
                                    this.f13646h = true;
                                    this.f13647i = cVar2.f13654b != -9223372036854775807L ? -this.f13650m : 0L;
                                }
                                this.f13648j = 4;
                                this.f13645g = 2;
                                if (z4) {
                                }
                            }
                        } else if (i10 == 18 || this.f13651n) {
                            ((l) pVar).o(this.l, false);
                            z4 = false;
                        } else {
                            q qVarH2 = h((l) pVar);
                            cVar2.getClass();
                            cVar2.getClass();
                            if (qVarH2.B() == 2 && "onMetaData".equals(c.v(qVarH2)) && qVarH2.a() != 0 && qVarH2.B() == 8) {
                                HashMap mapU = c.u(qVarH2);
                                Object obj = mapU.get("duration");
                                if (obj instanceof Double) {
                                    double dDoubleValue = ((Double) obj).doubleValue();
                                    if (dDoubleValue > 0.0d) {
                                        cVar2.f13654b = (long) (dDoubleValue * 1000000.0d);
                                    }
                                }
                                Object obj2 = mapU.get("keyframes");
                                if (obj2 instanceof Map) {
                                    Map map = (Map) obj2;
                                    Object obj3 = map.get("filepositions");
                                    Object obj4 = map.get("times");
                                    if ((obj3 instanceof List) && (obj4 instanceof List)) {
                                        List list = (List) obj3;
                                        List list2 = (List) obj4;
                                        int size = list2.size();
                                        cVar2.f13655c = new long[size];
                                        cVar2.f13656d = new long[size];
                                        for (int i21 = 0; i21 < size; i21++) {
                                            Object obj5 = list.get(i21);
                                            Object obj6 = list2.get(i21);
                                            if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                                                cVar2.f13655c = new long[0];
                                                cVar2.f13656d = new long[0];
                                                break;
                                            }
                                            cVar2.f13655c[i21] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                                            cVar2.f13656d[i21] = ((Double) obj5).longValue();
                                        }
                                    }
                                }
                            }
                            long j13 = cVar2.f13654b;
                            if (j13 != -9223372036854775807L) {
                                this.f13644f.s(new y(j13, cVar2.f13656d, cVar2.f13655c));
                                this.f13651n = true;
                            }
                            z4 = true;
                        }
                        z = false;
                        if (!this.f13646h) {
                        }
                        this.f13648j = 4;
                        this.f13645g = 2;
                        if (z4) {
                        }
                    } else {
                        if (!this.f13651n) {
                            this.f13644f.s(new s(-9223372036854775807L));
                            this.f13651n = true;
                        }
                        a aVar = this.f13652o;
                        q qVarH3 = h((l) pVar);
                        if (aVar.f13636b) {
                            qVarH3.P(1);
                        } else {
                            int iB4 = qVarH3.B();
                            int i22 = (iB4 >> 4) & 15;
                            aVar.f13638d = i22;
                            j0 j0Var2 = (j0) aVar.f1a;
                            if (i22 == 2) {
                                int i23 = a.f13635e[(iB4 >> 2) & 3];
                                r1.o oVar2 = new r1.o();
                                oVar2.f13491m = e0.l("video/x-flv");
                                oVar2.f13492n = e0.l("audio/mpeg");
                                oVar2.F = 1;
                                oVar2.G = i23;
                                j0Var2.g(new r1.p(oVar2));
                                aVar.f13637c = true;
                            } else if (i22 == 7 || i22 == 8) {
                                String str = i22 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
                                r1.o oVar3 = new r1.o();
                                oVar3.f13491m = e0.l("video/x-flv");
                                oVar3.f13492n = e0.l(str);
                                oVar3.F = 1;
                                oVar3.G = 8000;
                                j0Var2.g(new r1.p(oVar3));
                                aVar.f13637c = true;
                            } else if (i22 != 10) {
                                throw new d("Audio format not supported: " + aVar.f13638d);
                            }
                            aVar.f13636b = true;
                        }
                        int i24 = aVar.f13638d;
                        j0 j0Var3 = (j0) aVar.f1a;
                        z = true;
                        if (i24 == 2) {
                            int iA = qVarH3.a();
                            j0Var3.a(iA, qVarH3);
                            ((j0) aVar.f1a).b(j11, 1, iA, 0, null);
                        } else {
                            int iB5 = qVarH3.B();
                            if (iB5 == 0 && !aVar.f13637c) {
                                int iA2 = qVarH3.a();
                                byte[] bArr4 = new byte[iA2];
                                qVarH3.l(0, iA2, bArr4);
                                l2.a aVarO = l2.b.o(new f(bArr4, iA2), false);
                                r1.o oVar4 = new r1.o();
                                oVar4.f13491m = e0.l("video/x-flv");
                                oVar4.f13492n = e0.l("audio/mp4a-latm");
                                oVar4.f13489j = aVarO.f10388a;
                                oVar4.F = aVarO.f10390c;
                                oVar4.G = aVarO.f10389b;
                                oVar4.f13495q = Collections.singletonList(bArr4);
                                j0Var3.g(new r1.p(oVar4));
                                aVar.f13637c = true;
                            } else if (aVar.f13638d != 10 || iB5 == 1) {
                                int iA3 = qVarH3.a();
                                j0Var3.a(iA3, qVarH3);
                                ((j0) aVar.f1a).b(j11, 1, iA3, 0, null);
                            }
                            z = false;
                        }
                        if (!this.f13646h) {
                        }
                        this.f13648j = 4;
                        this.f13645g = 2;
                        if (z4) {
                        }
                    }
                } else {
                    j10 = this.f13650m;
                }
                j11 = j10;
                i10 = this.f13649k;
                if (i10 == 8) {
                    if (i10 != 9) {
                        if (i10 == 18) {
                            ((l) pVar).o(this.l, false);
                            z4 = false;
                            z = false;
                            if (!this.f13646h) {
                            }
                            this.f13648j = 4;
                            this.f13645g = 2;
                            if (z4) {
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        if (j10 == 0) {
            this.f13645g = 1;
            this.f13646h = false;
        } else {
            this.f13645g = 3;
        }
        this.f13648j = 0;
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        q qVar = this.f13639a;
        l lVar = (l) pVar;
        lVar.c(qVar.f15266a, 0, 3, false);
        qVar.O(0);
        if (qVar.E() != 4607062) {
            return false;
        }
        lVar.c(qVar.f15266a, 0, 2, false);
        qVar.O(0);
        if ((qVar.I() & 250) != 0) {
            return false;
        }
        lVar.c(qVar.f15266a, 0, 4, false);
        qVar.O(0);
        int iO = qVar.o();
        lVar.f10501f = 0;
        lVar.k(iO, false);
        lVar.c(qVar.f15266a, 0, 4, false);
        qVar.O(0);
        return qVar.o() == 0;
    }

    public final q h(l lVar) {
        int i10 = this.l;
        q qVar = this.f13642d;
        byte[] bArr = qVar.f15266a;
        if (i10 > bArr.length) {
            qVar.M(0, new byte[Math.max(bArr.length * 2, i10)]);
        } else {
            qVar.O(0);
        }
        qVar.N(this.l);
        lVar.b(qVar.f15266a, 0, this.l, false);
        return qVar;
    }

    @Override // l2.o
    public final void a() {
    }
}

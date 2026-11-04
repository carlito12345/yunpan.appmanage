package n2;

import androidx.media3.exoplayer.video.k;
import androidx.room.i;
import ha.l2;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.s;
import r1.f0;
import u1.q;
import u7.e0;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements o {

    /* renamed from: a, reason: collision with root package name */
    public final q f11253a;

    /* renamed from: b, reason: collision with root package name */
    public final k f11254b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11255c;

    /* renamed from: d, reason: collision with root package name */
    public final l2 f11256d;

    /* renamed from: e, reason: collision with root package name */
    public int f11257e;

    /* renamed from: f, reason: collision with root package name */
    public l2.q f11258f;

    /* renamed from: g, reason: collision with root package name */
    public c f11259g;

    /* renamed from: h, reason: collision with root package name */
    public long f11260h;

    /* renamed from: i, reason: collision with root package name */
    public e[] f11261i;

    /* renamed from: j, reason: collision with root package name */
    public long f11262j;

    /* renamed from: k, reason: collision with root package name */
    public e f11263k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public long f11264m;

    /* renamed from: n, reason: collision with root package name */
    public long f11265n;

    /* renamed from: o, reason: collision with root package name */
    public int f11266o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f11267p;

    public b(int i10, l2 l2Var) {
        this.f11256d = l2Var;
        this.f11255c = (i10 & 1) == 0;
        this.f11253a = new q(12);
        this.f11254b = new k();
        this.f11258f = new l2(17);
        this.f11261i = new e[0];
        this.f11264m = -1L;
        this.f11265n = -1L;
        this.l = -1;
        this.f11260h = -9223372036854775807L;
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f11257e = 0;
        if (this.f11255c) {
            qVar = new i(qVar, this.f11256d);
        }
        this.f11258f = qVar;
        this.f11262j = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:173:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x010a  */
    @Override // l2.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int d(p pVar, dd.c cVar) throws f0 {
        boolean z;
        e eVar;
        long j10;
        int i10;
        e eVar2;
        long j11 = this.f11262j;
        if (j11 != -1) {
            long j12 = ((l) pVar).f10499d;
            if (j11 < j12 || j11 > 262144 + j12) {
                cVar.f4591b = j11;
                z = true;
            } else {
                ((l) pVar).o((int) (j11 - j12), false);
                z = false;
            }
        } else {
            z = false;
        }
        this.f11262j = -1L;
        if (z) {
            return 1;
        }
        int i11 = this.f11257e;
        e eVar3 = null;
        k kVar = this.f11254b;
        q qVar = this.f11253a;
        switch (i11) {
            case 0:
                if (!g(pVar)) {
                    throw f0.a(null, "AVI Header List not found");
                }
                ((l) pVar).o(12, false);
                this.f11257e = 1;
                return 0;
            case 1:
                ((l) pVar).b(qVar.f15266a, 0, 12, false);
                qVar.O(0);
                kVar.getClass();
                kVar.f1915a = qVar.q();
                kVar.f1916b = qVar.q();
                kVar.f1917c = 0;
                if (kVar.f1915a != 1414744396) {
                    throw f0.a(null, "LIST expected, found: " + kVar.f1915a);
                }
                int iQ = qVar.q();
                kVar.f1917c = iQ;
                if (iQ == 1819436136) {
                    this.l = kVar.f1916b;
                    this.f11257e = 2;
                    return 0;
                }
                throw f0.a(null, "hdrl expected, found: " + kVar.f1917c);
            case 2:
                int i12 = this.l - 4;
                q qVar2 = new q(i12);
                ((l) pVar).b(qVar2.f15266a, 0, i12, false);
                f fVarB = f.b(1819436136, qVar2);
                int i13 = fVarB.f11291b;
                if (i13 != 1819436136) {
                    throw f0.a(null, "Unexpected header list type " + i13);
                }
                c cVar2 = (c) fVarB.a(c.class);
                if (cVar2 == null) {
                    throw f0.a(null, "AviHeader not found");
                }
                this.f11259g = cVar2;
                this.f11260h = cVar2.f11270c * cVar2.f11268a;
                ArrayList arrayList = new ArrayList();
                e0 e0VarListIterator = fVarB.f11290a.listIterator(0);
                int i14 = 0;
                while (e0VarListIterator.hasNext()) {
                    a aVar = (a) e0VarListIterator.next();
                    if (aVar.getType() == 1819440243) {
                        f fVar = (f) aVar;
                        int i15 = i14 + 1;
                        d dVar = (d) fVar.a(d.class);
                        g gVar = (g) fVar.a(g.class);
                        if (dVar == null) {
                            u1.a.p("Missing Stream Header");
                        } else if (gVar == null) {
                            u1.a.p("Missing Stream Format");
                        } else {
                            long j13 = dVar.f11273c;
                            String str = u1.f0.f15206a;
                            long jM = u1.f0.M(dVar.f11274d, dVar.f11272b * 1000000, j13, RoundingMode.DOWN);
                            r1.p pVar2 = gVar.f11292a;
                            r1.o oVar = new r1.o(pVar2);
                            oVar.f13480a = Integer.toString(i14);
                            int i16 = dVar.f11275e;
                            if (i16 != 0) {
                                oVar.f13493o = i16;
                            }
                            h hVar = (h) fVar.a(h.class);
                            if (hVar != null) {
                                oVar.f13481b = hVar.f11293a;
                            }
                            int iG = r1.e0.g(pVar2.f13523o);
                            if (iG == 1 || iG == 2) {
                                j0 j0VarZ = this.f11258f.z(i14, iG);
                                j0VarZ.g(new r1.p(oVar));
                                j0VarZ.d(jM);
                                this.f11260h = Math.max(this.f11260h, jM);
                                eVar = new e(i14, dVar, j0VarZ);
                            }
                            if (eVar != null) {
                                arrayList.add(eVar);
                            }
                            i14 = i15;
                        }
                        eVar = null;
                        if (eVar != null) {
                        }
                        i14 = i15;
                    }
                }
                this.f11261i = (e[]) arrayList.toArray(new e[0]);
                this.f11258f.q();
                this.f11257e = 3;
                return 0;
            case 3:
                long j14 = this.f11264m;
                if (j14 != -1 && ((l) pVar).f10499d != j14) {
                    this.f11262j = j14;
                    return 0;
                }
                ((l) pVar).c(qVar.f15266a, 0, 12, false);
                l lVar = (l) pVar;
                lVar.f10501f = 0;
                qVar.O(0);
                kVar.getClass();
                kVar.f1915a = qVar.q();
                kVar.f1916b = qVar.q();
                kVar.f1917c = 0;
                int iQ2 = qVar.q();
                int i17 = kVar.f1915a;
                if (i17 == 1179011410) {
                    lVar.o(12, false);
                    return 0;
                }
                if (i17 != 1414744396 || iQ2 != 1769369453) {
                    this.f11262j = lVar.f10499d + kVar.f1916b + 8;
                    return 0;
                }
                long j15 = lVar.f10499d;
                this.f11264m = j15;
                this.f11265n = j15 + kVar.f1916b + 8;
                if (!this.f11267p) {
                    c cVar3 = this.f11259g;
                    cVar3.getClass();
                    if ((cVar3.f11269b & 16) == 16) {
                        this.f11257e = 4;
                        this.f11262j = this.f11265n;
                        return 0;
                    }
                    this.f11258f.s(new s(this.f11260h));
                    this.f11267p = true;
                }
                this.f11262j = lVar.f10499d + 12;
                this.f11257e = 6;
                return 0;
            case 4:
                ((l) pVar).b(qVar.f15266a, 0, 8, false);
                qVar.O(0);
                int iQ3 = qVar.q();
                int iQ4 = qVar.q();
                if (iQ3 != 829973609) {
                    this.f11262j = ((l) pVar).f10499d + iQ4;
                    return 0;
                }
                this.f11257e = 5;
                this.f11266o = iQ4;
                return 0;
            case 5:
                q qVar3 = new q(this.f11266o);
                ((l) pVar).b(qVar3.f15266a, 0, this.f11266o, false);
                if (qVar3.a() < 16) {
                    j10 = 0;
                } else {
                    int i18 = qVar3.f15267b;
                    qVar3.P(8);
                    long jQ = qVar3.q();
                    long j16 = this.f11264m;
                    j10 = jQ > j16 ? 0L : j16 + 8;
                    qVar3.O(i18);
                }
                while (qVar3.a() >= 16) {
                    int iQ5 = qVar3.q();
                    int iQ6 = qVar3.q();
                    long jQ2 = qVar3.q() + j10;
                    qVar3.P(4);
                    e[] eVarArr = this.f11261i;
                    int length = eVarArr.length;
                    int i19 = 0;
                    while (true) {
                        if (i19 < length) {
                            eVar2 = eVarArr[i19];
                            if (eVar2.f11279c != iQ5 && eVar2.f11280d != iQ5) {
                                i19++;
                            }
                        } else {
                            eVar2 = null;
                        }
                    }
                    if (eVar2 != null) {
                        boolean z4 = (iQ6 & 16) == 16;
                        if (eVar2.l == -1) {
                            eVar2.l = jQ2;
                        }
                        if (z4) {
                            if (eVar2.f11287k == eVar2.f11289n.length) {
                                long[] jArr = eVar2.f11288m;
                                eVar2.f11288m = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                                int[] iArr = eVar2.f11289n;
                                eVar2.f11289n = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                            }
                            long[] jArr2 = eVar2.f11288m;
                            int i20 = eVar2.f11287k;
                            jArr2[i20] = jQ2;
                            eVar2.f11289n[i20] = eVar2.f11286j;
                            eVar2.f11287k = i20 + 1;
                        }
                        eVar2.f11286j++;
                    }
                }
                for (e eVar4 : this.f11261i) {
                    eVar4.f11288m = Arrays.copyOf(eVar4.f11288m, eVar4.f11287k);
                    eVar4.f11289n = Arrays.copyOf(eVar4.f11289n, eVar4.f11287k);
                    if ((eVar4.f11279c & 1651965952) == 1651965952 && eVar4.f11277a.f11276f != 0 && (i10 = eVar4.f11287k) > 0) {
                        eVar4.f11282f = i10;
                    }
                }
                this.f11267p = true;
                if (this.f11261i.length == 0) {
                    this.f11258f.s(new s(this.f11260h));
                } else {
                    this.f11258f.s(new s(2, this.f11260h, this));
                }
                this.f11257e = 6;
                this.f11262j = this.f11264m;
                return 0;
            case 6:
                if (((l) pVar).f10499d >= this.f11265n) {
                    return -1;
                }
                e eVar5 = this.f11263k;
                if (eVar5 != null) {
                    int i21 = eVar5.f11284h;
                    int iE = i21 - eVar5.f11278b.e(pVar, i21, false);
                    eVar5.f11284h = iE;
                    boolean z10 = iE == 0;
                    if (z10) {
                        if (eVar5.f11283g > 0) {
                            int i22 = eVar5.f11285i;
                            eVar5.f11278b.b((eVar5.f11281e * i22) / eVar5.f11282f, Arrays.binarySearch(eVar5.f11289n, i22) >= 0 ? 1 : 0, eVar5.f11283g, 0, null);
                        }
                        eVar5.f11285i++;
                    }
                    if (!z10) {
                        return 0;
                    }
                    this.f11263k = null;
                    return 0;
                }
                l lVar2 = (l) pVar;
                if ((lVar2.f10499d & 1) == 1) {
                    lVar2.o(1, false);
                }
                lVar2.c(qVar.f15266a, 0, 12, false);
                qVar.O(0);
                int iQ7 = qVar.q();
                if (iQ7 == 1414744396) {
                    qVar.O(8);
                    lVar2.o(qVar.q() == 1769369453 ? 12 : 8, false);
                    lVar2.f10501f = 0;
                    return 0;
                }
                int iQ8 = qVar.q();
                if (iQ7 == 1263424842) {
                    this.f11262j = lVar2.f10499d + iQ8 + 8;
                    return 0;
                }
                lVar2.o(8, false);
                lVar2.f10501f = 0;
                for (e eVar6 : this.f11261i) {
                    if (eVar6.f11279c == iQ7 || eVar6.f11280d == iQ7) {
                        eVar3 = eVar6;
                        if (eVar3 != null) {
                            this.f11262j = lVar2.f10499d + iQ8;
                            return 0;
                        }
                        eVar3.f11283g = iQ8;
                        eVar3.f11284h = iQ8;
                        this.f11263k = eVar3;
                        return 0;
                    }
                }
                if (eVar3 != null) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f11262j = -1L;
        this.f11263k = null;
        for (e eVar : this.f11261i) {
            if (eVar.f11287k == 0) {
                eVar.f11285i = 0;
            } else {
                eVar.f11285i = eVar.f11289n[u1.f0.d(eVar.f11288m, j10, true)];
            }
        }
        if (j10 != 0) {
            this.f11257e = 6;
        } else if (this.f11261i.length == 0) {
            this.f11257e = 0;
        } else {
            this.f11257e = 3;
        }
    }

    @Override // l2.o
    public final List f() {
        e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        q qVar = this.f11253a;
        ((l) pVar).c(qVar.f15266a, 0, 12, false);
        qVar.O(0);
        if (qVar.q() != 1179011410) {
            return false;
        }
        qVar.P(4);
        return qVar.q() == 541677121;
    }

    @Override // l2.o
    public final void a() {
    }
}

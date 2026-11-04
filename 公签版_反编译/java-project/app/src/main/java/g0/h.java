package g0;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final b f5959a = new b();

    public static boolean a(f0.d dVar) {
        int[] iArr = dVar.f5105p0;
        int i10 = iArr[0];
        int i11 = iArr[1];
        f0.d dVar2 = dVar.T;
        f0.e eVar = dVar2 != null ? (f0.e) dVar2 : null;
        if (eVar != null) {
            int i12 = eVar.f5105p0[0];
        }
        if (eVar != null) {
            int i13 = eVar.f5105p0[1];
        }
        boolean z = i10 == 1 || dVar.A() || i10 == 2 || (i10 == 3 && dVar.r == 0 && dVar.W == 0.0f && dVar.t(0)) || (i10 == 3 && dVar.r == 1 && dVar.u(0, dVar.q()));
        boolean z4 = i11 == 1 || dVar.B() || i11 == 2 || (i11 == 3 && dVar.f5107s == 0 && dVar.W == 0.0f && dVar.t(1)) || (i11 == 3 && dVar.f5107s == 1 && dVar.u(1, dVar.k()));
        if (dVar.W <= 0.0f || !(z || z4)) {
            return z && z4;
        }
        return true;
    }

    public static n b(f0.d dVar, int i10, ArrayList arrayList, n nVar) {
        int i11;
        int i12 = i10 == 0 ? dVar.f5101n0 : dVar.f5103o0;
        if (i12 != -1 && (nVar == null || i12 != nVar.f5966b)) {
            int i13 = 0;
            while (true) {
                if (i13 >= arrayList.size()) {
                    break;
                }
                n nVar2 = (n) arrayList.get(i13);
                if (nVar2.f5966b == i12) {
                    if (nVar != null) {
                        nVar.c(i10, nVar2);
                        arrayList.remove(nVar);
                    }
                    nVar = nVar2;
                } else {
                    i13++;
                }
            }
        } else if (i12 != -1) {
            return nVar;
        }
        if (nVar == null) {
            if (dVar instanceof f0.i) {
                f0.i iVar = (f0.i) dVar;
                int i14 = 0;
                while (true) {
                    if (i14 >= iVar.f5154r0) {
                        i11 = -1;
                        break;
                    }
                    f0.d dVar2 = iVar.f5153q0[i14];
                    if ((i10 == 0 && (i11 = dVar2.f5101n0) != -1) || (i10 == 1 && (i11 = dVar2.f5103o0) != -1)) {
                        break;
                    }
                    i14++;
                }
                if (i11 != -1) {
                    int i15 = 0;
                    while (true) {
                        if (i15 >= arrayList.size()) {
                            break;
                        }
                        n nVar3 = (n) arrayList.get(i15);
                        if (nVar3.f5966b == i11) {
                            nVar = nVar3;
                            break;
                        }
                        i15++;
                    }
                }
            }
            if (nVar == null) {
                nVar = new n(i10);
            }
            arrayList.add(nVar);
        }
        ArrayList arrayList2 = nVar.f5965a;
        if (!arrayList2.contains(dVar)) {
            arrayList2.add(dVar);
            if (dVar instanceof f0.h) {
                f0.h hVar = (f0.h) dVar;
                hVar.f5150t0.c(hVar.f5151u0 == 0 ? 1 : 0, nVar, arrayList);
            }
            int i16 = nVar.f5966b;
            if (i10 == 0) {
                dVar.f5101n0 = i16;
                dVar.I.c(i10, nVar, arrayList);
                dVar.K.c(i10, nVar, arrayList);
            } else {
                dVar.f5103o0 = i16;
                dVar.J.c(i10, nVar, arrayList);
                dVar.M.c(i10, nVar, arrayList);
                dVar.L.c(i10, nVar, arrayList);
            }
            dVar.P.c(i10, nVar, arrayList);
        }
        return nVar;
    }

    public static void c(int i10, f0.d dVar, i0.f fVar, boolean z) {
        f0.c cVar;
        f0.c cVar2;
        f0.c cVar3;
        f0.c cVar4;
        if (dVar.f5098m) {
            return;
        }
        if (!(dVar instanceof f0.e) && dVar.z() && a(dVar)) {
            f0.e.V(dVar, fVar, new b());
        }
        f0.c cVarI = dVar.i(2);
        f0.c cVarI2 = dVar.i(4);
        int iD = cVarI.d();
        int iD2 = cVarI2.d();
        HashSet hashSet = cVarI.f5066a;
        char c7 = 0;
        if (hashSet != null && cVarI.f5068c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                f0.c cVar5 = (f0.c) it.next();
                f0.d dVar2 = cVar5.f5069d;
                int i11 = i10 + 1;
                boolean zA = a(dVar2);
                if (dVar2.z() && zA) {
                    f0.e.V(dVar2, fVar, new b());
                }
                f0.c cVar6 = dVar2.I;
                f0.c cVar7 = dVar2.K;
                boolean z4 = (cVar5 == cVar6 && (cVar4 = cVar7.f5071f) != null && cVar4.f5068c) || (cVar5 == cVar7 && (cVar3 = cVar6.f5071f) != null && cVar3.f5068c);
                int i12 = dVar2.f5105p0[c7];
                if (i12 != 3 || zA) {
                    if (!dVar2.z()) {
                        if (cVar5 == cVar6 && cVar7.f5071f == null) {
                            int iE = cVar6.e() + iD;
                            dVar2.J(iE, dVar2.q() + iE);
                            c(i11, dVar2, fVar, z);
                        } else if (cVar5 == cVar7 && cVar6.f5071f == null) {
                            int iE2 = iD - cVar7.e();
                            dVar2.J(iE2 - dVar2.q(), iE2);
                            c(i11, dVar2, fVar, z);
                        } else if (z4 && !dVar2.x()) {
                            d(i11, dVar2, fVar, z);
                        }
                    }
                } else if (i12 == 3 && dVar2.f5110v >= 0 && dVar2.f5109u >= 0 && ((dVar2.f5088g0 == 8 || (dVar2.r == 0 && dVar2.W == 0.0f)) && !dVar2.x() && !dVar2.F && z4 && !dVar2.x())) {
                    e(i11, dVar, fVar, dVar2, z);
                }
                c7 = 0;
            }
        }
        if (dVar instanceof f0.h) {
            return;
        }
        HashSet hashSet2 = cVarI2.f5066a;
        if (hashSet2 != null && cVarI2.f5068c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                f0.c cVar8 = (f0.c) it2.next();
                f0.d dVar3 = cVar8.f5069d;
                int i13 = i10 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.z() && zA2) {
                    f0.e.V(dVar3, fVar, new b());
                }
                f0.c cVar9 = dVar3.I;
                f0.c cVar10 = dVar3.K;
                boolean z10 = (cVar8 == cVar9 && (cVar2 = cVar10.f5071f) != null && cVar2.f5068c) || (cVar8 == cVar10 && (cVar = cVar9.f5071f) != null && cVar.f5068c);
                int i14 = dVar3.f5105p0[0];
                if (i14 != 3 || zA2) {
                    if (!dVar3.z()) {
                        if (cVar8 == cVar9 && cVar10.f5071f == null) {
                            int iE3 = cVar9.e() + iD2;
                            dVar3.J(iE3, dVar3.q() + iE3);
                            c(i13, dVar3, fVar, z);
                        } else if (cVar8 == cVar10 && cVar9.f5071f == null) {
                            int iE4 = iD2 - cVar10.e();
                            dVar3.J(iE4 - dVar3.q(), iE4);
                            c(i13, dVar3, fVar, z);
                        } else if (z10 && !dVar3.x()) {
                            d(i13, dVar3, fVar, z);
                        }
                    }
                } else if (i14 == 3 && dVar3.f5110v >= 0 && dVar3.f5109u >= 0) {
                    if (dVar3.f5088g0 != 8) {
                        if (dVar3.r == 0) {
                            if (dVar3.W == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.x() && !dVar3.F && z10 && !dVar3.x()) {
                        e(i13, dVar, fVar, dVar3, z);
                    }
                }
            }
        }
        dVar.f5098m = true;
    }

    public static void d(int i10, f0.d dVar, i0.f fVar, boolean z) {
        float f10 = dVar.f5082d0;
        f0.c cVar = dVar.I;
        int iD = cVar.f5071f.d();
        f0.c cVar2 = dVar.K;
        int iD2 = cVar2.f5071f.d();
        int iE = cVar.e() + iD;
        int iE2 = iD2 - cVar2.e();
        if (iD == iD2) {
            f10 = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iQ = dVar.q();
        int i11 = (iD2 - iD) - iQ;
        if (iD > iD2) {
            i11 = (iD - iD2) - iQ;
        }
        int i12 = ((int) (i11 > 0 ? (f10 * i11) + 0.5f : f10 * i11)) + iD;
        int i13 = i12 + iQ;
        if (iD > iD2) {
            i13 = i12 - iQ;
        }
        dVar.J(i12, i13);
        c(i10 + 1, dVar, fVar, z);
    }

    public static void e(int i10, f0.d dVar, i0.f fVar, f0.d dVar2, boolean z) {
        float f10 = dVar2.f5082d0;
        f0.c cVar = dVar2.I;
        int iE = cVar.e() + cVar.f5071f.d();
        f0.c cVar2 = dVar2.K;
        int iD = cVar2.f5071f.d() - cVar2.e();
        if (iD >= iE) {
            int iQ = dVar2.q();
            if (dVar2.f5088g0 != 8) {
                int i11 = dVar2.r;
                if (i11 == 2) {
                    iQ = (int) (dVar2.f5082d0 * 0.5f * (dVar instanceof f0.e ? dVar.q() : dVar.T.q()));
                } else if (i11 == 0) {
                    iQ = iD - iE;
                }
                iQ = Math.max(dVar2.f5109u, iQ);
                int i12 = dVar2.f5110v;
                if (i12 > 0) {
                    iQ = Math.min(i12, iQ);
                }
            }
            int i13 = iE + ((int) ((f10 * ((iD - iE) - iQ)) + 0.5f));
            dVar2.J(i13, iQ + i13);
            c(i10 + 1, dVar2, fVar, z);
        }
    }

    public static void f(int i10, f0.d dVar, i0.f fVar) {
        float f10 = dVar.f5084e0;
        f0.c cVar = dVar.J;
        int iD = cVar.f5071f.d();
        f0.c cVar2 = dVar.L;
        int iD2 = cVar2.f5071f.d();
        int iE = cVar.e() + iD;
        int iE2 = iD2 - cVar2.e();
        if (iD == iD2) {
            f10 = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iK = dVar.k();
        int i11 = (iD2 - iD) - iK;
        if (iD > iD2) {
            i11 = (iD - iD2) - iK;
        }
        int i12 = (int) (i11 > 0 ? (f10 * i11) + 0.5f : f10 * i11);
        int i13 = iD + i12;
        int i14 = i13 + iK;
        if (iD > iD2) {
            i13 = iD - i12;
            i14 = i13 - iK;
        }
        dVar.K(i13, i14);
        i(i10 + 1, dVar, fVar);
    }

    public static void g(int i10, f0.d dVar, i0.f fVar, f0.d dVar2) {
        float f10 = dVar2.f5084e0;
        f0.c cVar = dVar2.J;
        int iE = cVar.e() + cVar.f5071f.d();
        f0.c cVar2 = dVar2.L;
        int iD = cVar2.f5071f.d() - cVar2.e();
        if (iD >= iE) {
            int iK = dVar2.k();
            if (dVar2.f5088g0 != 8) {
                int i11 = dVar2.f5107s;
                if (i11 == 2) {
                    iK = (int) (f10 * 0.5f * (dVar instanceof f0.e ? dVar.k() : dVar.T.k()));
                } else if (i11 == 0) {
                    iK = iD - iE;
                }
                iK = Math.max(dVar2.f5112x, iK);
                int i12 = dVar2.f5113y;
                if (i12 > 0) {
                    iK = Math.min(i12, iK);
                }
            }
            int i13 = iE + ((int) ((f10 * ((iD - iE) - iK)) + 0.5f));
            dVar2.K(i13, iK + i13);
            i(i10 + 1, dVar2, fVar);
        }
    }

    public static boolean h(int i10, int i11, int i12, int i13) {
        return (i12 == 1 || i12 == 2 || (i12 == 4 && i10 != 2)) || (i13 == 1 || i13 == 2 || (i13 == 4 && i11 != 2));
    }

    public static void i(int i10, f0.d dVar, i0.f fVar) {
        f0.c cVar;
        f0.c cVar2;
        f0.c cVar3;
        f0.c cVar4;
        f0.c cVar5;
        if (dVar.f5100n) {
            return;
        }
        if (!(dVar instanceof f0.e) && dVar.z() && a(dVar)) {
            f0.e.V(dVar, fVar, new b());
        }
        f0.c cVarI = dVar.i(3);
        f0.c cVarI2 = dVar.i(5);
        int iD = cVarI.d();
        int iD2 = cVarI2.d();
        HashSet hashSet = cVarI.f5066a;
        if (hashSet != null && cVarI.f5068c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                f0.c cVar6 = (f0.c) it.next();
                f0.d dVar2 = cVar6.f5069d;
                int i11 = i10 + 1;
                boolean zA = a(dVar2);
                if (dVar2.z() && zA) {
                    f0.e.V(dVar2, fVar, new b());
                }
                f0.c cVar7 = dVar2.J;
                f0.c cVar8 = dVar2.L;
                boolean z = (cVar6 == cVar7 && (cVar5 = cVar8.f5071f) != null && cVar5.f5068c) || (cVar6 == cVar8 && (cVar4 = cVar7.f5071f) != null && cVar4.f5068c);
                int i12 = dVar2.f5105p0[1];
                if (i12 != 3 || zA) {
                    if (!dVar2.z()) {
                        if (cVar6 == cVar7 && cVar8.f5071f == null) {
                            int iE = cVar7.e() + iD;
                            dVar2.K(iE, dVar2.k() + iE);
                            i(i11, dVar2, fVar);
                        } else if (cVar6 == cVar8 && cVar7.f5071f == null) {
                            int iE2 = iD - cVar8.e();
                            dVar2.K(iE2 - dVar2.k(), iE2);
                            i(i11, dVar2, fVar);
                        } else if (z && !dVar2.y()) {
                            f(i11, dVar2, fVar);
                        }
                    }
                } else if (i12 == 3 && dVar2.f5113y >= 0 && dVar2.f5112x >= 0 && (dVar2.f5088g0 == 8 || (dVar2.f5107s == 0 && dVar2.W == 0.0f))) {
                    if (!dVar2.y() && !dVar2.F && z && !dVar2.y()) {
                        g(i11, dVar, fVar, dVar2);
                    }
                }
            }
        }
        if (dVar instanceof f0.h) {
            return;
        }
        HashSet hashSet2 = cVarI2.f5066a;
        if (hashSet2 != null && cVarI2.f5068c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                f0.c cVar9 = (f0.c) it2.next();
                f0.d dVar3 = cVar9.f5069d;
                int i13 = i10 + 1;
                boolean zA2 = a(dVar3);
                if (dVar3.z() && zA2) {
                    f0.e.V(dVar3, fVar, new b());
                }
                f0.c cVar10 = dVar3.J;
                f0.c cVar11 = dVar3.L;
                boolean z4 = (cVar9 == cVar10 && (cVar3 = cVar11.f5071f) != null && cVar3.f5068c) || (cVar9 == cVar11 && (cVar2 = cVar10.f5071f) != null && cVar2.f5068c);
                int i14 = dVar3.f5105p0[1];
                if (i14 != 3 || zA2) {
                    if (!dVar3.z()) {
                        if (cVar9 == cVar10 && cVar11.f5071f == null) {
                            int iE3 = cVar10.e() + iD2;
                            dVar3.K(iE3, dVar3.k() + iE3);
                            i(i13, dVar3, fVar);
                        } else if (cVar9 == cVar11 && cVar10.f5071f == null) {
                            int iE4 = iD2 - cVar11.e();
                            dVar3.K(iE4 - dVar3.k(), iE4);
                            i(i13, dVar3, fVar);
                        } else if (z4 && !dVar3.y()) {
                            f(i13, dVar3, fVar);
                        }
                    }
                } else if (i14 == 3 && dVar3.f5113y >= 0 && dVar3.f5112x >= 0) {
                    if (dVar3.f5088g0 != 8) {
                        if (dVar3.f5107s == 0) {
                            if (dVar3.W == 0.0f) {
                            }
                        }
                    }
                    if (!dVar3.y() && !dVar3.F && z4 && !dVar3.y()) {
                        g(i13, dVar, fVar, dVar3);
                    }
                }
            }
        }
        f0.c cVarI3 = dVar.i(6);
        if (cVarI3.f5066a != null && cVarI3.f5068c) {
            int iD3 = cVarI3.d();
            Iterator it3 = cVarI3.f5066a.iterator();
            while (it3.hasNext()) {
                f0.c cVar12 = (f0.c) it3.next();
                f0.d dVar4 = cVar12.f5069d;
                int i15 = i10 + 1;
                boolean zA3 = a(dVar4);
                if (dVar4.z() && zA3) {
                    f0.e.V(dVar4, fVar, new b());
                }
                if (dVar4.f5105p0[1] != 3 || zA3) {
                    if (!dVar4.z() && cVar12 == (cVar = dVar4.M)) {
                        int iE5 = cVar12.e() + iD3;
                        if (dVar4.E) {
                            int i16 = iE5 - dVar4.f5076a0;
                            int i17 = dVar4.V + i16;
                            dVar4.Z = i16;
                            dVar4.J.l(i16);
                            dVar4.L.l(i17);
                            cVar.l(iE5);
                            dVar4.l = true;
                        }
                        i(i15, dVar4, fVar);
                    }
                }
            }
        }
        dVar.f5100n = true;
    }
}

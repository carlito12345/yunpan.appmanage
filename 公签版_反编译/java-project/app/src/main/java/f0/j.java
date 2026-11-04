package f0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean[] f5155a = new boolean[3];

    /* JADX WARN: Removed duplicated region for block: B:185:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x04d6  */
    /* JADX WARN: Removed duplicated region for block: B:400:0x06a4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x06c0  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x06c2  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x06cd  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x06d6  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x06dd  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x06ed  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x06f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x070c A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(e eVar, d0.c cVar, ArrayList arrayList, int i10) {
        int i11;
        b[] bVarArr;
        int i12;
        int i13;
        boolean z;
        float f10;
        d dVar;
        boolean z4;
        boolean z10;
        c[] cVarArr;
        int i14;
        b[] bVarArr2;
        d dVar2;
        int i15;
        int i16;
        int i17;
        d dVar3;
        int i18;
        int i19;
        d dVar4;
        d0.g gVar;
        d0.g gVar2;
        c cVar2;
        c cVar3;
        d0.g gVar3;
        d dVar5;
        d dVar6;
        d dVar7;
        d dVar8;
        d0.g gVar4;
        int size;
        b bVar;
        ArrayList arrayList2;
        int i20;
        d dVar9;
        d dVar10;
        b bVar2;
        d dVar11;
        d dVar12;
        int i21;
        int i22;
        d dVar13;
        e eVar2 = eVar;
        ArrayList arrayList3 = arrayList;
        int i23 = 2;
        if (i10 == 0) {
            i11 = eVar2.f5122z0;
            bVarArr = eVar2.C0;
            i12 = 0;
        } else {
            i11 = eVar2.A0;
            bVarArr = eVar2.B0;
            i12 = 2;
        }
        int i24 = 0;
        while (i24 < i11) {
            b bVar3 = bVarArr[i24];
            boolean z11 = bVar3.f5065q;
            d dVar14 = bVar3.f5050a;
            int i25 = 3;
            int i26 = 1;
            int i27 = 8;
            if (z11) {
                i13 = i24;
            } else {
                int i28 = bVar3.l;
                int i29 = i28 * 2;
                d dVar15 = dVar14;
                d dVar16 = dVar15;
                boolean z12 = false;
                while (!z12) {
                    bVar3.f5058i += i26;
                    dVar15.f5099m0[i28] = null;
                    dVar15.f5097l0[i28] = null;
                    int i30 = dVar15.f5088g0;
                    c[] cVarArr2 = dVar15.Q;
                    if (i30 != i27) {
                        dVar15.j(i28);
                        cVarArr2[i29].e();
                        int i31 = i29 + 1;
                        cVarArr2[i31].e();
                        cVarArr2[i29].e();
                        cVarArr2[i31].e();
                        if (bVar3.f5051b == null) {
                            bVar3.f5051b = dVar15;
                        }
                        bVar3.f5053d = dVar15;
                        int i32 = dVar15.f5105p0[i28];
                        if (i32 == i25) {
                            int i33 = dVar15.f5108t[i28];
                            if (i33 == 0 || i33 == i25 || i33 == i23) {
                                bVar3.f5059j++;
                                float f11 = dVar15.f5096k0[i28];
                                if (f11 > 0.0f) {
                                    bVar3.f5060k += f11;
                                }
                                i22 = i24;
                                if (dVar15.f5088g0 != 8 && i32 == 3 && (i33 == 0 || i33 == 3)) {
                                    if (f11 < 0.0f) {
                                        bVar3.f5062n = true;
                                    } else {
                                        bVar3.f5063o = true;
                                    }
                                    if (bVar3.f5057h == null) {
                                        bVar3.f5057h = new ArrayList();
                                    }
                                    bVar3.f5057h.add(dVar15);
                                }
                                if (bVar3.f5055f == null) {
                                    bVar3.f5055f = dVar15;
                                }
                                d dVar17 = bVar3.f5056g;
                                if (dVar17 != null) {
                                    dVar17.f5097l0[i28] = dVar15;
                                }
                                bVar3.f5056g = dVar15;
                            } else {
                                i22 = i24;
                            }
                            if (i28 == 0) {
                                if (dVar15.r == 0 && dVar15.f5109u == 0) {
                                    int i34 = dVar15.f5110v;
                                }
                            } else if (dVar15.f5107s == 0 && dVar15.f5112x == 0) {
                                int i35 = dVar15.f5113y;
                            }
                        } else {
                            i22 = i24;
                        }
                    }
                    d dVar18 = dVar16;
                    if (dVar18 != dVar15) {
                        dVar18.f5099m0[i28] = dVar15;
                    }
                    c cVar4 = cVarArr2[i29 + 1].f5071f;
                    if (cVar4 != null) {
                        dVar13 = cVar4.f5069d;
                        c cVar5 = dVar13.Q[i29].f5071f;
                        if (cVar5 == null || cVar5.f5069d != dVar15) {
                            dVar13 = null;
                        }
                    }
                    if (dVar13 == null) {
                        dVar13 = dVar15;
                        z12 = true;
                    }
                    dVar16 = dVar15;
                    i24 = i22;
                    i26 = 1;
                    i27 = 8;
                    i23 = 2;
                    dVar15 = dVar13;
                    i25 = 3;
                }
                i13 = i24;
                d dVar19 = bVar3.f5051b;
                if (dVar19 != null) {
                    dVar19.Q[i29].e();
                }
                d dVar20 = bVar3.f5053d;
                if (dVar20 != null) {
                    dVar20.Q[i29 + 1].e();
                }
                bVar3.f5052c = dVar15;
                if (i28 == 0 && bVar3.f5061m) {
                    bVar3.f5054e = dVar15;
                } else {
                    bVar3.f5054e = dVar14;
                }
                bVar3.f5064p = bVar3.f5063o && bVar3.f5062n;
            }
            bVar3.f5065q = true;
            if (arrayList3 == null || arrayList3.contains(dVar14)) {
                d dVar21 = bVar3.f5052c;
                d dVar22 = bVar3.f5051b;
                d dVar23 = bVar3.f5053d;
                d dVar24 = bVar3.f5054e;
                float f12 = bVar3.f5060k;
                boolean z13 = eVar2.f5105p0[i10] == 2;
                if (i10 == 0) {
                    int i36 = dVar24.f5092i0;
                    boolean z14 = i36 == 0;
                    z10 = i36 == 1;
                    z = i36 == 2;
                    f10 = f12;
                    dVar = dVar14;
                    z4 = z14;
                } else {
                    int i37 = dVar24.f5094j0;
                    boolean z15 = i37 == 0;
                    boolean z16 = i37 == 1;
                    z = i37 == 2;
                    f10 = f12;
                    dVar = dVar14;
                    z4 = z15;
                    z10 = z16;
                }
                boolean z17 = false;
                while (true) {
                    cVarArr = eVar2.Q;
                    if (z17) {
                        break;
                    }
                    c cVar6 = dVar.Q[i12];
                    int i38 = z ? 1 : 4;
                    int iE = cVar6.e();
                    boolean z18 = z17;
                    int[] iArr = dVar.f5105p0;
                    int i39 = i11;
                    b[] bVarArr3 = bVarArr;
                    boolean z19 = iArr[i10] == 3 && dVar.f5108t[i10] == 0;
                    c cVar7 = cVar6.f5071f;
                    if (cVar7 != null && dVar != dVar14) {
                        iE = cVar7.e() + iE;
                    }
                    int i40 = iE;
                    if (!z || dVar == dVar14 || dVar == dVar22) {
                        dVar10 = dVar24;
                    } else {
                        dVar10 = dVar24;
                        i38 = 8;
                    }
                    c cVar8 = cVar6.f5071f;
                    if (cVar8 != null) {
                        if (dVar == dVar22) {
                            dVar11 = dVar14;
                            bVar2 = bVar3;
                            cVar.f(cVar6.f5074i, cVar8.f5074i, i40, 6);
                        } else {
                            bVar2 = bVar3;
                            dVar11 = dVar14;
                            cVar.f(cVar6.f5074i, cVar8.f5074i, i40, 8);
                        }
                        if (z19 && !z) {
                            i38 = 5;
                        }
                        cVar.e(cVar6.f5074i, cVar6.f5071f.f5074i, i40, (dVar == dVar22 && z && dVar.S[i10]) ? 5 : i38);
                    } else {
                        bVar2 = bVar3;
                        dVar11 = dVar14;
                    }
                    c[] cVarArr3 = dVar.Q;
                    if (z13) {
                        if (dVar.f5088g0 == 8 || iArr[i10] != 3) {
                            i21 = 0;
                        } else {
                            i21 = 0;
                            cVar.f(cVarArr3[i12 + 1].f5074i, cVarArr3[i12].f5074i, 0, 5);
                        }
                        cVar.f(cVarArr3[i12].f5074i, cVarArr[i12].f5074i, i21, 8);
                    }
                    c cVar9 = cVarArr3[i12 + 1].f5071f;
                    if (cVar9 != null) {
                        dVar12 = cVar9.f5069d;
                        c cVar10 = dVar12.Q[i12].f5071f;
                        if (cVar10 == null || cVar10.f5069d != dVar) {
                            dVar12 = null;
                        }
                    }
                    if (dVar12 != null) {
                        dVar = dVar12;
                        z17 = z18;
                    } else {
                        z17 = true;
                    }
                    dVar24 = dVar10;
                    i11 = i39;
                    bVarArr = bVarArr3;
                    dVar14 = dVar11;
                    bVar3 = bVar2;
                }
                b bVar4 = bVar3;
                d dVar25 = dVar24;
                d dVar26 = dVar14;
                i14 = i11;
                bVarArr2 = bVarArr;
                if (dVar23 != null) {
                    int i41 = i12 + 1;
                    if (dVar21.Q[i41].f5071f != null) {
                        c cVar11 = dVar23.Q[i41];
                        if (dVar23.f5105p0[i10] == 3 && dVar23.f5108t[i10] == 0 && !z) {
                            c cVar12 = cVar11.f5071f;
                            if (cVar12.f5069d == eVar2) {
                                cVar.e(cVar11.f5074i, cVar12.f5074i, -cVar11.e(), 5);
                            }
                            cVar.g(cVar11.f5074i, dVar21.Q[i41].f5071f.f5074i, -cVar11.e(), 6);
                        } else {
                            if (z) {
                                c cVar13 = cVar11.f5071f;
                                if (cVar13.f5069d == eVar2) {
                                    cVar.e(cVar11.f5074i, cVar13.f5074i, -cVar11.e(), 4);
                                }
                            }
                            cVar.g(cVar11.f5074i, dVar21.Q[i41].f5071f.f5074i, -cVar11.e(), 6);
                        }
                    }
                    if (z13) {
                        int i42 = i12 + 1;
                        d0.g gVar5 = cVarArr[i42].f5074i;
                        c cVar14 = dVar21.Q[i42];
                        cVar.f(gVar5, cVar14.f5074i, cVar14.e(), 8);
                    }
                    b bVar5 = bVar4;
                    ArrayList arrayList4 = bVar5.f5057h;
                    if (arrayList4 != null && (size = arrayList4.size()) > 1) {
                        float f13 = (!bVar5.f5062n || bVar5.f5064p) ? f10 : bVar5.f5059j;
                        d dVar27 = null;
                        float f14 = 0.0f;
                        int i43 = 0;
                        while (i43 < size) {
                            d dVar28 = (d) arrayList4.get(i43);
                            float f15 = dVar28.f5096k0[i10];
                            c[] cVarArr4 = dVar28.Q;
                            if (f15 < 0.0f) {
                                if (bVar5.f5064p) {
                                    cVar.e(cVarArr4[i12 + 1].f5074i, cVarArr4[i12].f5074i, 0, 4);
                                    bVar = bVar5;
                                    arrayList2 = arrayList4;
                                    i20 = size;
                                    i43++;
                                    size = i20;
                                    arrayList4 = arrayList2;
                                    bVar5 = bVar;
                                } else {
                                    f15 = 1.0f;
                                }
                            }
                            if (f15 == 0.0f) {
                                cVar.e(cVarArr4[i12 + 1].f5074i, cVarArr4[i12].f5074i, 0, 8);
                                bVar = bVar5;
                                arrayList2 = arrayList4;
                                i20 = size;
                                i43++;
                                size = i20;
                                arrayList4 = arrayList2;
                                bVar5 = bVar;
                            } else {
                                if (dVar27 != null) {
                                    c[] cVarArr5 = dVar27.Q;
                                    d0.g gVar6 = cVarArr5[i12].f5074i;
                                    int i44 = i12 + 1;
                                    d0.g gVar7 = cVarArr5[i44].f5074i;
                                    arrayList2 = arrayList4;
                                    d0.g gVar8 = cVarArr4[i12].f5074i;
                                    d0.g gVar9 = cVarArr4[i44].f5074i;
                                    i20 = size;
                                    d0.b bVarL = cVar.l();
                                    dVar9 = dVar28;
                                    bVarL.f4207b = 0.0f;
                                    bVar = bVar5;
                                    if (f13 == 0.0f || f14 == f15) {
                                        bVarL.f4209d.g(gVar6, 1.0f);
                                        bVarL.f4209d.g(gVar7, -1.0f);
                                        bVarL.f4209d.g(gVar9, 1.0f);
                                        bVarL.f4209d.g(gVar8, -1.0f);
                                    } else if (f14 == 0.0f) {
                                        bVarL.f4209d.g(gVar6, 1.0f);
                                        bVarL.f4209d.g(gVar7, -1.0f);
                                    } else if (f15 == 0.0f) {
                                        bVarL.f4209d.g(gVar8, 1.0f);
                                        bVarL.f4209d.g(gVar9, -1.0f);
                                    } else {
                                        float f16 = (f14 / f13) / (f15 / f13);
                                        bVarL.f4209d.g(gVar6, 1.0f);
                                        bVarL.f4209d.g(gVar7, -1.0f);
                                        bVarL.f4209d.g(gVar9, f16);
                                        bVarL.f4209d.g(gVar8, -f16);
                                    }
                                    cVar.c(bVarL);
                                } else {
                                    bVar = bVar5;
                                    arrayList2 = arrayList4;
                                    i20 = size;
                                    dVar9 = dVar28;
                                }
                                f14 = f15;
                                dVar27 = dVar9;
                                i43++;
                                size = i20;
                                arrayList4 = arrayList2;
                                bVar5 = bVar;
                            }
                        }
                    }
                    b bVar6 = bVar5;
                    if (dVar22 == null || !(dVar22 == dVar23 || z)) {
                        dVar2 = dVar23;
                        i15 = i13;
                        if (!z4 || dVar22 == null) {
                            int i45 = 8;
                            if (z10 && dVar22 != null) {
                                int i46 = bVar6.f5059j;
                                boolean z20 = i46 > 0 && bVar6.f5058i == i46;
                                d dVar29 = dVar22;
                                d dVar30 = dVar29;
                                while (dVar30 != null) {
                                    d dVar31 = dVar30.f5099m0[i10];
                                    while (dVar31 != null && dVar31.f5088g0 == i45) {
                                        dVar31 = dVar31.f5099m0[i10];
                                    }
                                    if (dVar30 == dVar22 || dVar30 == dVar2 || dVar31 == null) {
                                        dVar3 = dVar29;
                                        i18 = i15;
                                        i19 = 8;
                                    } else {
                                        d dVar32 = dVar31 == dVar2 ? null : dVar31;
                                        c[] cVarArr6 = dVar30.Q;
                                        c cVar15 = cVarArr6[i12];
                                        d0.g gVar10 = cVar15.f5074i;
                                        int i47 = i12 + 1;
                                        d0.g gVar11 = dVar29.Q[i47].f5074i;
                                        int iE2 = cVar15.e();
                                        int iE3 = cVarArr6[i47].e();
                                        if (dVar32 != null) {
                                            cVar2 = dVar32.Q[i12];
                                            gVar = cVar2.f5074i;
                                            dVar4 = dVar32;
                                            c cVar16 = cVar2.f5071f;
                                            gVar2 = cVar16 != null ? cVar16.f5074i : null;
                                        } else {
                                            dVar4 = dVar32;
                                            c cVar17 = dVar2.Q[i12];
                                            gVar = cVar17 != null ? cVar17.f5074i : null;
                                            gVar2 = cVarArr6[i47].f5074i;
                                            cVar2 = cVar17;
                                        }
                                        int iE4 = cVar2 != null ? cVar2.e() + iE3 : iE3;
                                        int iE5 = dVar29.Q[i47].e() + iE2;
                                        int i48 = z20 ? 8 : 4;
                                        if (gVar10 == null || gVar11 == null || gVar == null || gVar2 == null) {
                                            dVar3 = dVar29;
                                            i18 = i15;
                                            i19 = 8;
                                        } else {
                                            dVar3 = dVar29;
                                            int i49 = iE4;
                                            i18 = i15;
                                            i19 = 8;
                                            cVar.b(gVar10, gVar11, iE5, 0.5f, gVar, gVar2, i49, i48);
                                        }
                                        dVar31 = dVar4;
                                    }
                                    dVar29 = dVar30.f5088g0 != i19 ? dVar30 : dVar3;
                                    dVar30 = dVar31;
                                    i15 = i18;
                                    i45 = 8;
                                }
                                i16 = i15;
                                c cVar18 = dVar22.Q[i12];
                                c cVar19 = dVar26.Q[i12].f5071f;
                                int i50 = i12 + 1;
                                c cVar20 = dVar2.Q[i50];
                                c cVar21 = dVar21.Q[i50].f5071f;
                                if (cVar19 == null) {
                                    i17 = 5;
                                    if (cVar21 != null && dVar22 != dVar2) {
                                        cVar.e(cVar20.f5074i, cVar21.f5074i, -cVar20.e(), i17);
                                    }
                                } else {
                                    if (dVar22 != dVar2) {
                                        cVar.e(cVar18.f5074i, cVar19.f5074i, cVar18.e(), 5);
                                    } else {
                                        if (cVar21 != null) {
                                            i17 = 5;
                                            cVar.b(cVar18.f5074i, cVar19.f5074i, cVar18.e(), 0.5f, cVar20.f5074i, cVar21.f5074i, cVar20.e(), 5);
                                        }
                                        if (cVar21 != null) {
                                            cVar.e(cVar20.f5074i, cVar21.f5074i, -cVar20.e(), i17);
                                        }
                                    }
                                    i17 = 5;
                                    if (cVar21 != null) {
                                    }
                                }
                            }
                            if ((z4 || z10) && dVar22 != null && dVar22 != dVar2) {
                                c[] cVarArr7 = dVar22.Q;
                                c cVar22 = cVarArr7[i12];
                                dVar8 = dVar2 == null ? dVar22 : dVar2;
                                int i51 = i12 + 1;
                                c[] cVarArr8 = dVar8.Q;
                                c cVar23 = cVarArr8[i51];
                                c cVar24 = cVar22.f5071f;
                                gVar4 = cVar24 != null ? cVar24.f5074i : null;
                                c cVar25 = cVar23.f5071f;
                                d0.g gVar12 = cVar25 != null ? cVar25.f5074i : null;
                                if (dVar21 != dVar8) {
                                    c cVar26 = dVar21.Q[i51].f5071f;
                                    gVar12 = cVar26 != null ? cVar26.f5074i : null;
                                }
                                if (dVar22 == dVar8) {
                                    cVar23 = cVarArr7[i51];
                                }
                                if (gVar4 != null && gVar12 != null) {
                                    cVar.b(cVar22.f5074i, gVar4, cVar22.e(), 0.5f, gVar12, cVar23.f5074i, cVarArr8[i51].e(), 5);
                                }
                            }
                        } else {
                            int i52 = bVar6.f5059j;
                            boolean z21 = i52 > 0 && bVar6.f5058i == i52;
                            d dVar33 = dVar22;
                            for (d dVar34 = dVar33; dVar34 != null; dVar34 = dVar6) {
                                d dVar35 = dVar34.f5099m0[i10];
                                while (dVar35 != null && dVar35.f5088g0 == 8) {
                                    dVar35 = dVar35.f5099m0[i10];
                                }
                                if (dVar35 != null || dVar34 == dVar2) {
                                    c[] cVarArr9 = dVar34.Q;
                                    c cVar27 = cVarArr9[i12];
                                    d0.g gVar13 = cVar27.f5074i;
                                    c cVar28 = cVar27.f5071f;
                                    d0.g gVar14 = cVar28 != null ? cVar28.f5074i : null;
                                    if (dVar33 != dVar34) {
                                        gVar14 = dVar33.Q[i12 + 1].f5074i;
                                    } else if (dVar34 == dVar22) {
                                        c cVar29 = dVar26.Q[i12].f5071f;
                                        gVar14 = cVar29 != null ? cVar29.f5074i : null;
                                    }
                                    int iE6 = cVar27.e();
                                    int i53 = i12 + 1;
                                    int iE7 = cVarArr9[i53].e();
                                    if (dVar35 != null) {
                                        cVar3 = dVar35.Q[i12];
                                        gVar3 = cVar3.f5074i;
                                    } else {
                                        cVar3 = dVar21.Q[i53].f5071f;
                                        gVar3 = cVar3 != null ? cVar3.f5074i : null;
                                    }
                                    d0.g gVar15 = cVarArr9[i53].f5074i;
                                    if (cVar3 != null) {
                                        iE7 = cVar3.e() + iE7;
                                    }
                                    int iE8 = dVar33.Q[i53].e() + iE6;
                                    if (gVar13 == null || gVar14 == null || gVar3 == null || gVar15 == null) {
                                        dVar6 = dVar35;
                                        dVar5 = dVar33;
                                        dVar7 = dVar34;
                                    } else {
                                        if (dVar34 == dVar22) {
                                            iE8 = dVar22.Q[i12].e();
                                        }
                                        if (dVar34 == dVar2) {
                                            iE7 = dVar2.Q[i53].e();
                                        }
                                        d0.g gVar16 = gVar14;
                                        int i54 = iE8;
                                        d0.g gVar17 = gVar3;
                                        dVar5 = dVar33;
                                        int i55 = iE7;
                                        dVar6 = dVar35;
                                        dVar7 = dVar34;
                                        cVar.b(gVar13, gVar16, i54, 0.5f, gVar17, gVar15, i55, z21 ? 8 : 5);
                                    }
                                }
                                dVar33 = dVar7.f5088g0 != 8 ? dVar7 : dVar5;
                            }
                        }
                    } else {
                        c cVar30 = dVar26.Q[i12];
                        int i56 = i12 + 1;
                        c cVar31 = dVar21.Q[i56];
                        c cVar32 = cVar30.f5071f;
                        d0.g gVar18 = cVar32 != null ? cVar32.f5074i : null;
                        c cVar33 = cVar31.f5071f;
                        d0.g gVar19 = cVar33 != null ? cVar33.f5074i : null;
                        c cVar34 = dVar22.Q[i12];
                        if (dVar23 != null) {
                            cVar31 = dVar23.Q[i56];
                        }
                        if (gVar18 == null || gVar19 == null) {
                            dVar2 = dVar23;
                            i15 = i13;
                        } else {
                            dVar2 = dVar23;
                            i15 = i13;
                            cVar.b(cVar34.f5074i, gVar18, cVar34.e(), i10 == 0 ? dVar25.f5082d0 : dVar25.f5084e0, gVar19, cVar31.f5074i, cVar31.e(), 7);
                        }
                    }
                    i16 = i15;
                    if (z4) {
                        c[] cVarArr72 = dVar22.Q;
                        c cVar222 = cVarArr72[i12];
                        if (dVar2 == null) {
                        }
                        int i512 = i12 + 1;
                        c[] cVarArr82 = dVar8.Q;
                        c cVar232 = cVarArr82[i512];
                        c cVar242 = cVar222.f5071f;
                        if (cVar242 != null) {
                        }
                        c cVar252 = cVar232.f5071f;
                        if (cVar252 != null) {
                        }
                        if (dVar21 != dVar8) {
                        }
                        if (dVar22 == dVar8) {
                        }
                        if (gVar4 != null) {
                        }
                    } else {
                        c[] cVarArr722 = dVar22.Q;
                        c cVar2222 = cVarArr722[i12];
                        if (dVar2 == null) {
                        }
                        int i5122 = i12 + 1;
                        c[] cVarArr822 = dVar8.Q;
                        c cVar2322 = cVarArr822[i5122];
                        c cVar2422 = cVar2222.f5071f;
                        if (cVar2422 != null) {
                        }
                        c cVar2522 = cVar2322.f5071f;
                        if (cVar2522 != null) {
                        }
                        if (dVar21 != dVar8) {
                        }
                        if (dVar22 == dVar8) {
                        }
                        if (gVar4 != null) {
                        }
                    }
                }
            } else {
                i14 = i11;
                bVarArr2 = bVarArr;
                i16 = i13;
            }
            i24 = i16 + 1;
            i23 = 2;
            eVar2 = eVar;
            arrayList3 = arrayList;
            i11 = i14;
            bVarArr = bVarArr2;
        }
    }

    public static void b(e eVar, d0.c cVar, d dVar) {
        dVar.f5102o = -1;
        dVar.f5104p = -1;
        int i10 = eVar.f5105p0[0];
        int[] iArr = dVar.f5105p0;
        if (i10 != 2 && iArr[0] == 4) {
            c cVar2 = dVar.I;
            int i11 = cVar2.f5072g;
            int iQ = eVar.q();
            c cVar3 = dVar.K;
            int i12 = iQ - cVar3.f5072g;
            cVar2.f5074i = cVar.k(cVar2);
            cVar3.f5074i = cVar.k(cVar3);
            cVar.d(cVar2.f5074i, i11);
            cVar.d(cVar3.f5074i, i12);
            dVar.f5102o = 2;
            dVar.Y = i11;
            int i13 = i12 - i11;
            dVar.U = i13;
            int i14 = dVar.f5078b0;
            if (i13 < i14) {
                dVar.U = i14;
            }
        }
        if (eVar.f5105p0[1] == 2 || iArr[1] != 4) {
            return;
        }
        c cVar4 = dVar.J;
        int i15 = cVar4.f5072g;
        int iK = eVar.k();
        c cVar5 = dVar.L;
        int i16 = iK - cVar5.f5072g;
        cVar4.f5074i = cVar.k(cVar4);
        cVar5.f5074i = cVar.k(cVar5);
        cVar.d(cVar4.f5074i, i15);
        cVar.d(cVar5.f5074i, i16);
        if (dVar.f5076a0 > 0 || dVar.f5088g0 == 8) {
            c cVar6 = dVar.M;
            d0.g gVarK = cVar.k(cVar6);
            cVar6.f5074i = gVarK;
            cVar.d(gVarK, dVar.f5076a0 + i15);
        }
        dVar.f5104p = 2;
        dVar.Z = i15;
        int i17 = i16 - i15;
        dVar.V = i17;
        int i18 = dVar.f5080c0;
        if (i17 < i18) {
            dVar.V = i18;
        }
    }

    public static final boolean c(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}

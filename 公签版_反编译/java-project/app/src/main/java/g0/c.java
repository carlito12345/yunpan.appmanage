package g0;

import java.util.ArrayList;
import java.util.Iterator;
import ta.q;

/* loaded from: classes.dex */
public final class c extends o {

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f5938k;
    public int l;

    public c(f0.d dVar, int i10) {
        f0.d dVar2;
        super(dVar);
        this.f5938k = new ArrayList();
        this.f5975f = i10;
        f0.d dVar3 = this.f5971b;
        f0.d dVarM = dVar3.m(i10);
        while (true) {
            f0.d dVar4 = dVarM;
            dVar2 = dVar3;
            dVar3 = dVar4;
            if (dVar3 == null) {
                break;
            } else {
                dVarM = dVar3.m(this.f5975f);
            }
        }
        this.f5971b = dVar2;
        int i11 = this.f5975f;
        d dVar5 = i11 == 0 ? dVar2.f5081d : i11 == 1 ? dVar2.f5083e : null;
        ArrayList arrayList = this.f5938k;
        arrayList.add(dVar5);
        f0.d dVarL = dVar2.l(this.f5975f);
        while (dVarL != null) {
            int i12 = this.f5975f;
            arrayList.add(i12 == 0 ? dVarL.f5081d : i12 == 1 ? dVarL.f5083e : null);
            dVarL = dVarL.l(this.f5975f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            int i13 = this.f5975f;
            if (i13 == 0) {
                oVar.f5971b.f5077b = this;
            } else if (i13 == 1) {
                oVar.f5971b.f5079c = this;
            }
        }
        if (this.f5975f == 0 && ((f0.e) this.f5971b.T).f5118v0 && arrayList.size() > 1) {
            this.f5971b = ((o) q.h(1, arrayList)).f5971b;
        }
        this.l = this.f5975f == 0 ? this.f5971b.f5092i0 : this.f5971b.f5094j0;
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0153  */
    @Override // g0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(d dVar) {
        int i10;
        int i11;
        ArrayList arrayList;
        int i12;
        int i13;
        int i14;
        int i15;
        float f10;
        int i16;
        boolean z;
        ArrayList arrayList2;
        int i17;
        int i18;
        int i19;
        boolean z4;
        int i20;
        int i21;
        int i22;
        float f11;
        int i23;
        boolean z10;
        int i24;
        f fVar = this.f5977h;
        if (fVar.f5956j) {
            f fVar2 = this.f5978i;
            if (fVar2.f5956j) {
                f0.d dVar2 = this.f5971b.T;
                boolean z11 = dVar2 instanceof f0.e ? ((f0.e) dVar2).f5118v0 : false;
                int i25 = fVar2.f5953g - fVar.f5953g;
                ArrayList arrayList3 = this.f5938k;
                int size = arrayList3.size();
                int i26 = 0;
                while (true) {
                    i10 = -1;
                    i11 = 8;
                    if (i26 >= size) {
                        i26 = -1;
                        break;
                    } else if (((o) arrayList3.get(i26)).f5971b.f5088g0 != 8) {
                        break;
                    } else {
                        i26++;
                    }
                }
                int i27 = size - 1;
                int i28 = i27;
                while (true) {
                    if (i28 < 0) {
                        break;
                    }
                    if (((o) arrayList3.get(i28)).f5971b.f5088g0 != 8) {
                        i10 = i28;
                        break;
                    }
                    i28--;
                }
                int i29 = 0;
                while (i29 < 2) {
                    int i30 = 0;
                    i15 = 0;
                    int i31 = 0;
                    int i32 = 0;
                    f10 = 0.0f;
                    while (i30 < size) {
                        o oVar = (o) arrayList3.get(i30);
                        f0.d dVar3 = oVar.f5971b;
                        ArrayList arrayList4 = arrayList3;
                        if (dVar3.f5088g0 == i11) {
                            i23 = i26;
                        } else {
                            i32++;
                            if (i30 > 0 && i30 >= i26) {
                                i15 += oVar.f5977h.f5952f;
                            }
                            g gVar = oVar.f5974e;
                            int i33 = gVar.f5953g;
                            i23 = i26;
                            boolean z12 = oVar.f5973d != 3;
                            if (z12) {
                                int i34 = this.f5975f;
                                if (i34 == 0 && !dVar3.f5081d.f5974e.f5956j) {
                                    return;
                                }
                                if (i34 == 1 && !dVar3.f5083e.f5974e.f5956j) {
                                    return;
                                } else {
                                    z10 = z12;
                                }
                            } else {
                                z10 = z12;
                                if (oVar.f5970a == 1 && i29 == 0) {
                                    i24 = gVar.f5958m;
                                    i31++;
                                } else if (gVar.f5956j) {
                                    i24 = i33;
                                }
                                z10 = true;
                                if (z10) {
                                    i31++;
                                    float f12 = dVar3.f5096k0[this.f5975f];
                                    if (f12 >= 0.0f) {
                                        f10 += f12;
                                    }
                                } else {
                                    i15 += i24;
                                }
                                if (i30 >= i27 && i30 < i10) {
                                    i15 += -oVar.f5978i.f5952f;
                                }
                            }
                            i24 = i33;
                            if (z10) {
                            }
                            if (i30 >= i27) {
                            }
                        }
                        i30++;
                        arrayList3 = arrayList4;
                        i26 = i23;
                        i11 = 8;
                    }
                    arrayList = arrayList3;
                    i12 = i26;
                    if (i15 < i25 || i31 == 0) {
                        i13 = i31;
                        i14 = i32;
                        break;
                    } else {
                        i29++;
                        arrayList3 = arrayList;
                        i26 = i12;
                        i11 = 8;
                    }
                }
                arrayList = arrayList3;
                i12 = i26;
                i13 = 0;
                i14 = 0;
                i15 = 0;
                f10 = 0.0f;
                int i35 = fVar.f5953g;
                if (z11) {
                    i35 = fVar2.f5953g;
                }
                if (i15 > i25) {
                    i35 = z11 ? i35 + ((int) (((i15 - i25) / 2.0f) + 0.5f)) : i35 - ((int) (((i15 - i25) / 2.0f) + 0.5f));
                }
                if (i13 > 0) {
                    float f13 = i25 - i15;
                    int i36 = (int) ((f13 / i13) + 0.5f);
                    int i37 = 0;
                    int i38 = 0;
                    while (i37 < size) {
                        ArrayList arrayList5 = arrayList;
                        o oVar2 = (o) arrayList5.get(i37);
                        int i39 = i36;
                        f0.d dVar4 = oVar2.f5971b;
                        int i40 = i15;
                        int i41 = i35;
                        if (dVar4.f5088g0 != 8 && oVar2.f5973d == 3) {
                            g gVar2 = oVar2.f5974e;
                            if (gVar2.f5956j) {
                                z4 = z11;
                                f11 = f13;
                            } else {
                                if (f10 > 0.0f) {
                                    z4 = z11;
                                    i20 = (int) (((dVar4.f5096k0[this.f5975f] * f13) / f10) + 0.5f);
                                } else {
                                    z4 = z11;
                                    i20 = i39;
                                }
                                if (this.f5975f == 0) {
                                    i21 = dVar4.f5110v;
                                    i22 = dVar4.f5109u;
                                } else {
                                    i21 = dVar4.f5113y;
                                    i22 = dVar4.f5112x;
                                }
                                f11 = f13;
                                int iMax = Math.max(i22, oVar2.f5970a == 1 ? Math.min(i20, gVar2.f5958m) : i20);
                                if (i21 > 0) {
                                    iMax = Math.min(i21, iMax);
                                }
                                if (iMax != i20) {
                                    i38++;
                                    i20 = iMax;
                                }
                                gVar2.d(i20);
                            }
                        }
                        i37++;
                        i36 = i39;
                        i15 = i40;
                        i35 = i41;
                        z11 = z4;
                        f13 = f11;
                        arrayList = arrayList5;
                    }
                    i16 = i35;
                    z = z11;
                    arrayList2 = arrayList;
                    int i42 = i15;
                    if (i38 > 0) {
                        i13 -= i38;
                        int i43 = 0;
                        i15 = 0;
                        while (i43 < size) {
                            o oVar3 = (o) arrayList2.get(i43);
                            if (oVar3.f5971b.f5088g0 == 8) {
                                i19 = i12;
                            } else {
                                i19 = i12;
                                if (i43 > 0 && i43 >= i19) {
                                    i15 += oVar3.f5977h.f5952f;
                                }
                                i15 += oVar3.f5974e.f5953g;
                                if (i43 < i27 && i43 < i10) {
                                    i15 += -oVar3.f5978i.f5952f;
                                }
                            }
                            i43++;
                            i12 = i19;
                        }
                        i17 = i12;
                    } else {
                        i17 = i12;
                        i15 = i42;
                    }
                    i18 = 2;
                    if (this.l == 2 && i38 == 0) {
                        this.l = 0;
                    }
                } else {
                    i16 = i35;
                    z = z11;
                    arrayList2 = arrayList;
                    i17 = i12;
                    i18 = 2;
                }
                if (i15 > i25) {
                    this.l = i18;
                }
                if (i14 > 0 && i13 == 0 && i17 == i10) {
                    this.l = i18;
                }
                int i44 = this.l;
                if (i44 == 1) {
                    int i45 = i14 > 1 ? (i25 - i15) / (i14 - 1) : i14 == 1 ? (i25 - i15) / 2 : 0;
                    if (i13 > 0) {
                        i45 = 0;
                    }
                    int i46 = i16;
                    for (int i47 = 0; i47 < size; i47++) {
                        o oVar4 = (o) arrayList2.get(z ? size - (i47 + 1) : i47);
                        int i48 = oVar4.f5971b.f5088g0;
                        f fVar3 = oVar4.f5978i;
                        f fVar4 = oVar4.f5977h;
                        if (i48 == 8) {
                            fVar4.d(i46);
                            fVar3.d(i46);
                        } else {
                            if (i47 > 0) {
                                i46 = z ? i46 - i45 : i46 + i45;
                            }
                            if (i47 > 0 && i47 >= i17) {
                                i46 = z ? i46 - fVar4.f5952f : i46 + fVar4.f5952f;
                            }
                            if (z) {
                                fVar3.d(i46);
                            } else {
                                fVar4.d(i46);
                            }
                            g gVar3 = oVar4.f5974e;
                            int i49 = gVar3.f5953g;
                            if (oVar4.f5973d == 3 && oVar4.f5970a == 1) {
                                i49 = gVar3.f5958m;
                            }
                            i46 = z ? i46 - i49 : i46 + i49;
                            if (z) {
                                fVar4.d(i46);
                            } else {
                                fVar3.d(i46);
                            }
                            oVar4.f5976g = true;
                            if (i47 < i27 && i47 < i10) {
                                i46 = z ? i46 - (-fVar3.f5952f) : i46 + (-fVar3.f5952f);
                            }
                        }
                    }
                    return;
                }
                if (i44 == 0) {
                    int i50 = (i25 - i15) / (i14 + 1);
                    if (i13 > 0) {
                        i50 = 0;
                    }
                    int i51 = i16;
                    for (int i52 = 0; i52 < size; i52++) {
                        o oVar5 = (o) arrayList2.get(z ? size - (i52 + 1) : i52);
                        int i53 = oVar5.f5971b.f5088g0;
                        f fVar5 = oVar5.f5978i;
                        f fVar6 = oVar5.f5977h;
                        if (i53 == 8) {
                            fVar6.d(i51);
                            fVar5.d(i51);
                        } else {
                            int i54 = z ? i51 - i50 : i51 + i50;
                            if (i52 > 0 && i52 >= i17) {
                                i54 = z ? i54 - fVar6.f5952f : i54 + fVar6.f5952f;
                            }
                            if (z) {
                                fVar5.d(i54);
                            } else {
                                fVar6.d(i54);
                            }
                            g gVar4 = oVar5.f5974e;
                            int iMin = gVar4.f5953g;
                            if (oVar5.f5973d == 3 && oVar5.f5970a == 1) {
                                iMin = Math.min(iMin, gVar4.f5958m);
                            }
                            i51 = z ? i54 - iMin : i54 + iMin;
                            if (z) {
                                fVar6.d(i51);
                            } else {
                                fVar5.d(i51);
                            }
                            if (i52 < i27 && i52 < i10) {
                                i51 = z ? i51 - (-fVar5.f5952f) : i51 + (-fVar5.f5952f);
                            }
                        }
                    }
                    return;
                }
                if (i44 == 2) {
                    float f14 = this.f5975f == 0 ? this.f5971b.f5082d0 : this.f5971b.f5084e0;
                    if (z) {
                        f14 = 1.0f - f14;
                    }
                    int i55 = (int) (((i25 - i15) * f14) + 0.5f);
                    if (i55 < 0 || i13 > 0) {
                        i55 = 0;
                    }
                    int i56 = z ? i16 - i55 : i16 + i55;
                    for (int i57 = 0; i57 < size; i57++) {
                        o oVar6 = (o) arrayList2.get(z ? size - (i57 + 1) : i57);
                        int i58 = oVar6.f5971b.f5088g0;
                        f fVar7 = oVar6.f5978i;
                        f fVar8 = oVar6.f5977h;
                        if (i58 == 8) {
                            fVar8.d(i56);
                            fVar7.d(i56);
                        } else {
                            if (i57 > 0 && i57 >= i17) {
                                i56 = z ? i56 - fVar8.f5952f : i56 + fVar8.f5952f;
                            }
                            if (z) {
                                fVar7.d(i56);
                            } else {
                                fVar8.d(i56);
                            }
                            g gVar5 = oVar6.f5974e;
                            int i59 = gVar5.f5953g;
                            if (oVar6.f5973d == 3 && oVar6.f5970a == 1) {
                                i59 = gVar5.f5958m;
                            }
                            i56 = z ? i56 - i59 : i56 + i59;
                            if (z) {
                                fVar8.d(i56);
                            } else {
                                fVar7.d(i56);
                            }
                            if (i57 < i27 && i57 < i10) {
                                i56 = z ? i56 - (-fVar7.f5952f) : i56 + (-fVar7.f5952f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // g0.o
    public final void d() {
        ArrayList arrayList = this.f5938k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((o) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        f0.d dVar = ((o) arrayList.get(0)).f5971b;
        f0.d dVar2 = ((o) arrayList.get(size - 1)).f5971b;
        int i10 = this.f5975f;
        f fVar = this.f5978i;
        f fVar2 = this.f5977h;
        if (i10 == 0) {
            f0.c cVar = dVar.I;
            f0.c cVar2 = dVar2.K;
            f fVarI = o.i(cVar, 0);
            int iE = cVar.e();
            f0.d dVarM = m();
            if (dVarM != null) {
                iE = dVarM.I.e();
            }
            if (fVarI != null) {
                o.b(fVar2, fVarI, iE);
            }
            f fVarI2 = o.i(cVar2, 0);
            int iE2 = cVar2.e();
            f0.d dVarN = n();
            if (dVarN != null) {
                iE2 = dVarN.K.e();
            }
            if (fVarI2 != null) {
                o.b(fVar, fVarI2, -iE2);
            }
        } else {
            f0.c cVar3 = dVar.J;
            f0.c cVar4 = dVar2.L;
            f fVarI3 = o.i(cVar3, 1);
            int iE3 = cVar3.e();
            f0.d dVarM2 = m();
            if (dVarM2 != null) {
                iE3 = dVarM2.J.e();
            }
            if (fVarI3 != null) {
                o.b(fVar2, fVarI3, iE3);
            }
            f fVarI4 = o.i(cVar4, 1);
            int iE4 = cVar4.e();
            f0.d dVarN2 = n();
            if (dVarN2 != null) {
                iE4 = dVarN2.L.e();
            }
            if (fVarI4 != null) {
                o.b(fVar, fVarI4, -iE4);
            }
        }
        fVar2.f5947a = this;
        fVar.f5947a = this;
    }

    @Override // g0.o
    public final void e() {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f5938k;
            if (i10 >= arrayList.size()) {
                return;
            }
            ((o) arrayList.get(i10)).e();
            i10++;
        }
    }

    @Override // g0.o
    public final void f() {
        this.f5972c = null;
        Iterator it = this.f5938k.iterator();
        while (it.hasNext()) {
            ((o) it.next()).f();
        }
    }

    @Override // g0.o
    public final long j() {
        ArrayList arrayList = this.f5938k;
        int size = arrayList.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            j10 = r5.f5978i.f5952f + ((o) arrayList.get(i10)).j() + j10 + r5.f5977h.f5952f;
        }
        return j10;
    }

    @Override // g0.o
    public final boolean k() {
        ArrayList arrayList = this.f5938k;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!((o) arrayList.get(i10)).k()) {
                return false;
            }
        }
        return true;
    }

    public final f0.d m() {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f5938k;
            if (i10 >= arrayList.size()) {
                return null;
            }
            f0.d dVar = ((o) arrayList.get(i10)).f5971b;
            if (dVar.f5088g0 != 8) {
                return dVar;
            }
            i10++;
        }
    }

    public final f0.d n() {
        ArrayList arrayList = this.f5938k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            f0.d dVar = ((o) arrayList.get(size)).f5971b;
            if (dVar.f5088g0 != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ChainRun ");
        sb2.append(this.f5975f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.f5938k.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            sb2.append("<");
            sb2.append(oVar);
            sb2.append("> ");
        }
        return sb2.toString();
    }
}

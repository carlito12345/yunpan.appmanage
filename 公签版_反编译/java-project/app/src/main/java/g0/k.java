package g0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class k extends o {

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f5960k = new int[2];

    public k(f0.d dVar) {
        super(dVar);
        this.f5977h.f5951e = 4;
        this.f5978i.f5951e = 5;
        this.f5975f = 0;
    }

    public static void m(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x026b  */
    @Override // g0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(d dVar) {
        float f10;
        float f11;
        float f12;
        int i10;
        if (d0.f.c(this.f5979j) == 3) {
            f0.d dVar2 = this.f5971b;
            l(dVar2.I, dVar2.K, 0);
            return;
        }
        g gVar = this.f5974e;
        boolean z = gVar.f5956j;
        f fVar = this.f5977h;
        f fVar2 = this.f5978i;
        if (!z && this.f5973d == 3) {
            f0.d dVar3 = this.f5971b;
            int i11 = dVar3.r;
            if (i11 == 2) {
                f0.d dVar4 = dVar3.T;
                if (dVar4 != null) {
                    if (dVar4.f5081d.f5974e.f5956j) {
                        gVar.d((int) ((r3.f5953g * dVar3.f5111w) + 0.5f));
                    }
                }
            } else if (i11 == 3) {
                int i12 = dVar3.f5107s;
                if (i12 == 0 || i12 == 3) {
                    m mVar = dVar3.f5083e;
                    f fVar3 = mVar.f5977h;
                    f fVar4 = mVar.f5978i;
                    boolean z4 = dVar3.I.f5071f != null;
                    boolean z10 = dVar3.J.f5071f != null;
                    boolean z11 = dVar3.K.f5071f != null;
                    boolean z12 = dVar3.L.f5071f != null;
                    int i13 = dVar3.X;
                    if (z4 && z10 && z11 && z12) {
                        float f13 = dVar3.W;
                        boolean z13 = fVar3.f5956j;
                        int[] iArr = f5960k;
                        if (z13 && fVar4.f5956j) {
                            if (fVar.f5949c && fVar2.f5949c) {
                                m(iArr, ((f) fVar.l.get(0)).f5953g + fVar.f5952f, ((f) fVar2.l.get(0)).f5953g - fVar2.f5952f, fVar3.f5953g + fVar3.f5952f, fVar4.f5953g - fVar4.f5952f, f13, i13);
                                gVar.d(iArr[0]);
                                this.f5971b.f5083e.f5974e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        boolean z14 = fVar.f5956j;
                        ArrayList arrayList = fVar3.l;
                        if (z14 && fVar2.f5956j) {
                            if (!fVar3.f5949c || !fVar4.f5949c) {
                                return;
                            }
                            m(iArr, fVar.f5953g + fVar.f5952f, fVar2.f5953g - fVar2.f5952f, ((f) arrayList.get(0)).f5953g + fVar3.f5952f, ((f) fVar4.l.get(0)).f5953g - fVar4.f5952f, f13, i13);
                            gVar.d(iArr[0]);
                            this.f5971b.f5083e.f5974e.d(iArr[1]);
                        }
                        if (!fVar.f5949c || !fVar2.f5949c || !fVar3.f5949c || !fVar4.f5949c) {
                            return;
                        }
                        m(iArr, ((f) fVar.l.get(0)).f5953g + fVar.f5952f, ((f) fVar2.l.get(0)).f5953g - fVar2.f5952f, ((f) arrayList.get(0)).f5953g + fVar3.f5952f, ((f) fVar4.l.get(0)).f5953g - fVar4.f5952f, f13, i13);
                        gVar.d(iArr[0]);
                        this.f5971b.f5083e.f5974e.d(iArr[1]);
                    } else if (z4 && z11) {
                        if (!fVar.f5949c || !fVar2.f5949c) {
                            return;
                        }
                        float f14 = dVar3.W;
                        int i14 = ((f) fVar.l.get(0)).f5953g + fVar.f5952f;
                        int i15 = ((f) fVar2.l.get(0)).f5953g - fVar2.f5952f;
                        if (i13 == -1 || i13 == 0) {
                            int iG = g(i15 - i14, 0);
                            int i16 = (int) ((iG * f14) + 0.5f);
                            int iG2 = g(i16, 1);
                            if (i16 != iG2) {
                                iG = (int) ((iG2 / f14) + 0.5f);
                            }
                            gVar.d(iG);
                            this.f5971b.f5083e.f5974e.d(iG2);
                        } else if (i13 == 1) {
                            int iG3 = g(i15 - i14, 0);
                            int i17 = (int) ((iG3 / f14) + 0.5f);
                            int iG4 = g(i17, 1);
                            if (i17 != iG4) {
                                iG3 = (int) ((iG4 * f14) + 0.5f);
                            }
                            gVar.d(iG3);
                            this.f5971b.f5083e.f5974e.d(iG4);
                        }
                    } else if (z10 && z12) {
                        if (!fVar3.f5949c || !fVar4.f5949c) {
                            return;
                        }
                        float f15 = dVar3.W;
                        int i18 = ((f) fVar3.l.get(0)).f5953g + fVar3.f5952f;
                        int i19 = ((f) fVar4.l.get(0)).f5953g - fVar4.f5952f;
                        if (i13 == -1) {
                            int iG5 = g(i19 - i18, 1);
                            int i20 = (int) ((iG5 / f15) + 0.5f);
                            int iG6 = g(i20, 0);
                            if (i20 != iG6) {
                                iG5 = (int) ((iG6 * f15) + 0.5f);
                            }
                            gVar.d(iG6);
                            this.f5971b.f5083e.f5974e.d(iG5);
                        } else if (i13 == 0) {
                            int iG7 = g(i19 - i18, 1);
                            int i21 = (int) ((iG7 * f15) + 0.5f);
                            int iG8 = g(i21, 0);
                            if (i21 != iG8) {
                                iG7 = (int) ((iG8 / f15) + 0.5f);
                            }
                            gVar.d(iG8);
                            this.f5971b.f5083e.f5974e.d(iG7);
                        } else if (i13 == 1) {
                        }
                    }
                } else {
                    int i22 = dVar3.X;
                    if (i22 == -1) {
                        f10 = dVar3.f5083e.f5974e.f5953g;
                        f11 = dVar3.W;
                    } else if (i22 == 0) {
                        f12 = dVar3.f5083e.f5974e.f5953g / dVar3.W;
                        i10 = (int) (f12 + 0.5f);
                        gVar.d(i10);
                    } else if (i22 != 1) {
                        i10 = 0;
                        gVar.d(i10);
                    } else {
                        f10 = dVar3.f5083e.f5974e.f5953g;
                        f11 = dVar3.W;
                    }
                    f12 = f10 * f11;
                    i10 = (int) (f12 + 0.5f);
                    gVar.d(i10);
                }
            }
        }
        if (fVar.f5949c && fVar2.f5949c) {
            if (fVar.f5956j && fVar2.f5956j && gVar.f5956j) {
                return;
            }
            if (!gVar.f5956j && this.f5973d == 3) {
                f0.d dVar5 = this.f5971b;
                if (dVar5.r == 0 && !dVar5.x()) {
                    f fVar5 = (f) fVar.l.get(0);
                    f fVar6 = (f) fVar2.l.get(0);
                    int i23 = fVar5.f5953g + fVar.f5952f;
                    int i24 = fVar6.f5953g + fVar2.f5952f;
                    fVar.d(i23);
                    fVar2.d(i24);
                    gVar.d(i24 - i23);
                    return;
                }
            }
            if (!gVar.f5956j && this.f5973d == 3 && this.f5970a == 1 && fVar.l.size() > 0 && fVar2.l.size() > 0) {
                int iMin = Math.min((((f) fVar2.l.get(0)).f5953g + fVar2.f5952f) - (((f) fVar.l.get(0)).f5953g + fVar.f5952f), gVar.f5958m);
                f0.d dVar6 = this.f5971b;
                int i25 = dVar6.f5110v;
                int iMax = Math.max(dVar6.f5109u, iMin);
                if (i25 > 0) {
                    iMax = Math.min(i25, iMax);
                }
                gVar.d(iMax);
            }
            if (gVar.f5956j) {
                f fVar7 = (f) fVar.l.get(0);
                f fVar8 = (f) fVar2.l.get(0);
                int i26 = fVar7.f5953g;
                int i27 = fVar.f5952f + i26;
                int i28 = fVar8.f5953g;
                int i29 = fVar2.f5952f + i28;
                float f16 = this.f5971b.f5082d0;
                if (fVar7 == fVar8) {
                    f16 = 0.5f;
                } else {
                    i26 = i27;
                    i28 = i29;
                }
                fVar.d((int) ((((i28 - i26) - gVar.f5953g) * f16) + i26 + 0.5f));
                fVar2.d(fVar.f5953g + gVar.f5953g);
            }
        }
    }

    @Override // g0.o
    public final void d() {
        f0.d dVar;
        f0.d dVar2;
        int i10;
        f0.d dVar3;
        f0.d dVar4;
        int i11;
        f0.d dVar5 = this.f5971b;
        boolean z = dVar5.f5075a;
        g gVar = this.f5974e;
        if (z) {
            gVar.d(dVar5.q());
        }
        boolean z4 = gVar.f5956j;
        f fVar = this.f5978i;
        f fVar2 = this.f5977h;
        if (!z4) {
            f0.d dVar6 = this.f5971b;
            int i12 = dVar6.f5105p0[0];
            this.f5973d = i12;
            if (i12 != 3) {
                if (i12 == 4 && (dVar4 = dVar6.T) != null && ((i11 = dVar4.f5105p0[0]) == 1 || i11 == 4)) {
                    int iQ = (dVar4.q() - this.f5971b.I.e()) - this.f5971b.K.e();
                    o.b(fVar2, dVar4.f5081d.f5977h, this.f5971b.I.e());
                    o.b(fVar, dVar4.f5081d.f5978i, -this.f5971b.K.e());
                    gVar.d(iQ);
                    return;
                }
                if (i12 == 1) {
                    gVar.d(dVar6.q());
                }
            }
        } else if (this.f5973d == 4 && (dVar2 = (dVar = this.f5971b).T) != null && ((i10 = dVar2.f5105p0[0]) == 1 || i10 == 4)) {
            o.b(fVar2, dVar2.f5081d.f5977h, dVar.I.e());
            o.b(fVar, dVar2.f5081d.f5978i, -this.f5971b.K.e());
            return;
        }
        if (gVar.f5956j) {
            f0.d dVar7 = this.f5971b;
            if (dVar7.f5075a) {
                f0.c[] cVarArr = dVar7.Q;
                f0.c cVar = cVarArr[0];
                f0.c cVar2 = cVar.f5071f;
                if (cVar2 != null && cVarArr[1].f5071f != null) {
                    if (dVar7.x()) {
                        fVar2.f5952f = this.f5971b.Q[0].e();
                        fVar.f5952f = -this.f5971b.Q[1].e();
                        return;
                    }
                    f fVarH = o.h(this.f5971b.Q[0]);
                    if (fVarH != null) {
                        o.b(fVar2, fVarH, this.f5971b.Q[0].e());
                    }
                    f fVarH2 = o.h(this.f5971b.Q[1]);
                    if (fVarH2 != null) {
                        o.b(fVar, fVarH2, -this.f5971b.Q[1].e());
                    }
                    fVar2.f5948b = true;
                    fVar.f5948b = true;
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = o.h(cVar);
                    if (fVarH3 != null) {
                        o.b(fVar2, fVarH3, this.f5971b.Q[0].e());
                        o.b(fVar, fVar2, gVar.f5953g);
                        return;
                    }
                    return;
                }
                f0.c cVar3 = cVarArr[1];
                if (cVar3.f5071f != null) {
                    f fVarH4 = o.h(cVar3);
                    if (fVarH4 != null) {
                        o.b(fVar, fVarH4, -this.f5971b.Q[1].e());
                        o.b(fVar2, fVar, -gVar.f5953g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof f0.i) || dVar7.T == null || dVar7.i(7).f5071f != null) {
                    return;
                }
                f0.d dVar8 = this.f5971b;
                o.b(fVar2, dVar8.T.f5081d.f5977h, dVar8.r());
                o.b(fVar, fVar2, gVar.f5953g);
                return;
            }
        }
        if (this.f5973d == 3) {
            f0.d dVar9 = this.f5971b;
            int i13 = dVar9.r;
            if (i13 == 2) {
                f0.d dVar10 = dVar9.T;
                if (dVar10 != null) {
                    g gVar2 = dVar10.f5083e.f5974e;
                    gVar.l.add(gVar2);
                    gVar2.f5957k.add(gVar);
                    gVar.f5948b = true;
                    gVar.f5957k.add(fVar2);
                    gVar.f5957k.add(fVar);
                }
            } else if (i13 == 3) {
                if (dVar9.f5107s == 3) {
                    fVar2.f5947a = this;
                    fVar.f5947a = this;
                    m mVar = dVar9.f5083e;
                    mVar.f5977h.f5947a = this;
                    mVar.f5978i.f5947a = this;
                    gVar.f5947a = this;
                    if (dVar9.y()) {
                        gVar.l.add(this.f5971b.f5083e.f5974e);
                        this.f5971b.f5083e.f5974e.f5957k.add(gVar);
                        m mVar2 = this.f5971b.f5083e;
                        mVar2.f5974e.f5947a = this;
                        gVar.l.add(mVar2.f5977h);
                        gVar.l.add(this.f5971b.f5083e.f5978i);
                        this.f5971b.f5083e.f5977h.f5957k.add(gVar);
                        this.f5971b.f5083e.f5978i.f5957k.add(gVar);
                    } else if (this.f5971b.x()) {
                        this.f5971b.f5083e.f5974e.l.add(gVar);
                        gVar.f5957k.add(this.f5971b.f5083e.f5974e);
                    } else {
                        this.f5971b.f5083e.f5974e.l.add(gVar);
                    }
                } else {
                    g gVar3 = dVar9.f5083e.f5974e;
                    gVar.l.add(gVar3);
                    gVar3.f5957k.add(gVar);
                    this.f5971b.f5083e.f5977h.f5957k.add(gVar);
                    this.f5971b.f5083e.f5978i.f5957k.add(gVar);
                    gVar.f5948b = true;
                    gVar.f5957k.add(fVar2);
                    gVar.f5957k.add(fVar);
                    fVar2.l.add(gVar);
                    fVar.l.add(gVar);
                }
            }
        }
        f0.d dVar11 = this.f5971b;
        f0.c[] cVarArr2 = dVar11.Q;
        f0.c cVar4 = cVarArr2[0];
        f0.c cVar5 = cVar4.f5071f;
        if (cVar5 != null && cVarArr2[1].f5071f != null) {
            if (dVar11.x()) {
                fVar2.f5952f = this.f5971b.Q[0].e();
                fVar.f5952f = -this.f5971b.Q[1].e();
                return;
            }
            f fVarH5 = o.h(this.f5971b.Q[0]);
            f fVarH6 = o.h(this.f5971b.Q[1]);
            if (fVarH5 != null) {
                fVarH5.b(this);
            }
            if (fVarH6 != null) {
                fVarH6.b(this);
            }
            this.f5979j = 4;
            return;
        }
        if (cVar5 != null) {
            f fVarH7 = o.h(cVar4);
            if (fVarH7 != null) {
                o.b(fVar2, fVarH7, this.f5971b.Q[0].e());
                c(fVar, fVar2, 1, gVar);
                return;
            }
            return;
        }
        f0.c cVar6 = cVarArr2[1];
        if (cVar6.f5071f != null) {
            f fVarH8 = o.h(cVar6);
            if (fVarH8 != null) {
                o.b(fVar, fVarH8, -this.f5971b.Q[1].e());
                c(fVar2, fVar, -1, gVar);
                return;
            }
            return;
        }
        if ((dVar11 instanceof f0.i) || (dVar3 = dVar11.T) == null) {
            return;
        }
        o.b(fVar2, dVar3.f5081d.f5977h, dVar11.r());
        c(fVar, fVar2, 1, gVar);
    }

    @Override // g0.o
    public final void e() {
        f fVar = this.f5977h;
        if (fVar.f5956j) {
            this.f5971b.Y = fVar.f5953g;
        }
    }

    @Override // g0.o
    public final void f() {
        this.f5972c = null;
        this.f5977h.c();
        this.f5978i.c();
        this.f5974e.c();
        this.f5976g = false;
    }

    @Override // g0.o
    public final boolean k() {
        return this.f5973d != 3 || this.f5971b.r == 0;
    }

    public final void n() {
        this.f5976g = false;
        f fVar = this.f5977h;
        fVar.c();
        fVar.f5956j = false;
        f fVar2 = this.f5978i;
        fVar2.c();
        fVar2.f5956j = false;
        this.f5974e.f5956j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f5971b.f5090h0;
    }
}

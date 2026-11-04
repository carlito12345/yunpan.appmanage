package f0;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public int f5123a;

    /* renamed from: d, reason: collision with root package name */
    public c f5126d;

    /* renamed from: e, reason: collision with root package name */
    public c f5127e;

    /* renamed from: f, reason: collision with root package name */
    public c f5128f;

    /* renamed from: g, reason: collision with root package name */
    public c f5129g;

    /* renamed from: h, reason: collision with root package name */
    public int f5130h;

    /* renamed from: i, reason: collision with root package name */
    public int f5131i;

    /* renamed from: j, reason: collision with root package name */
    public int f5132j;

    /* renamed from: k, reason: collision with root package name */
    public int f5133k;

    /* renamed from: q, reason: collision with root package name */
    public int f5138q;
    public final /* synthetic */ g r;

    /* renamed from: b, reason: collision with root package name */
    public d f5124b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f5125c = 0;
    public int l = 0;

    /* renamed from: m, reason: collision with root package name */
    public int f5134m = 0;

    /* renamed from: n, reason: collision with root package name */
    public int f5135n = 0;

    /* renamed from: o, reason: collision with root package name */
    public int f5136o = 0;

    /* renamed from: p, reason: collision with root package name */
    public int f5137p = 0;

    public f(g gVar, int i10, c cVar, c cVar2, c cVar3, c cVar4, int i11) {
        this.r = gVar;
        this.f5130h = 0;
        this.f5131i = 0;
        this.f5132j = 0;
        this.f5133k = 0;
        this.f5138q = 0;
        this.f5123a = i10;
        this.f5126d = cVar;
        this.f5127e = cVar2;
        this.f5128f = cVar3;
        this.f5129g = cVar4;
        this.f5130h = gVar.f5144w0;
        this.f5131i = gVar.s0;
        this.f5132j = gVar.f5145x0;
        this.f5133k = gVar.f5141t0;
        this.f5138q = i11;
    }

    public final void a(d dVar) {
        int i10 = this.f5123a;
        g gVar = this.r;
        if (i10 == 0) {
            int iU = gVar.U(dVar, this.f5138q);
            if (dVar.f5105p0[0] == 3) {
                this.f5137p++;
                iU = 0;
            }
            this.l = iU + (dVar.f5088g0 != 8 ? gVar.P0 : 0) + this.l;
            int iT = gVar.T(dVar, this.f5138q);
            if (this.f5124b == null || this.f5125c < iT) {
                this.f5124b = dVar;
                this.f5125c = iT;
                this.f5134m = iT;
            }
        } else {
            int iU2 = gVar.U(dVar, this.f5138q);
            int iT2 = gVar.T(dVar, this.f5138q);
            if (dVar.f5105p0[1] == 3) {
                this.f5137p++;
                iT2 = 0;
            }
            this.f5134m = iT2 + (dVar.f5088g0 != 8 ? gVar.Q0 : 0) + this.f5134m;
            if (this.f5124b == null || this.f5125c < iU2) {
                this.f5124b = dVar;
                this.f5125c = iU2;
                this.l = iU2;
            }
        }
        this.f5136o++;
    }

    public final void b(int i10, boolean z, boolean z4) {
        g gVar;
        int i11;
        int i12;
        int i13;
        d dVar;
        int i14;
        int i15;
        float f10;
        float f11;
        int i16;
        float f12;
        int i17;
        int i18 = this.f5136o;
        int i19 = 0;
        while (true) {
            gVar = this.r;
            if (i19 >= i18 || (i17 = this.f5135n + i19) >= gVar.f5140b1) {
                break;
            }
            d dVar2 = gVar.f5139a1[i17];
            if (dVar2 != null) {
                dVar2.D();
            }
            i19++;
        }
        if (i18 == 0 || this.f5124b == null) {
            return;
        }
        boolean z10 = z4 && i10 == 0;
        int i20 = -1;
        int i21 = -1;
        for (int i22 = 0; i22 < i18; i22++) {
            int i23 = this.f5135n + (z ? (i18 - 1) - i22 : i22);
            if (i23 >= gVar.f5140b1) {
                break;
            }
            d dVar3 = gVar.f5139a1[i23];
            if (dVar3 != null && dVar3.f5088g0 == 0) {
                if (i20 == -1) {
                    i20 = i22;
                }
                i21 = i22;
            }
        }
        if (this.f5123a != 0) {
            d dVar4 = this.f5124b;
            dVar4.f5092i0 = gVar.D0;
            int i24 = this.f5130h;
            if (i10 > 0) {
                i24 += gVar.P0;
            }
            c cVar = dVar4.I;
            c cVar2 = dVar4.K;
            if (z) {
                cVar2.a(this.f5128f, i24);
                if (z4) {
                    cVar.a(this.f5126d, this.f5132j);
                }
                if (i10 > 0) {
                    this.f5128f.f5069d.I.a(cVar2, 0);
                }
            } else {
                cVar.a(this.f5126d, i24);
                if (z4) {
                    cVar2.a(this.f5128f, this.f5132j);
                }
                if (i10 > 0) {
                    this.f5126d.f5069d.K.a(cVar, 0);
                }
            }
            d dVar5 = null;
            for (int i25 = 0; i25 < i18; i25++) {
                int i26 = this.f5135n + i25;
                if (i26 >= gVar.f5140b1) {
                    return;
                }
                d dVar6 = gVar.f5139a1[i26];
                if (dVar6 != null) {
                    c cVar3 = dVar6.J;
                    if (i25 == 0) {
                        dVar6.f(cVar3, this.f5127e, this.f5131i);
                        int i27 = gVar.E0;
                        float f13 = gVar.K0;
                        if (this.f5135n == 0) {
                            i13 = gVar.G0;
                            i11 = i27;
                            i12 = -1;
                            if (i13 != -1) {
                                f13 = gVar.M0;
                            }
                            dVar6.f5094j0 = i13;
                            dVar6.f5084e0 = f13;
                        } else {
                            i11 = i27;
                            i12 = -1;
                        }
                        if (!z4 || (i13 = gVar.I0) == i12) {
                            i13 = i11;
                        } else {
                            f13 = gVar.O0;
                        }
                        dVar6.f5094j0 = i13;
                        dVar6.f5084e0 = f13;
                    }
                    if (i25 == i18 - 1) {
                        dVar6.f(dVar6.L, this.f5129g, this.f5133k);
                    }
                    if (dVar5 != null) {
                        int i28 = gVar.Q0;
                        c cVar4 = dVar5.L;
                        cVar3.a(cVar4, i28);
                        if (i25 == i20) {
                            int i29 = this.f5131i;
                            if (cVar3.h()) {
                                cVar3.f5073h = i29;
                            }
                        }
                        cVar4.a(cVar3, 0);
                        if (i25 == i21 + 1) {
                            int i30 = this.f5133k;
                            if (cVar4.h()) {
                                cVar4.f5073h = i30;
                            }
                        }
                    }
                    if (dVar6 != dVar4) {
                        c cVar5 = dVar6.K;
                        c cVar6 = dVar6.I;
                        if (z) {
                            int i31 = gVar.R0;
                            if (i31 == 0) {
                                cVar5.a(cVar2, 0);
                            } else if (i31 == 1) {
                                cVar6.a(cVar, 0);
                            } else if (i31 == 2) {
                                cVar6.a(cVar, 0);
                                cVar5.a(cVar2, 0);
                            }
                            dVar5 = dVar6;
                        } else {
                            int i32 = gVar.R0;
                            if (i32 == 0) {
                                cVar6.a(cVar, 0);
                            } else if (i32 == 1) {
                                cVar5.a(cVar2, 0);
                            } else if (i32 == 2) {
                                if (z10) {
                                    cVar6.a(this.f5126d, this.f5130h);
                                    cVar5.a(this.f5128f, this.f5132j);
                                } else {
                                    cVar6.a(cVar, 0);
                                    cVar5.a(cVar2, 0);
                                }
                            }
                            dVar5 = dVar6;
                        }
                    } else {
                        dVar5 = dVar6;
                    }
                }
            }
            return;
        }
        d dVar7 = this.f5124b;
        dVar7.f5094j0 = gVar.E0;
        int i33 = this.f5131i;
        if (i10 > 0) {
            i33 += gVar.Q0;
        }
        c cVar7 = this.f5127e;
        c cVar8 = dVar7.J;
        cVar8.a(cVar7, i33);
        c cVar9 = dVar7.L;
        if (z4) {
            cVar9.a(this.f5129g, this.f5133k);
        }
        if (i10 > 0) {
            this.f5127e.f5069d.L.a(cVar8, 0);
        }
        if (gVar.S0 != 3 || dVar7.E) {
            dVar = dVar7;
        } else {
            for (int i34 = 0; i34 < i18; i34++) {
                int i35 = this.f5135n + (z ? (i18 - 1) - i34 : i34);
                if (i35 >= gVar.f5140b1) {
                    break;
                }
                dVar = gVar.f5139a1[i35];
                if (dVar.E) {
                    break;
                }
            }
            dVar = dVar7;
        }
        d dVar8 = null;
        int i36 = 0;
        while (i36 < i18) {
            int i37 = z ? (i18 - 1) - i36 : i36;
            int i38 = this.f5135n + i37;
            if (i38 >= gVar.f5140b1) {
                return;
            }
            d dVar9 = gVar.f5139a1[i38];
            if (dVar9 == null) {
                i14 = i18;
            } else {
                c cVar10 = dVar9.I;
                if (i36 == 0) {
                    dVar9.f(cVar10, this.f5126d, this.f5130h);
                }
                if (i37 == 0) {
                    int i39 = gVar.D0;
                    if (z) {
                        i15 = i39;
                        f10 = 1.0f - gVar.J0;
                    } else {
                        i15 = i39;
                        f10 = gVar.J0;
                    }
                    if (this.f5135n == 0) {
                        int i40 = gVar.F0;
                        f11 = f10;
                        if (i40 != -1) {
                            f12 = z ? 1.0f - gVar.L0 : gVar.L0;
                            i16 = i40;
                        }
                        dVar9.f5092i0 = i16;
                        dVar9.f5082d0 = f12;
                    } else {
                        f11 = f10;
                    }
                    if (!z4 || (i16 = gVar.H0) == -1) {
                        i16 = i15;
                        f12 = f11;
                    } else {
                        f12 = z ? 1.0f - gVar.N0 : gVar.N0;
                    }
                    dVar9.f5092i0 = i16;
                    dVar9.f5082d0 = f12;
                }
                if (i36 == i18 - 1) {
                    i14 = i18;
                    dVar9.f(dVar9.K, this.f5128f, this.f5132j);
                } else {
                    i14 = i18;
                }
                if (dVar8 != null) {
                    int i41 = gVar.P0;
                    c cVar11 = dVar8.K;
                    cVar10.a(cVar11, i41);
                    if (i36 == i20) {
                        int i42 = this.f5130h;
                        if (cVar10.h()) {
                            cVar10.f5073h = i42;
                        }
                    }
                    cVar11.a(cVar10, 0);
                    if (i36 == i21 + 1) {
                        int i43 = this.f5132j;
                        if (cVar11.h()) {
                            cVar11.f5073h = i43;
                        }
                    }
                }
                if (dVar9 != dVar7) {
                    int i44 = gVar.S0;
                    if (i44 == 3 && dVar.E && dVar9 != dVar && dVar9.E) {
                        dVar9.M.a(dVar.M, 0);
                    } else {
                        c cVar12 = dVar9.J;
                        if (i44 != 0) {
                            c cVar13 = dVar9.L;
                            if (i44 == 1) {
                                cVar13.a(cVar9, 0);
                            } else if (z10) {
                                cVar12.a(this.f5127e, this.f5131i);
                                cVar13.a(this.f5129g, this.f5133k);
                            } else {
                                cVar12.a(cVar8, 0);
                                cVar13.a(cVar9, 0);
                            }
                        } else {
                            cVar12.a(cVar8, 0);
                        }
                    }
                }
                dVar8 = dVar9;
            }
            i36++;
            i18 = i14;
        }
    }

    public final int c() {
        return this.f5123a == 1 ? this.f5134m - this.r.Q0 : this.f5134m;
    }

    public final int d() {
        return this.f5123a == 0 ? this.l - this.r.P0 : this.l;
    }

    public final void e(int i10) {
        g gVar;
        int i11;
        int i12 = this.f5137p;
        if (i12 == 0) {
            return;
        }
        int i13 = this.f5136o;
        int i14 = i10 / i12;
        int i15 = 0;
        while (true) {
            gVar = this.r;
            if (i15 >= i13 || (i11 = this.f5135n + i15) >= gVar.f5140b1) {
                break;
            }
            d dVar = gVar.f5139a1[i11];
            if (this.f5123a == 0) {
                if (dVar != null) {
                    int[] iArr = dVar.f5105p0;
                    if (iArr[0] == 3 && dVar.r == 0) {
                        gVar.V(1, i14, iArr[1], dVar.k(), dVar);
                    }
                }
            } else if (dVar != null) {
                int[] iArr2 = dVar.f5105p0;
                if (iArr2[1] == 3 && dVar.f5107s == 0) {
                    gVar.V(iArr2[0], dVar.q(), 1, i14, dVar);
                }
            }
            i15++;
        }
        this.l = 0;
        this.f5134m = 0;
        this.f5124b = null;
        this.f5125c = 0;
        int i16 = this.f5136o;
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = this.f5135n + i17;
            if (i18 >= gVar.f5140b1) {
                return;
            }
            d dVar2 = gVar.f5139a1[i18];
            if (this.f5123a == 0) {
                int iQ = dVar2.q();
                int i19 = gVar.P0;
                if (dVar2.f5088g0 == 8) {
                    i19 = 0;
                }
                this.l = iQ + i19 + this.l;
                int iT = gVar.T(dVar2, this.f5138q);
                if (this.f5124b == null || this.f5125c < iT) {
                    this.f5124b = dVar2;
                    this.f5125c = iT;
                    this.f5134m = iT;
                }
            } else {
                int iU = gVar.U(dVar2, this.f5138q);
                int iT2 = gVar.T(dVar2, this.f5138q);
                int i20 = gVar.Q0;
                if (dVar2.f5088g0 == 8) {
                    i20 = 0;
                }
                this.f5134m = iT2 + i20 + this.f5134m;
                if (this.f5124b == null || this.f5125c < iU) {
                    this.f5124b = dVar2;
                    this.f5125c = iU;
                    this.l = iU;
                }
            }
        }
    }

    public final void f(int i10, c cVar, c cVar2, c cVar3, c cVar4, int i11, int i12, int i13, int i14, int i15) {
        this.f5123a = i10;
        this.f5126d = cVar;
        this.f5127e = cVar2;
        this.f5128f = cVar3;
        this.f5129g = cVar4;
        this.f5130h = i11;
        this.f5131i = i12;
        this.f5132j = i13;
        this.f5133k = i14;
        this.f5138q = i15;
    }
}

package f0;

/* loaded from: classes.dex */
public final class a extends i {
    public int s0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f5047t0 = true;

    /* renamed from: u0, reason: collision with root package name */
    public int f5048u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f5049v0 = false;

    @Override // f0.d
    public final boolean A() {
        return this.f5049v0;
    }

    @Override // f0.d
    public final boolean B() {
        return this.f5049v0;
    }

    public final boolean T() {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        boolean z = true;
        while (true) {
            i10 = this.f5154r0;
            if (i13 >= i10) {
                break;
            }
            d dVar = this.f5153q0[i13];
            if ((this.f5047t0 || dVar.c()) && ((((i11 = this.s0) == 0 || i11 == 1) && !dVar.A()) || (((i12 = this.s0) == 2 || i12 == 3) && !dVar.B()))) {
                z = false;
            }
            i13++;
        }
        if (!z || i10 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z4 = false;
        for (int i14 = 0; i14 < this.f5154r0; i14++) {
            d dVar2 = this.f5153q0[i14];
            if (this.f5047t0 || dVar2.c()) {
                if (!z4) {
                    int i15 = this.s0;
                    if (i15 == 0) {
                        iMax = dVar2.i(2).d();
                    } else if (i15 == 1) {
                        iMax = dVar2.i(4).d();
                    } else if (i15 == 2) {
                        iMax = dVar2.i(3).d();
                    } else if (i15 == 3) {
                        iMax = dVar2.i(5).d();
                    }
                    z4 = true;
                }
                int i16 = this.s0;
                if (i16 == 0) {
                    iMax = Math.min(iMax, dVar2.i(2).d());
                } else if (i16 == 1) {
                    iMax = Math.max(iMax, dVar2.i(4).d());
                } else if (i16 == 2) {
                    iMax = Math.min(iMax, dVar2.i(3).d());
                } else if (i16 == 3) {
                    iMax = Math.max(iMax, dVar2.i(5).d());
                }
            }
        }
        int i17 = iMax + this.f5048u0;
        int i18 = this.s0;
        if (i18 == 0 || i18 == 1) {
            J(i17, i17);
        } else {
            K(i17, i17);
        }
        this.f5049v0 = true;
        return true;
    }

    public final int U() {
        int i10 = this.s0;
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        return (i10 == 2 || i10 == 3) ? 1 : -1;
    }

    @Override // f0.d
    public final void b(d0.c cVar, boolean z) {
        boolean z4;
        int i10;
        int i11;
        c[] cVarArr = this.Q;
        c cVar2 = this.I;
        cVarArr[0] = cVar2;
        c cVar3 = this.J;
        int i12 = 2;
        cVarArr[2] = cVar3;
        c cVar4 = this.K;
        cVarArr[1] = cVar4;
        c cVar5 = this.L;
        cVarArr[3] = cVar5;
        for (c cVar6 : cVarArr) {
            cVar6.f5074i = cVar.k(cVar6);
        }
        int i13 = this.s0;
        if (i13 < 0 || i13 >= 4) {
            return;
        }
        c cVar7 = cVarArr[i13];
        if (!this.f5049v0) {
            T();
        }
        if (this.f5049v0) {
            this.f5049v0 = false;
            int i14 = this.s0;
            if (i14 == 0 || i14 == 1) {
                cVar.d(cVar2.f5074i, this.Y);
                cVar.d(cVar4.f5074i, this.Y);
                return;
            } else {
                if (i14 == 2 || i14 == 3) {
                    cVar.d(cVar3.f5074i, this.Z);
                    cVar.d(cVar5.f5074i, this.Z);
                    return;
                }
                return;
            }
        }
        for (int i15 = 0; i15 < this.f5154r0; i15++) {
            d dVar = this.f5153q0[i15];
            if ((this.f5047t0 || dVar.c()) && ((((i11 = this.s0) == 0 || i11 == 1) && dVar.f5105p0[0] == 3 && dVar.I.f5071f != null && dVar.K.f5071f != null) || ((i11 == 2 || i11 == 3) && dVar.f5105p0[1] == 3 && dVar.J.f5071f != null && dVar.L.f5071f != null))) {
                z4 = true;
                break;
            }
        }
        z4 = false;
        boolean z10 = cVar2.g() || cVar4.g();
        boolean z11 = cVar3.g() || cVar5.g();
        int i16 = (z4 || !(((i10 = this.s0) == 0 && z10) || ((i10 == 2 && z11) || ((i10 == 1 && z10) || (i10 == 3 && z11))))) ? 4 : 5;
        int i17 = 0;
        while (i17 < this.f5154r0) {
            d dVar2 = this.f5153q0[i17];
            if (this.f5047t0 || dVar2.c()) {
                d0.g gVarK = cVar.k(dVar2.Q[this.s0]);
                int i18 = this.s0;
                c cVar8 = dVar2.Q[i18];
                cVar8.f5074i = gVarK;
                c cVar9 = cVar8.f5071f;
                int i19 = (cVar9 == null || cVar9.f5069d != this) ? 0 : cVar8.f5072g;
                if (i18 == 0 || i18 == i12) {
                    d0.g gVar = cVar7.f5074i;
                    int i20 = this.f5048u0 - i19;
                    d0.b bVarL = cVar.l();
                    d0.g gVarM = cVar.m();
                    gVarM.f4236d = 0;
                    bVarL.c(gVar, gVarK, gVarM, i20);
                    cVar.c(bVarL);
                } else {
                    d0.g gVar2 = cVar7.f5074i;
                    int i21 = this.f5048u0 + i19;
                    d0.b bVarL2 = cVar.l();
                    d0.g gVarM2 = cVar.m();
                    gVarM2.f4236d = 0;
                    bVarL2.b(gVar2, gVarK, gVarM2, i21);
                    cVar.c(bVarL2);
                }
                cVar.e(cVar7.f5074i, gVarK, this.f5048u0 + i19, i16);
            }
            i17++;
            i12 = 2;
        }
        int i22 = this.s0;
        if (i22 == 0) {
            cVar.e(cVar4.f5074i, cVar2.f5074i, 0, 8);
            cVar.e(cVar2.f5074i, this.T.K.f5074i, 0, 4);
            cVar.e(cVar2.f5074i, this.T.I.f5074i, 0, 0);
            return;
        }
        if (i22 == 1) {
            cVar.e(cVar2.f5074i, cVar4.f5074i, 0, 8);
            cVar.e(cVar2.f5074i, this.T.I.f5074i, 0, 4);
            cVar.e(cVar2.f5074i, this.T.K.f5074i, 0, 0);
        } else if (i22 == 2) {
            cVar.e(cVar5.f5074i, cVar3.f5074i, 0, 8);
            cVar.e(cVar3.f5074i, this.T.L.f5074i, 0, 4);
            cVar.e(cVar3.f5074i, this.T.J.f5074i, 0, 0);
        } else if (i22 == 3) {
            cVar.e(cVar3.f5074i, cVar5.f5074i, 0, 8);
            cVar.e(cVar3.f5074i, this.T.J.f5074i, 0, 4);
            cVar.e(cVar3.f5074i, this.T.L.f5074i, 0, 0);
        }
    }

    @Override // f0.d
    public final boolean c() {
        return true;
    }

    @Override // f0.d
    public final String toString() {
        String strL = g.b.l(this.f5090h0, " {", new StringBuilder("[Barrier] "));
        for (int i10 = 0; i10 < this.f5154r0; i10++) {
            d dVar = this.f5153q0[i10];
            if (i10 > 0) {
                strL = g.b.j(strL, ", ");
            }
            StringBuilder sbM = g.b.m(strL);
            sbM.append(dVar.f5090h0);
            strL = sbM.toString();
        }
        return g.b.j(strL, "}");
    }
}

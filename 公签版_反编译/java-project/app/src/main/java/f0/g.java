package f0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class g extends i {

    /* renamed from: a1, reason: collision with root package name */
    public d[] f5139a1;
    public int s0 = 0;

    /* renamed from: t0, reason: collision with root package name */
    public int f5141t0 = 0;

    /* renamed from: u0, reason: collision with root package name */
    public int f5142u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public int f5143v0 = 0;

    /* renamed from: w0, reason: collision with root package name */
    public int f5144w0 = 0;

    /* renamed from: x0, reason: collision with root package name */
    public int f5145x0 = 0;

    /* renamed from: y0, reason: collision with root package name */
    public boolean f5146y0 = false;

    /* renamed from: z0, reason: collision with root package name */
    public int f5147z0 = 0;
    public int A0 = 0;
    public final g0.b B0 = new g0.b();
    public i0.f C0 = null;
    public int D0 = -1;
    public int E0 = -1;
    public int F0 = -1;
    public int G0 = -1;
    public int H0 = -1;
    public int I0 = -1;
    public float J0 = 0.5f;
    public float K0 = 0.5f;
    public float L0 = 0.5f;
    public float M0 = 0.5f;
    public float N0 = 0.5f;
    public float O0 = 0.5f;
    public int P0 = 0;
    public int Q0 = 0;
    public int R0 = 2;
    public int S0 = 2;
    public int T0 = 0;
    public int U0 = -1;
    public int V0 = 0;
    public final ArrayList W0 = new ArrayList();
    public d[] X0 = null;
    public d[] Y0 = null;
    public int[] Z0 = null;

    /* renamed from: b1, reason: collision with root package name */
    public int f5140b1 = 0;

    @Override // f0.i
    public final void S() {
        for (int i10 = 0; i10 < this.f5154r0; i10++) {
            d dVar = this.f5153q0[i10];
            if (dVar != null) {
                dVar.F = true;
            }
        }
    }

    public final int T(d dVar, int i10) {
        if (dVar == null) {
            return 0;
        }
        int[] iArr = dVar.f5105p0;
        if (iArr[1] == 3) {
            int i11 = dVar.f5107s;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (dVar.z * i10);
                if (i12 != dVar.k()) {
                    dVar.f5087g = true;
                    V(iArr[0], dVar.q(), 1, i12, dVar);
                }
                return i12;
            }
            if (i11 == 1) {
                return dVar.k();
            }
            if (i11 == 3) {
                return (int) ((dVar.q() * dVar.W) + 0.5f);
            }
        }
        return dVar.k();
    }

    public final int U(d dVar, int i10) {
        if (dVar == null) {
            return 0;
        }
        int[] iArr = dVar.f5105p0;
        if (iArr[0] == 3) {
            int i11 = dVar.r;
            if (i11 == 0) {
                return 0;
            }
            if (i11 == 2) {
                int i12 = (int) (dVar.f5111w * i10);
                if (i12 != dVar.q()) {
                    dVar.f5087g = true;
                    V(1, i12, iArr[1], dVar.k(), dVar);
                }
                return i12;
            }
            if (i11 == 1) {
                return dVar.q();
            }
            if (i11 == 3) {
                return (int) ((dVar.k() * dVar.W) + 0.5f);
            }
        }
        return dVar.q();
    }

    public final void V(int i10, int i11, int i12, int i13, d dVar) {
        i0.f fVar;
        d dVar2;
        while (true) {
            fVar = this.C0;
            if (fVar != null || (dVar2 = this.T) == null) {
                break;
            } else {
                this.C0 = ((e) dVar2).f5117u0;
            }
        }
        g0.b bVar = this.B0;
        bVar.f5928a = i10;
        bVar.f5929b = i12;
        bVar.f5930c = i11;
        bVar.f5931d = i13;
        fVar.b(dVar, bVar);
        dVar.O(bVar.f5932e);
        dVar.L(bVar.f5933f);
        dVar.E = bVar.f5935h;
        dVar.I(bVar.f5934g);
    }

    @Override // f0.d
    public final void b(d0.c cVar, boolean z) {
        d dVar;
        float f10;
        int i10;
        super.b(cVar, z);
        d dVar2 = this.T;
        boolean z4 = dVar2 != null && ((e) dVar2).f5118v0;
        int i11 = this.T0;
        ArrayList arrayList = this.W0;
        if (i11 != 0) {
            if (i11 == 1) {
                int size = arrayList.size();
                int i12 = 0;
                while (i12 < size) {
                    ((f) arrayList.get(i12)).b(i12, z4, i12 == size + (-1));
                    i12++;
                }
            } else if (i11 != 2) {
                if (i11 == 3) {
                    int size2 = arrayList.size();
                    int i13 = 0;
                    while (i13 < size2) {
                        ((f) arrayList.get(i13)).b(i13, z4, i13 == size2 + (-1));
                        i13++;
                    }
                }
            } else if (this.Z0 != null && this.Y0 != null && this.X0 != null) {
                for (int i14 = 0; i14 < this.f5140b1; i14++) {
                    this.f5139a1[i14].D();
                }
                int[] iArr = this.Z0;
                int i15 = iArr[0];
                int i16 = iArr[1];
                float f11 = this.J0;
                d dVar3 = null;
                int i17 = 0;
                while (i17 < i15) {
                    if (z4) {
                        i10 = (i15 - i17) - 1;
                        f10 = 1.0f - this.J0;
                    } else {
                        f10 = f11;
                        i10 = i17;
                    }
                    d dVar4 = this.Y0[i10];
                    if (dVar4 != null && dVar4.f5088g0 != 8) {
                        c cVar2 = dVar4.I;
                        if (i17 == 0) {
                            dVar4.f(cVar2, this.I, this.f5144w0);
                            dVar4.f5092i0 = this.D0;
                            dVar4.f5082d0 = f10;
                        }
                        if (i17 == i15 - 1) {
                            dVar4.f(dVar4.K, this.K, this.f5145x0);
                        }
                        if (i17 > 0 && dVar3 != null) {
                            int i18 = this.P0;
                            c cVar3 = dVar3.K;
                            dVar4.f(cVar2, cVar3, i18);
                            dVar3.f(cVar3, cVar2, 0);
                        }
                        dVar3 = dVar4;
                    }
                    i17++;
                    f11 = f10;
                }
                for (int i19 = 0; i19 < i16; i19++) {
                    d dVar5 = this.X0[i19];
                    if (dVar5 != null && dVar5.f5088g0 != 8) {
                        c cVar4 = dVar5.J;
                        if (i19 == 0) {
                            dVar5.f(cVar4, this.J, this.s0);
                            dVar5.f5094j0 = this.E0;
                            dVar5.f5084e0 = this.K0;
                        }
                        if (i19 == i16 - 1) {
                            dVar5.f(dVar5.L, this.L, this.f5141t0);
                        }
                        if (i19 > 0 && dVar3 != null) {
                            int i20 = this.Q0;
                            c cVar5 = dVar3.L;
                            dVar5.f(cVar4, cVar5, i20);
                            dVar3.f(cVar5, cVar4, 0);
                        }
                        dVar3 = dVar5;
                    }
                }
                for (int i21 = 0; i21 < i15; i21++) {
                    for (int i22 = 0; i22 < i16; i22++) {
                        int i23 = (i22 * i15) + i21;
                        if (this.V0 == 1) {
                            i23 = (i21 * i16) + i22;
                        }
                        d[] dVarArr = this.f5139a1;
                        if (i23 < dVarArr.length && (dVar = dVarArr[i23]) != null && dVar.f5088g0 != 8) {
                            d dVar6 = this.Y0[i21];
                            d dVar7 = this.X0[i22];
                            if (dVar != dVar6) {
                                dVar.f(dVar.I, dVar6.I, 0);
                                dVar.f(dVar.K, dVar6.K, 0);
                            }
                            if (dVar != dVar7) {
                                dVar.f(dVar.J, dVar7.J, 0);
                                dVar.f(dVar.L, dVar7.L, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((f) arrayList.get(0)).b(0, z4, true);
        }
        this.f5146y0 = false;
    }
}

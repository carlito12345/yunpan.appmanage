package f0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class h extends d {

    /* renamed from: q0, reason: collision with root package name */
    public float f5148q0 = -1.0f;

    /* renamed from: r0, reason: collision with root package name */
    public int f5149r0 = -1;
    public int s0 = -1;

    /* renamed from: t0, reason: collision with root package name */
    public c f5150t0 = this.J;

    /* renamed from: u0, reason: collision with root package name */
    public int f5151u0 = 0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f5152v0;

    public h() {
        this.R.clear();
        this.R.add(this.f5150t0);
        int length = this.Q.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.Q[i10] = this.f5150t0;
        }
    }

    @Override // f0.d
    public final boolean A() {
        return this.f5152v0;
    }

    @Override // f0.d
    public final boolean B() {
        return this.f5152v0;
    }

    @Override // f0.d
    public final void Q(d0.c cVar, boolean z) {
        if (this.T == null) {
            return;
        }
        c cVar2 = this.f5150t0;
        cVar.getClass();
        int iN = d0.c.n(cVar2);
        if (this.f5151u0 == 1) {
            this.Y = iN;
            this.Z = 0;
            L(this.T.k());
            O(0);
            return;
        }
        this.Y = 0;
        this.Z = iN;
        O(this.T.q());
        L(0);
    }

    public final void R(int i10) {
        this.f5150t0.l(i10);
        this.f5152v0 = true;
    }

    public final void S(int i10) {
        if (this.f5151u0 == i10) {
            return;
        }
        this.f5151u0 = i10;
        ArrayList arrayList = this.R;
        arrayList.clear();
        if (this.f5151u0 == 1) {
            this.f5150t0 = this.I;
        } else {
            this.f5150t0 = this.J;
        }
        arrayList.add(this.f5150t0);
        c[] cVarArr = this.Q;
        int length = cVarArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            cVarArr[i11] = this.f5150t0;
        }
    }

    @Override // f0.d
    public final void b(d0.c cVar, boolean z) {
        e eVar = (e) this.T;
        if (eVar == null) {
            return;
        }
        Object objI = eVar.i(2);
        Object objI2 = eVar.i(4);
        d dVar = this.T;
        boolean z4 = dVar != null && dVar.f5105p0[0] == 2;
        if (this.f5151u0 == 0) {
            objI = eVar.i(3);
            objI2 = eVar.i(5);
            d dVar2 = this.T;
            z4 = dVar2 != null && dVar2.f5105p0[1] == 2;
        }
        if (this.f5152v0) {
            c cVar2 = this.f5150t0;
            if (cVar2.f5068c) {
                d0.g gVarK = cVar.k(cVar2);
                cVar.d(gVarK, this.f5150t0.d());
                if (this.f5149r0 != -1) {
                    if (z4) {
                        cVar.f(cVar.k(objI2), gVarK, 0, 5);
                    }
                } else if (this.s0 != -1 && z4) {
                    d0.g gVarK2 = cVar.k(objI2);
                    cVar.f(gVarK, cVar.k(objI), 0, 5);
                    cVar.f(gVarK2, gVarK, 0, 5);
                }
                this.f5152v0 = false;
                return;
            }
        }
        if (this.f5149r0 != -1) {
            d0.g gVarK3 = cVar.k(this.f5150t0);
            cVar.e(gVarK3, cVar.k(objI), this.f5149r0, 8);
            if (z4) {
                cVar.f(cVar.k(objI2), gVarK3, 0, 5);
                return;
            }
            return;
        }
        if (this.s0 != -1) {
            d0.g gVarK4 = cVar.k(this.f5150t0);
            d0.g gVarK5 = cVar.k(objI2);
            cVar.e(gVarK4, gVarK5, -this.s0, 8);
            if (z4) {
                cVar.f(gVarK4, cVar.k(objI), 0, 5);
                cVar.f(gVarK5, gVarK4, 0, 5);
                return;
            }
            return;
        }
        if (this.f5148q0 != -1.0f) {
            d0.g gVarK6 = cVar.k(this.f5150t0);
            d0.g gVarK7 = cVar.k(objI2);
            float f10 = this.f5148q0;
            d0.b bVarL = cVar.l();
            bVarL.f4209d.g(gVarK6, -1.0f);
            bVarL.f4209d.g(gVarK7, f10);
            cVar.c(bVarL);
        }
    }

    @Override // f0.d
    public final boolean c() {
        return true;
    }

    @Override // f0.d
    public final c i(int i10) {
        int iC = d0.f.c(i10);
        if (iC != 1) {
            if (iC != 2) {
                if (iC != 3) {
                    if (iC != 4) {
                        return null;
                    }
                }
            }
            if (this.f5151u0 == 0) {
                return this.f5150t0;
            }
            return null;
        }
        if (this.f5151u0 == 1) {
            return this.f5150t0;
        }
        return null;
    }
}

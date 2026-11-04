package f2;

/* loaded from: classes.dex */
public final class h1 implements a0, z {

    /* renamed from: a, reason: collision with root package name */
    public final a0 f5284a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5285b;

    /* renamed from: c, reason: collision with root package name */
    public z f5286c;

    public h1(a0 a0Var, long j10) {
        this.f5284a = a0Var;
        this.f5285b = j10;
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        y1.i0 i0Var = new y1.i0(j0Var);
        i0Var.f18705a = j0Var.f18708a - this.f5285b;
        return this.f5284a.a(new y1.j0(i0Var));
    }

    @Override // f2.z
    public final void b(d1 d1Var) {
        z zVar = this.f5286c;
        zVar.getClass();
        zVar.b(this);
    }

    @Override // f2.d1
    public final long c() {
        long jC = this.f5284a.c();
        if (jC == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f5285b + jC;
    }

    @Override // f2.z
    public final void d(a0 a0Var) {
        z zVar = this.f5286c;
        zVar.getClass();
        zVar.d(this);
    }

    @Override // f2.a0
    public final void g() {
        this.f5284a.g();
    }

    @Override // f2.a0
    public final long h(long j10) {
        long j11 = this.f5285b;
        return this.f5284a.h(j10 - j11) + j11;
    }

    @Override // f2.a0
    public final void i(long j10) {
        this.f5284a.i(j10 - this.f5285b);
    }

    @Override // f2.d1
    public final boolean j() {
        return this.f5284a.j();
    }

    @Override // f2.a0
    public final long k(long j10, y1.e1 e1Var) {
        long j11 = this.f5285b;
        return this.f5284a.k(j10 - j11, e1Var) + j11;
    }

    @Override // f2.a0
    public final void l(z zVar, long j10) {
        this.f5286c = zVar;
        this.f5284a.l(this, j10 - this.f5285b);
    }

    @Override // f2.a0
    public final long m() {
        long jM = this.f5284a.m();
        if (jM == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.f5285b + jM;
    }

    @Override // f2.a0
    public final j1 n() {
        return this.f5284a.n();
    }

    @Override // f2.a0
    public final long o(h2.p[] pVarArr, boolean[] zArr, c1[] c1VarArr, boolean[] zArr2, long j10) {
        c1[] c1VarArr2 = new c1[c1VarArr.length];
        int i10 = 0;
        while (true) {
            c1 c1Var = null;
            if (i10 >= c1VarArr.length) {
                break;
            }
            g1 g1Var = (g1) c1VarArr[i10];
            if (g1Var != null) {
                c1Var = g1Var.f5278a;
            }
            c1VarArr2[i10] = c1Var;
            i10++;
        }
        long j11 = this.f5285b;
        long jO = this.f5284a.o(pVarArr, zArr, c1VarArr2, zArr2, j10 - j11);
        for (int i11 = 0; i11 < c1VarArr.length; i11++) {
            c1 c1Var2 = c1VarArr2[i11];
            if (c1Var2 == null) {
                c1VarArr[i11] = null;
            } else {
                c1 c1Var3 = c1VarArr[i11];
                if (c1Var3 == null || ((g1) c1Var3).f5278a != c1Var2) {
                    c1VarArr[i11] = new g1(c1Var2, j11);
                }
            }
        }
        return jO + j11;
    }

    @Override // f2.d1
    public final long p() {
        long jP = this.f5284a.p();
        if (jP == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return this.f5285b + jP;
    }

    @Override // f2.d1
    public final void r(long j10) {
        this.f5284a.r(j10 - this.f5285b);
    }
}

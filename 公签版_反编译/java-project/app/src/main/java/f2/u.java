package f2;

/* loaded from: classes.dex */
public final class u implements a0, z {

    /* renamed from: a, reason: collision with root package name */
    public final c0 f5385a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5386b;

    /* renamed from: c, reason: collision with root package name */
    public final s4.a f5387c;

    /* renamed from: d, reason: collision with root package name */
    public a f5388d;

    /* renamed from: e, reason: collision with root package name */
    public a0 f5389e;

    /* renamed from: f, reason: collision with root package name */
    public z f5390f;

    /* renamed from: g, reason: collision with root package name */
    public long f5391g = -9223372036854775807L;

    public u(c0 c0Var, s4.a aVar, long j10) {
        this.f5385a = c0Var;
        this.f5387c = aVar;
        this.f5386b = j10;
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        a0 a0Var = this.f5389e;
        return a0Var != null && a0Var.a(j0Var);
    }

    @Override // f2.z
    public final void b(d1 d1Var) {
        z zVar = this.f5390f;
        String str = u1.f0.f15206a;
        zVar.b(this);
    }

    @Override // f2.d1
    public final long c() {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.c();
    }

    @Override // f2.z
    public final void d(a0 a0Var) {
        z zVar = this.f5390f;
        String str = u1.f0.f15206a;
        zVar.d(this);
    }

    public final void e(c0 c0Var) {
        long j10 = this.f5391g;
        if (j10 == -9223372036854775807L) {
            j10 = this.f5386b;
        }
        a aVar = this.f5388d;
        aVar.getClass();
        a0 a0VarA = aVar.a(c0Var, this.f5387c, j10);
        this.f5389e = a0VarA;
        if (this.f5390f != null) {
            a0VarA.l(this, j10);
        }
    }

    @Override // f2.a0
    public final void g() {
        a0 a0Var = this.f5389e;
        if (a0Var != null) {
            a0Var.g();
            return;
        }
        a aVar = this.f5388d;
        if (aVar != null) {
            aVar.i();
        }
    }

    @Override // f2.a0
    public final long h(long j10) {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.h(j10);
    }

    @Override // f2.a0
    public final void i(long j10) {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        a0Var.i(j10);
    }

    @Override // f2.d1
    public final boolean j() {
        a0 a0Var = this.f5389e;
        return a0Var != null && a0Var.j();
    }

    @Override // f2.a0
    public final long k(long j10, y1.e1 e1Var) {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.k(j10, e1Var);
    }

    @Override // f2.a0
    public final void l(z zVar, long j10) {
        this.f5390f = zVar;
        a0 a0Var = this.f5389e;
        if (a0Var != null) {
            long j11 = this.f5391g;
            if (j11 == -9223372036854775807L) {
                j11 = this.f5386b;
            }
            a0Var.l(this, j11);
        }
    }

    @Override // f2.a0
    public final long m() {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.m();
    }

    @Override // f2.a0
    public final j1 n() {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.n();
    }

    @Override // f2.a0
    public final long o(h2.p[] pVarArr, boolean[] zArr, c1[] c1VarArr, boolean[] zArr2, long j10) {
        long j11 = this.f5391g;
        long j12 = (j11 == -9223372036854775807L || j10 != this.f5386b) ? j10 : j11;
        this.f5391g = -9223372036854775807L;
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.o(pVarArr, zArr, c1VarArr, zArr2, j12);
    }

    @Override // f2.d1
    public final long p() {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        return a0Var.p();
    }

    @Override // f2.d1
    public final void r(long j10) {
        a0 a0Var = this.f5389e;
        String str = u1.f0.f15206a;
        a0Var.r(j10);
    }
}

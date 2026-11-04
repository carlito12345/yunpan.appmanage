package y1;

import ua.i8;

/* loaded from: classes.dex */
public abstract class a implements x0 {

    /* renamed from: b, reason: collision with root package name */
    public final int f18553b;

    /* renamed from: d, reason: collision with root package name */
    public b1 f18555d;

    /* renamed from: e, reason: collision with root package name */
    public int f18556e;

    /* renamed from: f, reason: collision with root package name */
    public z1.i f18557f;

    /* renamed from: g, reason: collision with root package name */
    public u1.z f18558g;

    /* renamed from: h, reason: collision with root package name */
    public int f18559h;

    /* renamed from: i, reason: collision with root package name */
    public f2.c1 f18560i;

    /* renamed from: j, reason: collision with root package name */
    public r1.p[] f18561j;

    /* renamed from: k, reason: collision with root package name */
    public long f18562k;
    public long l;

    /* renamed from: n, reason: collision with root package name */
    public boolean f18564n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f18565p;
    public f2.c0 r;

    /* renamed from: s, reason: collision with root package name */
    public h2.n f18567s;

    /* renamed from: a, reason: collision with root package name */
    public final Object f18552a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final i8 f18554c = new i8(11);

    /* renamed from: m, reason: collision with root package name */
    public long f18563m = Long.MIN_VALUE;

    /* renamed from: q, reason: collision with root package name */
    public r1.q0 f18566q = r1.q0.f13551a;

    public a(int i10) {
        this.f18553b = i10;
    }

    public void A(float f10, float f11) {
    }

    public abstract int B(r1.p pVar);

    public int C() {
        return 0;
    }

    public boolean D(long j10) {
        return false;
    }

    public final k f(Exception exc, r1.p pVar, boolean z, int i10) {
        int iB;
        if (pVar == null || this.f18565p) {
            iB = 4;
        } else {
            this.f18565p = true;
            try {
                iB = B(pVar) & 7;
            } catch (k unused) {
            } finally {
                this.f18565p = false;
            }
        }
        return new k(1, exc, i10, j(), this.f18556e, pVar, pVar == null ? 4 : iB, this.r, z);
    }

    public void g() {
    }

    public long h(long j10, long j11) {
        return (this.f18559h == 1 && (m() || l())) ? 1000000L : 10000L;
    }

    public k0 i() {
        return null;
    }

    public abstract String j();

    public final boolean k() {
        return this.f18563m == Long.MIN_VALUE;
    }

    public abstract boolean l();

    public abstract boolean m();

    public abstract void n();

    public abstract void p(long j10, boolean z, boolean z4);

    public final int w(i8 i8Var, x1.g gVar, int i10) {
        f2.c1 c1Var = this.f18560i;
        c1Var.getClass();
        int iN = c1Var.n(i8Var, gVar, i10);
        if (iN == -4) {
            if (gVar.c(4)) {
                this.f18563m = Long.MIN_VALUE;
                return this.f18564n ? -4 : -3;
            }
            long j10 = gVar.f18089g + this.f18562k;
            gVar.f18089g = j10;
            this.f18563m = Math.max(this.f18563m, j10);
        } else if (iN == -5) {
            r1.p pVar = (r1.p) i8Var.f15742c;
            pVar.getClass();
            long j11 = pVar.f13527t;
            if (j11 != Long.MAX_VALUE) {
                r1.o oVar = new r1.o(pVar);
                oVar.f13496s = j11 + this.f18562k;
                i8Var.f15742c = new r1.p(oVar);
            }
        }
        return iN;
    }

    public abstract void x(long j10, long j11);

    public final void y(r1.p[] pVarArr, f2.c1 c1Var, long j10, long j11, f2.c0 c0Var) {
        a9.o.t(!this.f18564n);
        this.f18560i = c1Var;
        this.r = c0Var;
        if (this.f18563m == Long.MIN_VALUE) {
            this.f18563m = j10;
        }
        this.f18561j = pVarArr;
        this.f18562k = j11;
        u(pVarArr, j10, j11, c0Var);
    }

    public final void z(long j10, boolean z, boolean z4) {
        this.f18564n = false;
        this.l = j10;
        this.f18563m = j10;
        if (!z4) {
            f2.c1 c1Var = this.f18560i;
            c1Var.getClass();
            z4 = c1Var.m(j10 - this.f18562k) != 0;
        }
        p(j10, z, z4);
    }

    public void q() {
    }

    public void r() {
    }

    public void s() {
    }

    public void t() {
    }

    public void v() {
    }

    @Override // y1.x0
    public void d(int i10, Object obj) {
    }

    public void o(boolean z, boolean z4) {
    }

    public void u(r1.p[] pVarArr, long j10, long j11, f2.c0 c0Var) {
    }
}

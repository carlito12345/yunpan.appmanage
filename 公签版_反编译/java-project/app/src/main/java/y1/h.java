package y1;

import a2.q1;

/* loaded from: classes.dex */
public final class h implements k0 {

    /* renamed from: a, reason: collision with root package name */
    public final ba.n f18697a;

    /* renamed from: b, reason: collision with root package name */
    public final f0 f18698b;

    /* renamed from: c, reason: collision with root package name */
    public a f18699c;

    /* renamed from: d, reason: collision with root package name */
    public k0 f18700d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18701e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18702f;

    public h(f0 f0Var, u1.z zVar) {
        this.f18698b = f0Var;
        this.f18697a = new ba.n(zVar);
    }

    @Override // y1.k0
    public final long a() {
        if (this.f18701e) {
            return this.f18697a.a();
        }
        k0 k0Var = this.f18700d;
        k0Var.getClass();
        return k0Var.a();
    }

    @Override // y1.k0
    public final boolean b() {
        if (this.f18701e) {
            this.f18697a.getClass();
            return false;
        }
        k0 k0Var = this.f18700d;
        k0Var.getClass();
        return k0Var.b();
    }

    @Override // y1.k0
    public final r1.h0 c() {
        k0 k0Var = this.f18700d;
        return k0Var != null ? k0Var.c() : (r1.h0) this.f18697a.f2725e;
    }

    public final void d(a aVar) {
        k0 k0Var;
        k0 k0VarI = aVar.i();
        if (k0VarI == null || k0VarI == (k0Var = this.f18700d)) {
            return;
        }
        if (k0Var != null) {
            throw new k(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f18700d = k0VarI;
        this.f18699c = aVar;
        ((q1) k0VarI).e((r1.h0) this.f18697a.f2725e);
    }

    @Override // y1.k0
    public final void e(r1.h0 h0Var) {
        k0 k0Var = this.f18700d;
        if (k0Var != null) {
            k0Var.e(h0Var);
            h0Var = this.f18700d.c();
        }
        this.f18697a.e(h0Var);
    }
}

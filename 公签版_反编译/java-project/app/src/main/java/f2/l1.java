package f2;

/* loaded from: classes.dex */
public abstract class l1 extends k {

    /* renamed from: k, reason: collision with root package name */
    public final a f5320k;

    public l1(a aVar) {
        this.f5320k = aVar;
    }

    public void A() {
        z();
    }

    @Override // f2.a
    public final r1.q0 f() {
        return this.f5320k.f();
    }

    @Override // f2.a
    public final r1.y g() {
        return this.f5320k.g();
    }

    @Override // f2.a
    public final boolean h() {
        return this.f5320k.h();
    }

    @Override // f2.a
    public final void k(w1.x xVar) {
        this.f5304j = xVar;
        this.f5303i = u1.f0.k(null);
        A();
    }

    @Override // f2.a
    public void r(r1.y yVar) {
        this.f5320k.r(yVar);
    }

    @Override // f2.k
    public final c0 s(Object obj, c0 c0Var) {
        return x(c0Var);
    }

    @Override // f2.k
    public final long t(Object obj, long j10) {
        return j10;
    }

    @Override // f2.k
    public final int u(int i10, Object obj) {
        return i10;
    }

    @Override // f2.k
    public final void v(Object obj, a aVar, r1.q0 q0Var) {
        y(q0Var);
    }

    public abstract void y(r1.q0 q0Var);

    public final void z() {
        w(null, this.f5320k);
    }

    public c0 x(c0 c0Var) {
        return c0Var;
    }
}

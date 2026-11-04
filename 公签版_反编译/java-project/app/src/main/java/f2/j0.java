package f2;

/* loaded from: classes.dex */
public final class j0 implements h2.p {

    /* renamed from: a, reason: collision with root package name */
    public final h2.p f5296a;

    /* renamed from: b, reason: collision with root package name */
    public final r1.r0 f5297b;

    public j0(h2.p pVar, r1.r0 r0Var) {
        this.f5296a = pVar;
        this.f5297b = r0Var;
    }

    @Override // h2.p
    public final r1.r0 a() {
        return this.f5297b;
    }

    @Override // h2.p
    public final void b(boolean z) {
        this.f5296a.b(z);
    }

    @Override // h2.p
    public final r1.p c(int i10) {
        return this.f5297b.f13556d[this.f5296a.e(i10)];
    }

    @Override // h2.p
    public final void d() {
        this.f5296a.d();
    }

    @Override // h2.p
    public final int e(int i10) {
        return this.f5296a.e(i10);
    }

    public final boolean equals(Object obj) {
        if (m(obj) && (obj instanceof j0)) {
            return this.f5297b.equals(((j0) obj).f5297b);
        }
        return false;
    }

    @Override // h2.p
    public final void f() {
        this.f5296a.f();
    }

    @Override // h2.p
    public final int g() {
        return this.f5296a.g();
    }

    @Override // h2.p
    public final r1.p h() {
        return this.f5297b.f13556d[this.f5296a.g()];
    }

    public final int hashCode() {
        return this.f5297b.hashCode() + (this.f5296a.hashCode() * 31);
    }

    @Override // h2.p
    public final void i(float f10) {
        this.f5296a.i(f10);
    }

    @Override // h2.p
    public final void j() {
        this.f5296a.j();
    }

    @Override // h2.p
    public final void k() {
        this.f5296a.k();
    }

    @Override // h2.p
    public final int l(int i10) {
        return this.f5296a.l(i10);
    }

    @Override // h2.p
    public final int length() {
        return this.f5296a.length();
    }

    public final boolean m(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j0) {
            return this.f5296a.equals(((j0) obj).f5296a);
        }
        return false;
    }
}

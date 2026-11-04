package f2;

import java.util.List;

/* loaded from: classes.dex */
public final class l implements d1 {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f5316a;

    /* renamed from: b, reason: collision with root package name */
    public final u7.g0 f5317b;

    public l(d1 d1Var, List list) {
        this.f5316a = d1Var;
        this.f5317b = u7.g0.m(list);
    }

    @Override // f2.d1
    public final boolean a(y1.j0 j0Var) {
        return this.f5316a.a(j0Var);
    }

    public final u7.g0 b() {
        return this.f5317b;
    }

    @Override // f2.d1
    public final long c() {
        return this.f5316a.c();
    }

    @Override // f2.d1
    public final boolean j() {
        return this.f5316a.j();
    }

    @Override // f2.d1
    public final long p() {
        return this.f5316a.p();
    }

    @Override // f2.d1
    public final void r(long j10) {
        this.f5316a.r(j10);
    }
}

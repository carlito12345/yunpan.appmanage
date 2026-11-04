package f2;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class q0 implements l2.j0 {

    /* renamed from: a, reason: collision with root package name */
    public final b1 f5357a;

    /* renamed from: b, reason: collision with root package name */
    public final b1 f5358b;

    /* renamed from: c, reason: collision with root package name */
    public final l2.n f5359c = new l2.n();

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f5360d = new AtomicReference(p0.PASS_THROUGH);

    public q0(b1 b1Var) {
        this.f5357a = b1Var;
        this.f5358b = b1Var;
    }

    @Override // l2.j0
    public final void a(int i10, u1.q qVar) {
        h().a(i10, qVar);
    }

    @Override // l2.j0
    public final void b(long j10, int i10, int i11, int i12, l2.i0 i0Var) {
        h().b(j10, i10, i11, i12, i0Var);
        AtomicReference atomicReference = this.f5360d;
        if (atomicReference.get() == p0.DISCARD_AFTER_NEXT_SAMPLE_METADATA) {
            this.f5358b.r(false);
            atomicReference.set(p0.DISCARDING);
        }
    }

    @Override // l2.j0
    public final void c(u1.q qVar, int i10, int i11) {
        h().c(qVar, i10, i11);
    }

    @Override // l2.j0
    public final int e(r1.h hVar, int i10, boolean z) {
        return h().e(hVar, i10, z);
    }

    @Override // l2.j0
    public final int f(r1.h hVar, int i10, boolean z) {
        return h().f(hVar, i10, z);
    }

    @Override // l2.j0
    public final void g(r1.p pVar) {
        this.f5357a.g(pVar);
    }

    public final l2.j0 h() {
        return this.f5360d.get() == p0.DISCARDING ? this.f5359c : this.f5358b;
    }

    @Override // l2.j0
    public final void d(long j10) {
    }
}

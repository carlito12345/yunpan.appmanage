package f2;

import ua.i8;

/* loaded from: classes.dex */
public final class g1 implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final c1 f5278a;

    /* renamed from: b, reason: collision with root package name */
    public final long f5279b;

    public g1(c1 c1Var, long j10) {
        this.f5278a = c1Var;
        this.f5279b = j10;
    }

    @Override // f2.c1
    public final boolean isReady() {
        return this.f5278a.isReady();
    }

    @Override // f2.c1
    public final void j() {
        this.f5278a.j();
    }

    @Override // f2.c1
    public final int m(long j10) {
        return this.f5278a.m(j10 - this.f5279b);
    }

    @Override // f2.c1
    public final int n(i8 i8Var, x1.g gVar, int i10) {
        int iN = this.f5278a.n(i8Var, gVar, i10);
        if (iN == -4) {
            gVar.f18089g += this.f5279b;
        }
        return iN;
    }
}

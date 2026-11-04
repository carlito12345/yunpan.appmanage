package f2;

/* loaded from: classes.dex */
public final class w extends r1.q0 {

    /* renamed from: b, reason: collision with root package name */
    public final r1.y f5416b;

    public w(r1.y yVar) {
        this.f5416b = yVar;
    }

    @Override // r1.q0
    public final int b(Object obj) {
        return obj == v.f5413e ? 0 : -1;
    }

    @Override // r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        o0Var.h(z ? 0 : null, z ? v.f5413e : null, 0, -9223372036854775807L, 0L, r1.c.f13422c, true);
        return o0Var;
    }

    @Override // r1.q0
    public final int h() {
        return 1;
    }

    @Override // r1.q0
    public final Object l(int i10) {
        return v.f5413e;
    }

    @Override // r1.q0
    public final r1.p0 m(int i10, r1.p0 p0Var, long j10) {
        Object obj = r1.p0.f13533p;
        p0Var.b(this.f5416b, false, true, null, 0L, -9223372036854775807L);
        p0Var.f13544j = true;
        return p0Var;
    }

    @Override // r1.q0
    public final int o() {
        return 1;
    }
}

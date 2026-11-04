package y1;

/* loaded from: classes.dex */
public final class z0 extends f2.r {

    /* renamed from: c, reason: collision with root package name */
    public final r1.p0 f18881c;

    public z0(r1.q0 q0Var) {
        super(q0Var);
        this.f18881c = new r1.p0();
    }

    @Override // f2.r, r1.q0
    public final r1.o0 f(int i10, r1.o0 o0Var, boolean z) {
        r1.q0 q0Var = this.f5361b;
        r1.o0 o0VarF = q0Var.f(i10, o0Var, z);
        if (q0Var.m(o0VarF.f13505c, this.f18881c, 0L).a()) {
            o0VarF.h(o0Var.f13503a, o0Var.f13504b, o0Var.f13505c, o0Var.f13506d, o0Var.f13507e, r1.c.f13422c, true);
        } else {
            o0VarF.f13508f = true;
        }
        return o0VarF;
    }
}

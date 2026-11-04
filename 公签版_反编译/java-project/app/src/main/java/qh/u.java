package qh;

/* loaded from: classes3.dex */
public enum u extends c0 {
    public u() {
        super("BeforeHead", 2);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
            return true;
        }
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
            return true;
        }
        if (r0Var.c()) {
            cVar.k(this);
            return false;
        }
        if (r0Var.f() && ((o0) r0Var).m().equals("html")) {
            return c0.f13260g.d(r0Var, cVar);
        }
        if (r0Var.f()) {
            o0 o0Var = (o0) r0Var;
            if (o0Var.m().equals("head")) {
                cVar.f13246o = cVar.w(o0Var);
                cVar.l = c0.f13257d;
                return true;
            }
        }
        if (r0Var.e() && oh.f.d(((n0) r0Var).m(), b0.f13212e)) {
            cVar.J("head");
            return cVar.H(r0Var);
        }
        if (r0Var.e()) {
            cVar.k(this);
            return false;
        }
        cVar.J("head");
        return cVar.H(r0Var);
    }
}

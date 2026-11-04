package qh;

/* loaded from: classes3.dex */
public enum p extends c0 {
    public p() {
        super("AfterFrameset", 20);
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
            y yVar = c0.f13260g;
            cVar.getClass();
            return yVar.d(r0Var, cVar);
        }
        if (r0Var.e() && ((n0) r0Var).m().equals("html")) {
            cVar.l = c0.f13274y;
            return true;
        }
        if (r0Var.f() && ((o0) r0Var).m().equals("noframes")) {
            v vVar = c0.f13257d;
            cVar.getClass();
            return vVar.d(r0Var, cVar);
        }
        if (r0Var.d()) {
            return true;
        }
        cVar.k(this);
        return false;
    }
}

package qh;

/* loaded from: classes3.dex */
public enum q extends c0 {
    public q() {
        super("AfterAfterBody", 21);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
            return true;
        }
        if (r0Var.c() || (r0Var.f() && ((o0) r0Var).m().equals("html"))) {
            y yVar = c0.f13260g;
            cVar.getClass();
            return yVar.d(r0Var, cVar);
        }
        if (c0.a(r0Var)) {
            cVar.u((j0) r0Var, cVar.f13236d);
            return true;
        }
        if (r0Var.d()) {
            return true;
        }
        cVar.k(this);
        cVar.O();
        return cVar.H(r0Var);
    }
}

package qh;

/* loaded from: classes3.dex */
public enum r extends c0 {
    public r() {
        super("AfterAfterFrameset", 22);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
            return true;
        }
        if (r0Var.c() || c0.a(r0Var) || (r0Var.f() && ((o0) r0Var).m().equals("html"))) {
            y yVar = c0.f13260g;
            cVar.getClass();
            return yVar.d(r0Var, cVar);
        }
        if (r0Var.d()) {
            return true;
        }
        if (!r0Var.f() || !((o0) r0Var).m().equals("noframes")) {
            cVar.k(this);
            return false;
        }
        v vVar = c0.f13257d;
        cVar.getClass();
        return vVar.d(r0Var, cVar);
    }
}

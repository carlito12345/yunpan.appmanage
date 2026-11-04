package qh;

/* loaded from: classes3.dex */
public enum m extends c0 {
    public m() {
        super("AfterBody", 18);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        ph.l lVarN = cVar.n("html");
        boolean zA = c0.a(r0Var);
        y yVar = c0.f13260g;
        if (zA) {
            if (lVarN != null) {
                cVar.u((j0) r0Var, lVarN);
                return true;
            }
            yVar.d(r0Var, cVar);
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
            return yVar.d(r0Var, cVar);
        }
        if (r0Var.e() && ((n0) r0Var).m().equals("html")) {
            cVar.l = c0.f13273x;
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

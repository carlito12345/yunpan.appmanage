package qh;

/* loaded from: classes3.dex */
public enum t extends c0 {
    public t() {
        super("BeforeHtml", 1);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.c()) {
            cVar.k(this);
            return false;
        }
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
            return true;
        }
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
            return true;
        }
        boolean zF = r0Var.f();
        u uVar = c0.f13256c;
        if (zF) {
            o0 o0Var = (o0) r0Var;
            if (o0Var.m().equals("html")) {
                cVar.w(o0Var);
                cVar.l = uVar;
                return true;
            }
        }
        if (r0Var.e() && oh.f.d(((n0) r0Var).m(), b0.f13212e)) {
            cVar.J("html");
            cVar.l = uVar;
            return cVar.H(r0Var);
        }
        if (r0Var.e()) {
            cVar.k(this);
            return false;
        }
        cVar.J("html");
        cVar.l = uVar;
        return cVar.H(r0Var);
    }
}

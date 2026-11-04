package qh;

/* loaded from: classes3.dex */
public enum x extends c0 {
    public x() {
        super("AfterHead", 5);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
        } else if (r0Var.b()) {
            cVar.v((k0) r0Var);
        } else if (r0Var.c()) {
            cVar.k(this);
        } else {
            boolean zF = r0Var.f();
            v vVar = c0.f13257d;
            if (zF) {
                o0 o0Var = (o0) r0Var;
                String strM = o0Var.m();
                boolean zEquals = strM.equals("html");
                y yVar = c0.f13260g;
                if (zEquals) {
                    cVar.getClass();
                    return yVar.d(r0Var, cVar);
                }
                if (strM.equals("body")) {
                    cVar.w(o0Var);
                    cVar.f13251u = false;
                    cVar.l = yVar;
                } else if (strM.equals("frameset")) {
                    cVar.w(o0Var);
                    cVar.l = c0.f13271v;
                } else if (oh.f.d(strM, b0.f13214g)) {
                    cVar.k(this);
                    ph.l lVar = cVar.f13246o;
                    cVar.f13237e.add(lVar);
                    vVar.d(r0Var, cVar);
                    cVar.N(lVar);
                } else {
                    if (strM.equals("head")) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.J("body");
                    cVar.f13251u = true;
                    cVar.H(r0Var);
                }
            } else if (r0Var.e()) {
                String strM2 = ((n0) r0Var).m();
                if (oh.f.d(strM2, b0.f13211d)) {
                    cVar.J("body");
                    cVar.f13251u = true;
                    cVar.H(r0Var);
                } else {
                    if (!strM2.equals("template")) {
                        cVar.k(this);
                        return false;
                    }
                    cVar.getClass();
                    vVar.d(r0Var, cVar);
                }
            } else {
                cVar.J("body");
                cVar.f13251u = true;
                cVar.H(r0Var);
            }
        }
        return true;
    }
}

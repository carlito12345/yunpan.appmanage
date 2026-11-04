package qh;

/* loaded from: classes3.dex */
public enum v extends c0 {
    public v() {
        super("InHead", 3);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
            return true;
        }
        int iC = d0.f.c(r0Var.f13338a);
        if (iC == 0) {
            cVar.k(this);
            return false;
        }
        if (iC == 1) {
            o0 o0Var = (o0) r0Var;
            String strM = o0Var.m();
            if (strM.equals("html")) {
                return c0.f13260g.d(r0Var, cVar);
            }
            if (oh.f.d(strM, b0.f13208a)) {
                ph.l lVarX = cVar.x(o0Var);
                if (strM.equals("base") && lVarX.j("href") && !cVar.f13245n) {
                    String strA = lVarX.a("href");
                    if (strA.length() != 0) {
                        cVar.f13238f = strA;
                        cVar.f13245n = true;
                        ph.h hVar = cVar.f13236d;
                        hVar.getClass();
                        hVar.F(strA);
                    }
                }
            } else if (strM.equals("meta")) {
                cVar.x(o0Var);
            } else if (strM.equals("title") || oh.f.d(strM, b0.f13209b)) {
                c0.b(o0Var, cVar, cVar.Q(o0Var).f());
            } else if (strM.equals("noscript")) {
                cVar.w(o0Var);
                cVar.l = c0.f13258e;
            } else if (strM.equals("script")) {
                cVar.f13235c.o(k3.f13303f);
                cVar.f13244m = cVar.l;
                cVar.l = c0.f13261h;
                cVar.w(o0Var);
            } else {
                if (strM.equals("head")) {
                    cVar.k(this);
                    return false;
                }
                if (!strM.equals("template")) {
                    cVar.I("head");
                    return cVar.H(r0Var);
                }
                cVar.w(o0Var);
                cVar.f13248q.add(null);
                cVar.f13251u = false;
                l lVar = c0.f13269s;
                cVar.l = lVar;
                cVar.K(lVar);
            }
        } else if (iC == 2) {
            String strM2 = ((n0) r0Var).m();
            if (strM2.equals("head")) {
                cVar.E();
                cVar.l = c0.f13259f;
            } else {
                if (oh.f.d(strM2, b0.f13210c)) {
                    cVar.I("head");
                    return cVar.H(r0Var);
                }
                if (!strM2.equals("template")) {
                    cVar.k(this);
                    return false;
                }
                if (cVar.B(strM2)) {
                    cVar.m(true);
                    if (!cVar.i(strM2)) {
                        cVar.k(this);
                    }
                    cVar.F(strM2);
                    cVar.c();
                    cVar.G();
                    cVar.P();
                } else {
                    cVar.k(this);
                }
            }
        } else {
            if (iC != 3) {
                cVar.I("head");
                return cVar.H(r0Var);
            }
            cVar.v((k0) r0Var);
        }
        return true;
    }
}

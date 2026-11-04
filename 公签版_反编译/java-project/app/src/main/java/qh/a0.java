package qh;

/* loaded from: classes3.dex */
public enum a0 extends c0 {
    public a0() {
        super("InTable", 8);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.a() && oh.f.d(cVar.h().f12722d.f13285c, b0.z)) {
            cVar.f13249s.clear();
            cVar.f13244m = cVar.l;
            cVar.l = c0.f13263j;
            return cVar.H(r0Var);
        }
        if (r0Var.b()) {
            cVar.v((k0) r0Var);
            return true;
        }
        if (r0Var.c()) {
            cVar.k(this);
            return false;
        }
        boolean zF = r0Var.f();
        v vVar = c0.f13257d;
        if (!zF) {
            if (!r0Var.e()) {
                if (!r0Var.d()) {
                    f(r0Var, cVar);
                    return true;
                }
                if (cVar.i("html")) {
                    cVar.k(this);
                }
                return true;
            }
            String strM = ((n0) r0Var).m();
            if (strM.equals("table")) {
                if (!cVar.s(strM)) {
                    cVar.k(this);
                    return false;
                }
                cVar.F("table");
                cVar.P();
            } else {
                if (oh.f.d(strM, b0.f13230y)) {
                    cVar.k(this);
                    return false;
                }
                if (!strM.equals("template")) {
                    f(r0Var, cVar);
                    return true;
                }
                cVar.getClass();
                vVar.d(r0Var, cVar);
            }
            return true;
        }
        o0 o0Var = (o0) r0Var;
        String strM2 = o0Var.m();
        if (strM2.equals("caption")) {
            cVar.e();
            cVar.f13248q.add(null);
            cVar.w(o0Var);
            cVar.l = c0.f13264k;
        } else if (strM2.equals("colgroup")) {
            cVar.e();
            cVar.w(o0Var);
            cVar.l = c0.l;
        } else {
            if (strM2.equals("col")) {
                cVar.e();
                cVar.J("colgroup");
                return cVar.H(r0Var);
            }
            if (oh.f.d(strM2, b0.r)) {
                cVar.e();
                cVar.w(o0Var);
                cVar.l = c0.f13265m;
            } else {
                if (oh.f.d(strM2, b0.f13224s)) {
                    cVar.e();
                    cVar.J("tbody");
                    return cVar.H(r0Var);
                }
                if (strM2.equals("table")) {
                    cVar.k(this);
                    if (!cVar.s(strM2)) {
                        return false;
                    }
                    cVar.F(strM2);
                    if (cVar.P()) {
                        return cVar.H(r0Var);
                    }
                    cVar.w(o0Var);
                    return true;
                }
                if (oh.f.d(strM2, b0.f13225t)) {
                    cVar.getClass();
                    return vVar.d(r0Var, cVar);
                }
                if (strM2.equals("input")) {
                    ph.c cVar2 = o0Var.f13333g;
                    if (cVar2 == null || !cVar2.d("type").equalsIgnoreCase("hidden")) {
                        f(r0Var, cVar);
                        return true;
                    }
                    cVar.x(o0Var);
                } else {
                    if (!strM2.equals("form")) {
                        f(r0Var, cVar);
                        return true;
                    }
                    cVar.k(this);
                    if (cVar.f13247p != null || cVar.B("template")) {
                        return false;
                    }
                    cVar.z(o0Var, false, false);
                }
            }
        }
        return true;
    }

    public final void f(r0 r0Var, c cVar) {
        cVar.k(this);
        cVar.f13252v = true;
        c0.f13260g.d(r0Var, cVar);
        cVar.f13252v = false;
    }
}

package qh;

/* loaded from: classes3.dex */
public enum g extends c0 {
    public g() {
        super("InTableBody", 12);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        int iC = d0.f.c(r0Var.f13338a);
        a0 a0Var = c0.f13262i;
        if (iC == 1) {
            o0 o0Var = (o0) r0Var;
            String strM = o0Var.m();
            if (!strM.equals("tr")) {
                if (oh.f.d(strM, b0.f13226u)) {
                    cVar.k(this);
                    cVar.J("tr");
                    return cVar.H(o0Var);
                }
                if (oh.f.d(strM, b0.A)) {
                    return f(r0Var, cVar);
                }
                cVar.getClass();
                return a0Var.d(r0Var, cVar);
            }
            cVar.d("tbody", "tfoot", "thead", "template");
            cVar.w(o0Var);
            cVar.l = c0.f13266n;
        } else {
            if (iC != 2) {
                cVar.getClass();
                return a0Var.d(r0Var, cVar);
            }
            String strM2 = ((n0) r0Var).m();
            if (!oh.f.d(strM2, b0.G)) {
                if (strM2.equals("table")) {
                    return f(r0Var, cVar);
                }
                if (oh.f.d(strM2, b0.B)) {
                    cVar.k(this);
                    return false;
                }
                cVar.getClass();
                return a0Var.d(r0Var, cVar);
            }
            if (!cVar.s(strM2)) {
                cVar.k(this);
                return false;
            }
            cVar.d("tbody", "tfoot", "thead", "template");
            cVar.E();
            cVar.l = a0Var;
        }
        return true;
    }

    public final boolean f(r0 r0Var, c cVar) {
        if (!cVar.s("tbody") && !cVar.s("thead") && !cVar.p("tfoot")) {
            cVar.k(this);
            return false;
        }
        cVar.d("tbody", "tfoot", "thead", "template");
        cVar.I(cVar.h().f12722d.f13285c);
        return cVar.H(r0Var);
    }
}

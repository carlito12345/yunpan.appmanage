package qh;

/* loaded from: classes3.dex */
public enum i extends c0 {
    public i() {
        super("InCell", 14);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        boolean zE = r0Var.e();
        y yVar = c0.f13260g;
        if (!zE) {
            if (!r0Var.f() || !oh.f.d(((o0) r0Var).m(), b0.f13229x)) {
                cVar.getClass();
                return yVar.d(r0Var, cVar);
            }
            if (!cVar.s("td") && !cVar.s("th")) {
                cVar.k(this);
                return false;
            }
            if (cVar.s("td")) {
                cVar.I("td");
            } else {
                cVar.I("th");
            }
            return cVar.H(r0Var);
        }
        String strM = ((n0) r0Var).m();
        if (oh.f.d(strM, b0.f13226u)) {
            boolean zS = cVar.s(strM);
            h hVar = c0.f13266n;
            if (!zS) {
                cVar.k(this);
                cVar.l = hVar;
                return false;
            }
            cVar.m(false);
            if (!cVar.i(strM)) {
                cVar.k(this);
            }
            cVar.F(strM);
            cVar.c();
            cVar.l = hVar;
            return true;
        }
        if (oh.f.d(strM, b0.f13227v)) {
            cVar.k(this);
            return false;
        }
        if (!oh.f.d(strM, b0.f13228w)) {
            cVar.getClass();
            return yVar.d(r0Var, cVar);
        }
        if (!cVar.s(strM)) {
            cVar.k(this);
            return false;
        }
        if (cVar.s("td")) {
            cVar.I("td");
        } else {
            cVar.I("th");
        }
        return cVar.H(r0Var);
    }
}

package qh;

/* loaded from: classes3.dex */
public enum h extends c0 {
    public h() {
        super("InRow", 13);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        boolean zF = r0Var.f();
        a0 a0Var = c0.f13262i;
        g gVar = c0.f13265m;
        if (zF) {
            o0 o0Var = (o0) r0Var;
            String strM = o0Var.m();
            if (oh.f.d(strM, b0.f13226u)) {
                cVar.f();
                cVar.w(o0Var);
                cVar.l = c0.f13267p;
                cVar.f13248q.add(null);
                return true;
            }
            if (!oh.f.d(strM, b0.C)) {
                cVar.getClass();
                return a0Var.d(r0Var, cVar);
            }
            if (!cVar.s("tr")) {
                cVar.k(this);
                return false;
            }
            cVar.f();
            cVar.E();
            cVar.l = gVar;
            return cVar.H(r0Var);
        }
        if (!r0Var.e()) {
            cVar.getClass();
            return a0Var.d(r0Var, cVar);
        }
        String strM2 = ((n0) r0Var).m();
        if (strM2.equals("tr")) {
            if (!cVar.s(strM2)) {
                cVar.k(this);
                return false;
            }
            cVar.f();
            cVar.E();
            cVar.l = gVar;
            return true;
        }
        if (strM2.equals("table")) {
            if (!cVar.s("tr")) {
                cVar.k(this);
                return false;
            }
            cVar.f();
            cVar.E();
            cVar.l = gVar;
            return cVar.H(r0Var);
        }
        if (!oh.f.d(strM2, b0.r)) {
            if (oh.f.d(strM2, b0.D)) {
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
        if (!cVar.s("tr")) {
            return false;
        }
        cVar.f();
        cVar.E();
        cVar.l = gVar;
        return cVar.H(r0Var);
    }
}

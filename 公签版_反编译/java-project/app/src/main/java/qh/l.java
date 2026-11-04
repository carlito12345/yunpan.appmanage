package qh;

/* loaded from: classes3.dex */
public enum l extends c0 {
    public l() {
        super("InTemplate", 17);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        int iC = d0.f.c(r0Var.f13338a);
        y yVar = c0.f13260g;
        if (iC != 0) {
            v vVar = c0.f13257d;
            if (iC == 1) {
                String strM = ((o0) r0Var).m();
                if (!oh.f.d(strM, b0.J)) {
                    if (oh.f.d(strM, b0.K)) {
                        cVar.G();
                        a0 a0Var = c0.f13262i;
                        cVar.K(a0Var);
                        cVar.l = a0Var;
                        return cVar.H(r0Var);
                    }
                    if (strM.equals("col")) {
                        cVar.G();
                        f fVar = c0.l;
                        cVar.K(fVar);
                        cVar.l = fVar;
                        return cVar.H(r0Var);
                    }
                    if (strM.equals("tr")) {
                        cVar.G();
                        g gVar = c0.f13265m;
                        cVar.K(gVar);
                        cVar.l = gVar;
                        return cVar.H(r0Var);
                    }
                    if (!strM.equals("td") && !strM.equals("th")) {
                        cVar.G();
                        cVar.K(yVar);
                        cVar.l = yVar;
                        return cVar.H(r0Var);
                    }
                    cVar.G();
                    h hVar = c0.f13266n;
                    cVar.K(hVar);
                    cVar.l = hVar;
                    return cVar.H(r0Var);
                }
                cVar.getClass();
                vVar.d(r0Var, cVar);
            } else if (iC != 2) {
                if (iC != 3 && iC != 4) {
                    if (iC != 6) {
                        throw new IllegalStateException("Unexpected state: ".concat(org.bouncycastle.jcajce.provider.digest.a.x(r0Var.f13338a)));
                    }
                    if (!cVar.B("template")) {
                        return true;
                    }
                    cVar.k(this);
                    cVar.F("template");
                    cVar.c();
                    cVar.G();
                    cVar.P();
                    if (cVar.l == c0.f13269s || cVar.r.size() >= 12) {
                        return true;
                    }
                    return cVar.H(r0Var);
                }
                cVar.getClass();
                yVar.d(r0Var, cVar);
            } else {
                if (!((n0) r0Var).m().equals("template")) {
                    cVar.k(this);
                    return false;
                }
                cVar.getClass();
                vVar.d(r0Var, cVar);
            }
        } else {
            cVar.getClass();
            yVar.d(r0Var, cVar);
        }
        return true;
    }
}

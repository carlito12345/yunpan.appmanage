package qh;

/* loaded from: classes3.dex */
public enum o extends c0 {
    public o() {
        super("InFrameset", 19);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        o0 o0Var;
        if (c0.a(r0Var)) {
            cVar.t((j0) r0Var);
        } else if (r0Var.b()) {
            cVar.v((k0) r0Var);
        } else {
            if (r0Var.c()) {
                cVar.k(this);
                return false;
            }
            if (r0Var.f()) {
                o0Var = (o0) r0Var;
                String strM = o0Var.m();
                strM.getClass();
                switch (strM) {
                    case "frameset":
                        cVar.w(o0Var);
                        break;
                    case "html":
                        y yVar = c0.f13260g;
                        cVar.getClass();
                        return yVar.d(o0Var, cVar);
                    case "frame":
                        cVar.x(o0Var);
                        break;
                    case "noframes":
                        v vVar = c0.f13257d;
                        cVar.getClass();
                        return vVar.d(o0Var, cVar);
                    default:
                        cVar.k(this);
                        return false;
                }
            } else if (r0Var.e() && ((n0) r0Var).m().equals("frameset")) {
                if (cVar.i("html")) {
                    cVar.k(this);
                    return false;
                }
                cVar.E();
                if (!cVar.i("frameset")) {
                    cVar.l = c0.f13272w;
                }
            } else {
                if (!r0Var.d()) {
                    cVar.k(this);
                    return false;
                }
                if (!cVar.i("html")) {
                    cVar.k(this);
                }
            }
        }
        return true;
    }
}

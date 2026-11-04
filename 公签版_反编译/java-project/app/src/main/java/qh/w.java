package qh;

/* loaded from: classes3.dex */
public enum w extends c0 {
    public w() {
        super("InHeadNoscript", 4);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.c()) {
            cVar.k(this);
        } else {
            if (r0Var.f() && ((o0) r0Var).m().equals("html")) {
                y yVar = c0.f13260g;
                cVar.getClass();
                return yVar.d(r0Var, cVar);
            }
            boolean zE = r0Var.e();
            v vVar = c0.f13257d;
            if (!zE || !((n0) r0Var).m().equals("noscript")) {
                if (c0.a(r0Var) || r0Var.b() || (r0Var.f() && oh.f.d(((o0) r0Var).m(), b0.f13213f))) {
                    cVar.getClass();
                    return vVar.d(r0Var, cVar);
                }
                if (r0Var.e() && ((n0) r0Var).m().equals("br")) {
                    cVar.k(this);
                    j0 j0Var = new j0();
                    String string = r0Var.toString();
                    kf.d dVar = j0Var.f13291d;
                    dVar.reset();
                    dVar.f10286b = string;
                    cVar.t(j0Var);
                    return true;
                }
                if ((r0Var.f() && oh.f.d(((o0) r0Var).m(), b0.H)) || r0Var.e()) {
                    cVar.k(this);
                    return false;
                }
                cVar.k(this);
                j0 j0Var2 = new j0();
                String string2 = r0Var.toString();
                kf.d dVar2 = j0Var2.f13291d;
                dVar2.reset();
                dVar2.f10286b = string2;
                cVar.t(j0Var2);
                return true;
            }
            cVar.E();
            cVar.l = vVar;
        }
        return true;
    }
}

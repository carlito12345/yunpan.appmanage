package qh;

/* loaded from: classes3.dex */
public enum e extends c0 {
    public e() {
        super("InCaption", 10);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        boolean zE = r0Var.e();
        a0 a0Var = c0.f13262i;
        if (zE && ((n0) r0Var).m().equals("caption")) {
            if (!cVar.s("caption")) {
                cVar.k(this);
                return false;
            }
            cVar.m(false);
            if (!cVar.i("caption")) {
                cVar.k(this);
            }
            cVar.F("caption");
            cVar.c();
            cVar.l = a0Var;
            return true;
        }
        if ((!r0Var.f() || !oh.f.d(((o0) r0Var).m(), b0.f13229x)) && (!r0Var.e() || !((n0) r0Var).m().equals("table"))) {
            if (r0Var.e() && oh.f.d(((n0) r0Var).m(), b0.I)) {
                cVar.k(this);
                return false;
            }
            y yVar = c0.f13260g;
            cVar.getClass();
            return yVar.d(r0Var, cVar);
        }
        if (!cVar.s("caption")) {
            cVar.k(this);
            return false;
        }
        cVar.m(false);
        if (!cVar.i("caption")) {
            cVar.k(this);
        }
        cVar.F("caption");
        cVar.c();
        cVar.l = a0Var;
        a0Var.d(r0Var, cVar);
        return true;
    }
}

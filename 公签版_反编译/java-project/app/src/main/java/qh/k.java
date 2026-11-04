package qh;

/* loaded from: classes3.dex */
public enum k extends c0 {
    public k() {
        super("InSelectInTable", 16);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        boolean zF = r0Var.f();
        String[] strArr = b0.F;
        if (zF && oh.f.d(((o0) r0Var).m(), strArr)) {
            cVar.k(this);
            cVar.F("select");
            cVar.P();
            return cVar.H(r0Var);
        }
        if (r0Var.e()) {
            n0 n0Var = (n0) r0Var;
            if (oh.f.d(n0Var.m(), strArr)) {
                cVar.k(this);
                if (!cVar.s(n0Var.m())) {
                    return false;
                }
                cVar.F("select");
                cVar.P();
                return cVar.H(r0Var);
            }
        }
        j jVar = c0.f13268q;
        cVar.getClass();
        return jVar.d(r0Var, cVar);
    }
}

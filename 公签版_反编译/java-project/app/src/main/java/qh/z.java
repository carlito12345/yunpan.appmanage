package qh;

/* loaded from: classes3.dex */
public enum z extends c0 {
    public z() {
        super("Text", 7);
    }

    @Override // qh.c0
    public final boolean d(r0 r0Var, c cVar) {
        if (r0Var.a()) {
            cVar.t((j0) r0Var);
            return true;
        }
        if (!r0Var.d()) {
            if (!r0Var.e()) {
                return true;
            }
            cVar.E();
            cVar.l = cVar.f13244m;
            return true;
        }
        cVar.k(this);
        cVar.E();
        c0 c0Var = cVar.f13244m;
        cVar.l = c0Var;
        if (c0Var == c0.f13261h) {
            cVar.l = c0.f13260g;
        }
        return cVar.H(r0Var);
    }
}

package qh;

/* loaded from: classes3.dex */
public enum z0 extends k3 {
    public z0() {
        super("RawtextEndTagOpen", 14);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        a1 a1Var = k3.f13317q;
        w2 w2Var = k3.f13301e;
        if (bVar.X()) {
            t0Var.d(false);
            t0Var.o(a1Var);
        } else {
            t0Var.g("</");
            t0Var.o(w2Var);
        }
    }
}

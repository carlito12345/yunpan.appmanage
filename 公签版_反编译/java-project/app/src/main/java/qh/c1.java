package qh;

/* loaded from: classes3.dex */
public enum c1 extends k3 {
    public c1() {
        super("ScriptDataEndTagOpen", 17);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        d1 d1Var = k3.f13319t;
        g3 g3Var = k3.f13303f;
        if (bVar.X()) {
            t0Var.d(false);
            t0Var.o(d1Var);
        } else {
            t0Var.g("</");
            t0Var.o(g3Var);
        }
    }
}

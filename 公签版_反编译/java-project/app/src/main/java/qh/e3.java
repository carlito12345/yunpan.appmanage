package qh;

/* loaded from: classes3.dex */
public enum e3 extends k3 {
    public e3() {
        super("BogusDoctype", 66);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        e1 e1Var = k3.f13293a;
        if (cK == '>') {
            t0Var.j();
            t0Var.o(e1Var);
        } else {
            if (cK != 65535) {
                return;
            }
            t0Var.j();
            t0Var.o(e1Var);
        }
    }
}

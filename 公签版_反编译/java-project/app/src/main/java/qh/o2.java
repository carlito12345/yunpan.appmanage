package qh;

/* loaded from: classes3.dex */
public enum o2 extends k3 {
    public o2() {
        super("Doctype", 51);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        p2 p2Var = k3.Q0;
        if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r' || cK == ' ') {
            t0Var.o(p2Var);
            return;
        }
        if (cK != '>') {
            if (cK != 65535) {
                t0Var.m(this);
                t0Var.o(p2Var);
                return;
            }
            t0Var.l(this);
        }
        t0Var.m(this);
        l0 l0Var = t0Var.l;
        l0Var.g();
        l0Var.f13329h = true;
        t0Var.j();
        t0Var.o(k3.f13293a);
    }
}

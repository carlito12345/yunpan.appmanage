package qh;

/* loaded from: classes3.dex */
public enum u2 extends k3 {
    public u2() {
        super("DoctypePublicIdentifier_doubleQuoted", 57);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.m(this);
            t0Var.l.f13327f.m((char) 65533);
            return;
        }
        if (cK == '\"') {
            t0Var.o(k3.X0);
            return;
        }
        e1 e1Var = k3.f13293a;
        if (cK == '>') {
            t0Var.m(this);
            t0Var.l.f13329h = true;
            t0Var.j();
            t0Var.o(e1Var);
            return;
        }
        if (cK != 65535) {
            t0Var.l.f13327f.m(cK);
            return;
        }
        t0Var.l(this);
        t0Var.l.f13329h = true;
        t0Var.j();
        t0Var.o(e1Var);
    }
}

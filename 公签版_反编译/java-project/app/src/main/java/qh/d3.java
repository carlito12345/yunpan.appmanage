package qh;

/* loaded from: classes3.dex */
public enum d3 extends k3 {
    public d3() {
        super("AfterDoctypeSystemIdentifier", 65);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r' || cK == ' ') {
            return;
        }
        e1 e1Var = k3.f13293a;
        if (cK == '>') {
            t0Var.j();
            t0Var.o(e1Var);
        } else if (cK != 65535) {
            t0Var.m(this);
            t0Var.o(k3.f13302e1);
        } else {
            t0Var.l(this);
            t0Var.l.f13329h = true;
            t0Var.j();
            t0Var.o(e1Var);
        }
    }
}

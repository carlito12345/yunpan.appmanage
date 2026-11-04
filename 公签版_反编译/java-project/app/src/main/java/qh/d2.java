package qh;

/* loaded from: classes3.dex */
public enum d2 extends k3 {
    public d2() {
        super("SelfClosingStartTag", 41);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        e1 e1Var = k3.f13293a;
        if (cK == '>') {
            t0Var.f13354j.f13332f = true;
            t0Var.k();
            t0Var.o(e1Var);
        } else if (cK == 65535) {
            t0Var.l(this);
            t0Var.o(e1Var);
        } else {
            bVar.d0();
            t0Var.m(this);
            t0Var.o(k3.K);
        }
    }
}

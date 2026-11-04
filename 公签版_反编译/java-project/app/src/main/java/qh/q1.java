package qh;

/* loaded from: classes3.dex */
public enum q1 extends k3 {
    public q1() {
        super("ScriptDataDoubleEscapedDash", 29);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        o1 o1Var = k3.E;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f((char) 65533);
            t0Var.o(o1Var);
        } else if (cK == '-') {
            t0Var.f(cK);
            t0Var.o(k3.G);
        } else if (cK == '<') {
            t0Var.f(cK);
            t0Var.o(k3.H);
        } else if (cK != 65535) {
            t0Var.f(cK);
            t0Var.o(o1Var);
        } else {
            t0Var.l(this);
            t0Var.o(k3.f13293a);
        }
    }
}

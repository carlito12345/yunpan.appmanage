package qh;

/* loaded from: classes3.dex */
public enum r1 extends k3 {
    public r1() {
        super("ScriptDataDoubleEscapedDashDash", 30);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        o1 o1Var = k3.E;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f((char) 65533);
            t0Var.o(o1Var);
            return;
        }
        if (cK == '-') {
            t0Var.f(cK);
            return;
        }
        if (cK == '<') {
            t0Var.f(cK);
            t0Var.o(k3.H);
        } else if (cK == '>') {
            t0Var.f(cK);
            t0Var.o(k3.f13303f);
        } else if (cK != 65535) {
            t0Var.f(cK);
            t0Var.o(o1Var);
        } else {
            t0Var.l(this);
            t0Var.o(k3.f13293a);
        }
    }
}

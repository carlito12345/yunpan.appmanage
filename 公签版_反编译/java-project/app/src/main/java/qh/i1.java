package qh;

/* loaded from: classes3.dex */
public enum i1 extends k3 {
    public i1() {
        super("ScriptDataEscapedDash", 22);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        if (bVar.R()) {
            t0Var.l(this);
            t0Var.o(k3.f13293a);
            return;
        }
        char cK = bVar.K();
        h1 h1Var = k3.f13323x;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f((char) 65533);
            t0Var.o(h1Var);
        } else if (cK == '-') {
            t0Var.f(cK);
            t0Var.o(k3.z);
        } else if (cK == '<') {
            t0Var.o(k3.A);
        } else {
            t0Var.f(cK);
            t0Var.o(h1Var);
        }
    }
}

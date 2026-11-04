package qh;

/* loaded from: classes3.dex */
public enum c2 extends k3 {
    public c2() {
        super("AfterAttributeValue_quoted", 40);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        u1 u1Var = k3.K;
        if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r' || cK == ' ') {
            t0Var.o(u1Var);
            return;
        }
        if (cK == '/') {
            t0Var.o(k3.T);
            return;
        }
        e1 e1Var = k3.f13293a;
        if (cK == 65535) {
            t0Var.l(this);
            t0Var.o(e1Var);
        } else if (cK == '>') {
            t0Var.k();
            t0Var.o(e1Var);
        } else {
            if (cK == '?' && (t0Var.f13354j instanceof q0)) {
                return;
            }
            bVar.d0();
            t0Var.m(this);
            t0Var.o(u1Var);
        }
    }
}

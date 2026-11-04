package qh;

/* loaded from: classes3.dex */
public enum w1 extends k3 {
    public w1() {
        super("AfterAttributeName", 35);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        v1 v1Var = k3.L;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f13354j.f13334h.m((char) 65533);
            t0Var.o(v1Var);
            return;
        }
        if (cK != ' ') {
            if (cK != '\"' && cK != '\'') {
                if (cK == '/') {
                    t0Var.o(k3.T);
                    return;
                }
                e1 e1Var = k3.f13293a;
                if (cK == 65535) {
                    t0Var.l(this);
                    t0Var.o(e1Var);
                    return;
                }
                if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r') {
                    return;
                }
                switch (cK) {
                    case '<':
                        break;
                    case '=':
                        t0Var.o(k3.N);
                        break;
                    case '>':
                        t0Var.k();
                        t0Var.o(e1Var);
                        break;
                    default:
                        t0Var.f13354j.l();
                        bVar.d0();
                        t0Var.o(v1Var);
                        break;
                }
                return;
            }
            t0Var.m(this);
            t0Var.f13354j.l();
            t0Var.f13354j.f13334h.m(cK);
            t0Var.o(v1Var);
        }
    }
}

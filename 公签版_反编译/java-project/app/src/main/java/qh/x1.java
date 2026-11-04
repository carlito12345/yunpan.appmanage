package qh;

/* loaded from: classes3.dex */
public enum x1 extends k3 {
    public x1() {
        super("BeforeAttributeValue", 36);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        b2 b2Var = k3.R;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f13354j.h((char) 65533, bVar.a0() - 1, bVar.a0());
            t0Var.o(b2Var);
            return;
        }
        if (cK != ' ') {
            if (cK == '\"') {
                t0Var.o(k3.O);
                return;
            }
            if (cK != '`') {
                e1 e1Var = k3.f13293a;
                if (cK == 65535) {
                    t0Var.l(this);
                    t0Var.k();
                    t0Var.o(e1Var);
                    return;
                }
                if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r') {
                    return;
                }
                if (cK == '&') {
                    bVar.d0();
                    t0Var.o(b2Var);
                    return;
                }
                if (cK == '\'') {
                    t0Var.o(k3.P);
                    return;
                }
                switch (cK) {
                    case '<':
                    case '=':
                        break;
                    case '>':
                        t0Var.m(this);
                        t0Var.k();
                        t0Var.o(e1Var);
                        break;
                    default:
                        bVar.d0();
                        t0Var.o(b2Var);
                        break;
                }
                return;
            }
            t0Var.m(this);
            t0Var.f13354j.h(cK, bVar.a0() - 1, bVar.a0());
            t0Var.o(b2Var);
        }
    }
}

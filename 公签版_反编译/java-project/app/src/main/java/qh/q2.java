package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum q2 extends k3 {
    public q2() {
        super("DoctypeName", 53);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        if (bVar.X()) {
            t0Var.l.f13325d.n(bVar.L());
            return;
        }
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.m(this);
            t0Var.l.f13325d.m((char) 65533);
            return;
        }
        if (cK != ' ') {
            e1 e1Var = k3.f13293a;
            if (cK == '>') {
                t0Var.j();
                t0Var.o(e1Var);
                return;
            }
            if (cK == 65535) {
                t0Var.l(this);
                t0Var.l.f13329h = true;
                t0Var.j();
                t0Var.o(e1Var);
                return;
            }
            if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r') {
                t0Var.l.f13325d.m(cK);
                return;
            }
        }
        t0Var.o(k3.S0);
    }
}

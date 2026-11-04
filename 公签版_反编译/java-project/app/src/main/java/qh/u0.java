package qh;

import ha.jd;
import java.io.IOException;

/* loaded from: classes3.dex */
public enum u0 extends k3 {
    public u0() {
        super("TagName", 9);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        t0Var.f13354j.j(bVar.M(new jd(18)));
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.f13354j.j(k3.f13310i1);
            return;
        }
        if (cK != ' ') {
            if (cK == '/') {
                t0Var.o(k3.T);
                return;
            }
            e1 e1Var = k3.f13293a;
            if (cK == '>') {
                t0Var.k();
                t0Var.o(e1Var);
                return;
            }
            if (cK == 65535) {
                t0Var.l(this);
                t0Var.o(e1Var);
                return;
            } else if (cK != '\t' && cK != '\n' && cK != '\f' && cK != '\r') {
                p0 p0Var = t0Var.f13354j;
                p0Var.getClass();
                p0Var.j(String.valueOf(cK));
                return;
            }
        }
        t0Var.o(k3.K);
    }
}

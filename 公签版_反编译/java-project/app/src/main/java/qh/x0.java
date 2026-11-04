package qh;

import ha.jd;
import java.io.IOException;

/* loaded from: classes3.dex */
public enum x0 extends k3 {
    public x0() {
        super("RCDATAEndTagName", 12);
    }

    public static void f(t0 t0Var, b bVar) {
        t0Var.g("</");
        t0Var.g(t0Var.f13350f.R());
        bVar.d0();
        t0Var.o(k3.f13297c);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        if (bVar.X()) {
            String strM = bVar.M(new jd(18));
            t0Var.f13354j.j(strM);
            t0Var.f13350f.n(strM);
            return;
        }
        char cK = bVar.K();
        if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r' || cK == ' ') {
            if (t0Var.n()) {
                t0Var.o(k3.K);
                return;
            } else {
                f(t0Var, bVar);
                return;
            }
        }
        if (cK == '/') {
            if (t0Var.n()) {
                t0Var.o(k3.T);
                return;
            } else {
                f(t0Var, bVar);
                return;
            }
        }
        if (cK != '>') {
            f(t0Var, bVar);
        } else if (!t0Var.n()) {
            f(t0Var, bVar);
        } else {
            t0Var.k();
            t0Var.o(k3.f13293a);
        }
    }
}

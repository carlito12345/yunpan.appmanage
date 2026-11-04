package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum j3 extends k3 {
    public j3() {
        super("EndTagOpen", 8);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        boolean zR = bVar.R();
        e1 e1Var = k3.f13293a;
        if (zR) {
            t0Var.l(this);
            t0Var.g("</");
            t0Var.o(e1Var);
        } else if (bVar.X()) {
            t0Var.d(false);
            t0Var.o(k3.f13311j);
        } else {
            if (bVar.V('>')) {
                t0Var.m(this);
                t0Var.a(e1Var);
                return;
            }
            t0Var.m(this);
            k0 k0Var = t0Var.f13356m;
            k0Var.g();
            k0Var.h('/');
            t0Var.o(k3.V);
        }
    }
}

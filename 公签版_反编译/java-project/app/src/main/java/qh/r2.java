package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum r2 extends k3 {
    public r2() {
        super("AfterDoctypeName", 54);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        boolean zR = bVar.R();
        e1 e1Var = k3.f13293a;
        if (zR) {
            t0Var.l(this);
            t0Var.l.f13329h = true;
            t0Var.j();
            t0Var.o(e1Var);
            return;
        }
        if (bVar.W('\t', '\n', '\r', '\f', ' ')) {
            bVar.r();
            return;
        }
        if (bVar.V('>')) {
            t0Var.j();
            t0Var.a(e1Var);
            return;
        }
        if (bVar.U("PUBLIC")) {
            t0Var.l.f13326e = "PUBLIC";
            t0Var.o(k3.T0);
        } else if (bVar.U("SYSTEM")) {
            t0Var.l.f13326e = "SYSTEM";
            t0Var.o(k3.Z0);
        } else {
            t0Var.m(this);
            t0Var.l.f13329h = true;
            t0Var.a(k3.f13302e1);
        }
    }
}

package qh;

import java.io.IOException;

/* loaded from: classes3.dex */
public enum e2 extends k3 {
    public e2() {
        super("BogusComment", 42);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) throws IOException {
        k0 k0Var = t0Var.f13356m;
        k0Var.f13292d.n(bVar.N('>'));
        char cQ = bVar.Q();
        if (cQ == '>' || cQ == 65535) {
            bVar.K();
            t0Var.i();
            t0Var.o(k3.f13293a);
        }
    }
}

package qh;

/* loaded from: classes3.dex */
public enum h3 extends k3 {
    public h3() {
        super("PLAINTEXT", 6);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cQ = bVar.Q();
        if (cQ == 0) {
            t0Var.m(this);
            bVar.r();
            t0Var.f((char) 65533);
        } else if (cQ != 65535) {
            t0Var.g(bVar.N((char) 0));
        } else {
            t0Var.h(new m0());
        }
    }
}

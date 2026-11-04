package qh;

/* loaded from: classes3.dex */
public enum k2 extends k3 {
    public k2() {
        super("CommentEndDash", 48);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        j2 j2Var = k3.f13320t0;
        if (cK == 0) {
            t0Var.m(this);
            k0 k0Var = t0Var.f13356m;
            k0Var.f13292d.m('-');
            k0Var.h((char) 65533);
            t0Var.o(j2Var);
            return;
        }
        if (cK == '-') {
            t0Var.o(k3.N0);
            return;
        }
        if (cK == 65535) {
            t0Var.l(this);
            t0Var.i();
            t0Var.o(k3.f13293a);
        } else {
            k0 k0Var2 = t0Var.f13356m;
            k0Var2.f13292d.m('-');
            k0Var2.h(cK);
            t0Var.o(j2Var);
        }
    }
}

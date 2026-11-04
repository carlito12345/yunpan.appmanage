package qh;

/* loaded from: classes3.dex */
public enum h2 extends k3 {
    public h2() {
        super("CommentStart", 45);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        j2 j2Var = k3.f13320t0;
        if (cK == 0) {
            t0Var.m(this);
            t0Var.f13356m.h((char) 65533);
            t0Var.o(j2Var);
            return;
        }
        if (cK == '-') {
            t0Var.o(k3.f13307h0);
            return;
        }
        e1 e1Var = k3.f13293a;
        if (cK == '>') {
            t0Var.m(this);
            t0Var.i();
            t0Var.o(e1Var);
        } else if (cK != 65535) {
            bVar.d0();
            t0Var.o(j2Var);
        } else {
            t0Var.l(this);
            t0Var.i();
            t0Var.o(e1Var);
        }
    }
}

package qh;

/* loaded from: classes3.dex */
public enum p2 extends k3 {
    public p2() {
        super("BeforeDoctypeName", 52);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        boolean zX = bVar.X();
        q2 q2Var = k3.R0;
        if (zX) {
            t0Var.l.g();
            t0Var.o(q2Var);
            return;
        }
        char cK = bVar.K();
        if (cK == 0) {
            t0Var.m(this);
            l0 l0Var = t0Var.l;
            l0Var.g();
            l0Var.f13325d.m((char) 65533);
            t0Var.o(q2Var);
            return;
        }
        if (cK != ' ') {
            if (cK == 65535) {
                t0Var.l(this);
                l0 l0Var2 = t0Var.l;
                l0Var2.g();
                l0Var2.f13329h = true;
                t0Var.j();
                t0Var.o(k3.f13293a);
                return;
            }
            if (cK == '\t' || cK == '\n' || cK == '\f' || cK == '\r') {
                return;
            }
            t0Var.l.g();
            t0Var.l.f13325d.m(cK);
            t0Var.o(q2Var);
        }
    }
}

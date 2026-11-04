package qh;

/* loaded from: classes3.dex */
public enum b1 extends k3 {
    public b1() {
        super("ScriptDataLessthanSign", 16);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cK = bVar.K();
        if (cK == '!') {
            t0Var.g("<!");
            t0Var.o(k3.f13321v);
            return;
        }
        if (cK == '/') {
            t0Var.e();
            t0Var.o(k3.f13318s);
        } else if (cK != 65535) {
            t0Var.f('<');
            bVar.d0();
            t0Var.o(k3.f13303f);
        } else {
            t0Var.f('<');
            t0Var.l(this);
            t0Var.o(k3.f13293a);
        }
    }
}

package qh;

/* loaded from: classes3.dex */
public enum k1 extends k3 {
    public k1() {
        super("ScriptDataEscapedLessthanSign", 24);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        if (bVar.X()) {
            t0Var.e();
            t0Var.f13350f.m(bVar.Q());
            t0Var.f('<');
            t0Var.f(bVar.Q());
            t0Var.a(k3.D);
            return;
        }
        if (bVar.V('/')) {
            t0Var.e();
            t0Var.a(k3.B);
        } else {
            t0Var.f('<');
            t0Var.o(k3.f13323x);
        }
    }
}

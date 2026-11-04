package qh;

/* loaded from: classes3.dex */
public enum w0 extends k3 {
    public w0() {
        super("RCDATAEndTagOpen", 11);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        if (!bVar.X()) {
            t0Var.g("</");
            t0Var.o(k3.f13297c);
            return;
        }
        t0Var.d(false);
        p0 p0Var = t0Var.f13354j;
        char cQ = bVar.Q();
        p0Var.getClass();
        p0Var.j(String.valueOf(cQ));
        t0Var.f13350f.m(bVar.Q());
        t0Var.a(k3.f13314m);
    }
}

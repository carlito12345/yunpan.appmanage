package qh;

/* loaded from: classes3.dex */
public enum i3 extends k3 {
    public i3() {
        super("TagOpen", 7);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        char cQ = bVar.Q();
        if (cQ == '!') {
            t0Var.a(k3.X);
            return;
        }
        if (cQ == '/') {
            t0Var.a(k3.f13309i);
            return;
        }
        if (cQ == '?') {
            if (t0Var.f13351g == 2) {
                t0Var.a(k3.Y);
                return;
            } else {
                t0Var.f13356m.g();
                t0Var.o(k3.V);
                return;
            }
        }
        if (bVar.X()) {
            t0Var.d(true);
            t0Var.o(k3.f13311j);
        } else {
            t0Var.m(this);
            t0Var.f('<');
            t0Var.o(k3.f13293a);
        }
    }
}

package qh;

/* loaded from: classes3.dex */
public enum f2 extends k3 {
    public f2() {
        super("MarkupDeclarationOpen", 43);
    }

    @Override // qh.k3
    public final void d(t0 t0Var, b bVar) {
        if (bVar.T("--")) {
            t0Var.f13356m.g();
            t0Var.o(k3.Z);
            return;
        }
        if (bVar.U("DOCTYPE")) {
            t0Var.o(k3.P0);
            return;
        }
        if (bVar.T("[CDATA[")) {
            t0Var.e();
            t0Var.o(k3.f13304f1);
            return;
        }
        if (t0Var.f13351g != 2 || !bVar.X()) {
            t0Var.m(this);
            t0Var.f13356m.g();
            t0Var.o(k3.V);
        } else {
            q0 q0Var = t0Var.f13357n;
            q0Var.g();
            q0Var.f13337k = true;
            t0Var.f13354j = q0Var;
            t0Var.o(k3.f13311j);
        }
    }
}

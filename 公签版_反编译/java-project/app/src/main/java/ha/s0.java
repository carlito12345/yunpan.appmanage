package ha;

import android.view.View;

/* loaded from: classes.dex */
public final /* synthetic */ class s0 implements ia, ea.f, c6.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x0 f7720a;

    public /* synthetic */ s0(x0 x0Var) {
        this.f7720a = x0Var;
    }

    @Override // ea.f
    public void a(x9.w3 w3Var) {
        this.f7720a.f8027q.q(w3Var);
    }

    @Override // ha.ia
    public void b(int i10) {
        x0 x0Var = this.f7720a;
        x0Var.getClass();
        if (i10 == 0) {
            d.b.k0(3).b(new p0(1, x0Var));
        } else if (i10 == 1) {
            new vb(x0Var.f6724a, x0Var.f6725b).c("请选择文件", new s0(x0Var));
        }
    }

    @Override // c6.e
    public void x(c6.g gVar, View view, int i10) {
        x0 x0Var = this.f7720a;
        if (x0Var.f8027q.b() == 1) {
            x0Var.f8020h.requestFocus();
        }
        x0Var.f8027q.C(i10);
    }
}

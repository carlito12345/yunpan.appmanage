package q;

import android.view.ViewGroup;
import x0.b1;
import x0.l1;

/* loaded from: classes.dex */
public final class o implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12887a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f12888b;

    public /* synthetic */ o(a0 a0Var, int i10) {
        this.f12887a = i10;
        this.f12888b = a0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        switch (this.f12887a) {
            case 0:
                a0 a0Var = this.f12888b;
                if ((a0Var.P0 & 1) != 0) {
                    a0Var.t(0);
                }
                if ((a0Var.P0 & 4096) != 0) {
                    a0Var.t(108);
                }
                a0Var.O0 = false;
                a0Var.P0 = 0;
                break;
            default:
                a0 a0Var2 = this.f12888b;
                a0Var2.f12778y.showAtLocation(a0Var2.f12777x, 55, 0, 0);
                l1 l1Var = a0Var2.A;
                if (l1Var != null) {
                    l1Var.b();
                }
                if (!(a0Var2.B && (viewGroup = a0Var2.C) != null && b1.m(viewGroup))) {
                    a0Var2.f12777x.setAlpha(1.0f);
                    a0Var2.f12777x.setVisibility(0);
                    break;
                } else {
                    a0Var2.f12777x.setAlpha(0.0f);
                    l1 l1VarA = b1.a(a0Var2.f12777x);
                    l1VarA.a(1.0f);
                    a0Var2.A = l1VarA;
                    l1VarA.d(new q(0, this));
                    break;
                }
                break;
        }
    }
}

package v3;

import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import ha.qa;
import r1.b1;
import r1.v0;
import r1.x0;
import u7.y0;

/* loaded from: classes.dex */
public final class h implements r1.k0, View.OnClickListener, PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f16485a;

    public h(t tVar) {
        this.f16485a = tVar;
    }

    @Override // r1.k0
    public final /* synthetic */ void A(int i10, boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void B(int i10, r1.l0 l0Var, r1.l0 l0Var2) {
    }

    @Override // r1.k0
    public final /* synthetic */ void C(r1.h0 h0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void D(int i10, int i11) {
    }

    @Override // r1.k0
    public final /* synthetic */ void E(r1.y yVar, int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void F(y0 y0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void H(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void a(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void b(b1 b1Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void d(x0 x0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void e(v0 v0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void f(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void g(int i10, boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void h(r1.i0 i0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void i(float f10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void j(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void k(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void m(r1.b0 b0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void n(y1.k kVar) {
    }

    @Override // r1.k0
    public final void o(r1.j0 j0Var) {
        boolean zA = j0Var.a(4, 5, 13);
        t tVar = this.f16485a;
        if (zA) {
            tVar.q();
        }
        if (j0Var.a(4, 5, 7, 13)) {
            tVar.s();
        }
        if (j0Var.a(8, 13)) {
            tVar.t();
        }
        if (j0Var.a(9, 13)) {
            tVar.v();
        }
        if (j0Var.a(8, 9, 11, 0, 16, 17, 13)) {
            tVar.p();
        }
        if (j0Var.a(11, 0, 13)) {
            tVar.w();
        }
        if (j0Var.a(12, 13)) {
            tVar.r();
        }
        if (j0Var.a(2, 13)) {
            tVar.x();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        t tVar = this.f16485a;
        r1.m0 m0Var = tVar.g1;
        if (m0Var == null) {
            return;
        }
        y yVar = tVar.f16544a;
        yVar.g();
        if (tVar.f16585w == view) {
            a.b bVar = (a.b) m0Var;
            if (bVar.i(9)) {
                bVar.q();
                return;
            }
            return;
        }
        if (tVar.f16583v == view) {
            a.b bVar2 = (a.b) m0Var;
            if (bVar2.i(7)) {
                bVar2.s();
                return;
            }
            return;
        }
        if (tVar.f16589y == view) {
            if (((y1.x) m0Var).J() != 4) {
                a.b bVar3 = (a.b) m0Var;
                if (bVar3.i(12)) {
                    y1.x xVar = (y1.x) bVar3;
                    xVar.h0();
                    bVar3.r(12, xVar.f18847c1);
                    return;
                }
                return;
            }
            return;
        }
        if (tVar.z == view) {
            a.b bVar4 = (a.b) m0Var;
            if (bVar4.i(11)) {
                y1.x xVar2 = (y1.x) bVar4;
                xVar2.h0();
                bVar4.r(11, -xVar2.f18845b1);
                return;
            }
            return;
        }
        if (tVar.f16587x == view) {
            if (u1.f0.O(m0Var, tVar.f16566l1)) {
                u1.f0.y(m0Var);
                return;
            }
            a.b bVar5 = (a.b) m0Var;
            if (bVar5.i(1)) {
                y1.x xVar3 = (y1.x) bVar5;
                xVar3.h0();
                xVar3.e0(1, false);
                return;
            }
            return;
        }
        if (tVar.C == view) {
            if (((a.b) m0Var).i(15)) {
                y1.x xVar4 = (y1.x) m0Var;
                xVar4.h0();
                int i10 = xVar4.K;
                int i11 = tVar.f16576r1;
                for (int i12 = 1; i12 <= 2; i12++) {
                    int i13 = (i10 + i12) % 3;
                    if (i13 != 0) {
                        if (i13 != 1) {
                            if (i13 != 2 || (i11 & 2) == 0) {
                            }
                        } else if ((i11 & 1) == 0) {
                        }
                    }
                    i10 = i13;
                }
                xVar4.Z(i10);
                return;
            }
            return;
        }
        if (tVar.D == view) {
            if (((a.b) m0Var).i(14)) {
                y1.x xVar5 = (y1.x) m0Var;
                xVar5.h0();
                boolean z = !xVar5.L;
                xVar5.h0();
                if (xVar5.L != z) {
                    xVar5.L = z;
                    u1.b0 b0Var = xVar5.l.f18660h;
                    b0Var.getClass();
                    u1.a0 a0VarC = u1.b0.c();
                    a0VarC.f15183a = b0Var.f15188a.obtainMessage(12, z ? 1 : 0, 0);
                    a0VarC.b();
                    qa qaVar = new qa(8, z);
                    u1.m mVar = xVar5.f18861m;
                    mVar.c(9, qaVar);
                    xVar5.d0();
                    mVar.b();
                    return;
                }
                return;
            }
            return;
        }
        View view2 = tVar.I;
        if (view2 == view) {
            yVar.f();
            tVar.e(tVar.f16567m, view2);
            return;
        }
        View view3 = tVar.K;
        if (view3 == view) {
            yVar.f();
            tVar.e(tVar.f16569n, view3);
            return;
        }
        View view4 = tVar.L;
        if (view4 == view) {
            yVar.f();
            tVar.e(tVar.f16574q, view4);
            return;
        }
        ImageView imageView = tVar.F;
        if (imageView == view) {
            yVar.f();
            tVar.e(tVar.f16572p, imageView);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        t tVar = this.f16485a;
        if (tVar.f16588x1) {
            tVar.f16544a.g();
        }
    }

    @Override // r1.k0
    public final /* synthetic */ void p(boolean z) {
    }

    @Override // r1.k0
    public final /* synthetic */ void q(t1.c cVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void r(y1.k kVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void t(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void u(r1.d dVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void v(int i10) {
    }

    @Override // r1.k0
    public final /* synthetic */ void x(r1.d0 d0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void y() {
    }

    @Override // r1.k0
    public final /* synthetic */ void z(boolean z) {
    }
}

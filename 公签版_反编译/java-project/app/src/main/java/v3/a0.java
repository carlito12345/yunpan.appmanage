package v3;

import android.os.Build;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import androidx.media3.ui.SubtitleView;
import r1.b1;
import r1.v0;
import r1.x0;
import u7.y0;
import ua.g8;

/* loaded from: classes.dex */
public final class a0 implements r1.k0, View.OnClickListener, s, i {

    /* renamed from: a, reason: collision with root package name */
    public final r1.o0 f16411a = new r1.o0();

    /* renamed from: b, reason: collision with root package name */
    public Object f16412b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ e0 f16413c;

    public a0(e0 e0Var) {
        this.f16413c = e0Var;
    }

    @Override // r1.k0
    public final /* synthetic */ void A(int i10, boolean z) {
    }

    @Override // r1.k0
    public final void B(int i10, r1.l0 l0Var, r1.l0 l0Var2) {
        t tVar;
        e0 e0Var = this.f16413c;
        if (e0Var.e() && e0Var.F && (tVar = e0Var.l) != null) {
            tVar.g();
        }
    }

    @Override // r1.k0
    public final /* synthetic */ void C(r1.h0 h0Var) {
    }

    @Override // r1.k0
    public final void D(int i10, int i11) {
        if (Build.VERSION.SDK_INT == 34) {
            e0 e0Var = this.f16413c;
            if ((e0Var.f16454d instanceof SurfaceView) && e0Var.H) {
                d0 d0Var = e0Var.f16456f;
                d0Var.getClass();
                e0Var.f16464p.post(new a2.e0(d0Var, (SurfaceView) e0Var.f16454d, new g8(4, e0Var), 16));
            }
        }
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
    public final void b(b1 b1Var) {
        e0 e0Var;
        r1.m0 m0Var;
        if (b1Var.equals(b1.f13418d) || (m0Var = (e0Var = this.f16413c).f16467t) == null || ((y1.x) m0Var).J() == 1) {
            return;
        }
        e0Var.k();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    @Override // r1.k0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(x0 x0Var) {
        e0 e0Var = this.f16413c;
        r1.m0 m0Var = e0Var.f16467t;
        m0Var.getClass();
        a.b bVar = (a.b) m0Var;
        r1.q0 q0VarE = bVar.i(17) ? ((y1.x) m0Var).E() : r1.q0.f13551a;
        if (q0VarE.p()) {
            this.f16412b = null;
        } else {
            boolean zI = bVar.i(30);
            r1.o0 o0Var = this.f16411a;
            if (zI) {
                y1.x xVar = (y1.x) m0Var;
                if (xVar.F().f13625a.isEmpty()) {
                    Object obj = this.f16412b;
                    if (obj != null) {
                        int iB = q0VarE.b(obj);
                        if (iB != -1) {
                            if (((y1.x) m0Var).A() == q0VarE.f(iB, o0Var, false).f13505c) {
                                return;
                            }
                        }
                        this.f16412b = null;
                    }
                } else {
                    this.f16412b = q0VarE.f(xVar.B(), o0Var, true).f13504b;
                }
            }
        }
        e0Var.o(false);
    }

    @Override // r1.k0
    public final /* synthetic */ void e(v0 v0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void f(boolean z) {
    }

    @Override // r1.k0
    public final void g(int i10, boolean z) {
        e0 e0Var = this.f16413c;
        e0Var.l();
        if (!e0Var.e() || !e0Var.F) {
            e0Var.f(false);
            return;
        }
        t tVar = e0Var.l;
        if (tVar != null) {
            tVar.g();
        }
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
    public final void k(int i10) {
        e0 e0Var = this.f16413c;
        e0Var.l();
        e0Var.n();
        if (!e0Var.e() || !e0Var.F) {
            e0Var.f(false);
            return;
        }
        t tVar = e0Var.l;
        if (tVar != null) {
            tVar.g();
        }
    }

    @Override // r1.k0
    public final /* synthetic */ void m(r1.b0 b0Var) {
    }

    @Override // r1.k0
    public final /* synthetic */ void n(y1.k kVar) {
    }

    @Override // r1.k0
    public final /* synthetic */ void o(r1.j0 j0Var) {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f16413c.j();
    }

    @Override // r1.k0
    public final /* synthetic */ void p(boolean z) {
    }

    @Override // r1.k0
    public final void q(t1.c cVar) {
        SubtitleView subtitleView = this.f16413c.f16459i;
        if (subtitleView != null) {
            subtitleView.setCues(cVar.f14682a);
        }
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
    public final void y() {
        e0 e0Var = this.f16413c;
        View view = e0Var.f16453c;
        if (view != null) {
            view.setVisibility(4);
            if (!e0Var.b()) {
                e0Var.d();
                return;
            }
            ImageView imageView = e0Var.f16457g;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
        }
    }

    @Override // r1.k0
    public final /* synthetic */ void z(boolean z) {
    }
}

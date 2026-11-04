package z1;

import a9.o;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import f2.c0;
import f2.i0;
import f2.t;
import fa.d0;
import java.io.IOException;
import r1.b1;
import r1.h0;
import r1.j0;
import r1.k0;
import r1.l0;
import r1.m0;
import r1.o0;
import r1.p0;
import r1.q0;
import r1.v0;
import r1.x0;
import r1.y;
import u1.b0;
import u1.f0;
import u1.j;
import u1.m;
import u1.z;
import u7.d1;
import u7.g0;
import u7.y0;
import ua.g5;
import ua.g6;
import ua.t6;
import y1.k;
import y1.s;
import y1.x;

/* loaded from: classes.dex */
public final class e implements k0, i0, b2.e {

    /* renamed from: a, reason: collision with root package name */
    public final z f19340a;

    /* renamed from: b, reason: collision with root package name */
    public final o0 f19341b;

    /* renamed from: c, reason: collision with root package name */
    public final p0 f19342c;

    /* renamed from: d, reason: collision with root package name */
    public final ba.i f19343d;

    /* renamed from: e, reason: collision with root package name */
    public final SparseArray f19344e;

    /* renamed from: f, reason: collision with root package name */
    public m f19345f;

    /* renamed from: g, reason: collision with root package name */
    public m0 f19346g;

    /* renamed from: h, reason: collision with root package name */
    public b0 f19347h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f19348i;

    public e(z zVar) {
        zVar.getClass();
        this.f19340a = zVar;
        String str = f0.f15206a;
        Looper looperMyLooper = Looper.myLooper();
        this.f19345f = new m((looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper).getThread());
        o0 o0Var = new o0();
        this.f19341b = o0Var;
        this.f19342c = new p0();
        this.f19343d = new ba.i(o0Var);
        this.f19344e = new SparseArray();
    }

    @Override // r1.k0
    public final void A(int i10, boolean z) {
        a aVarI = I();
        N(aVarI, -1, new c(i10, 15, aVarI, z));
    }

    @Override // r1.k0
    public final void B(int i10, l0 l0Var, l0 l0Var2) {
        if (i10 == 1) {
            this.f19348i = false;
        }
        m0 m0Var = this.f19346g;
        m0Var.getClass();
        ba.i iVar = this.f19343d;
        iVar.f2701d = ba.i.e(m0Var, (g0) iVar.f2699b, (c0) iVar.f2702e, (o0) iVar.f2698a);
        a aVarI = I();
        N(aVarI, 11, new d0(aVarI, i10, l0Var, l0Var2));
    }

    @Override // r1.k0
    public final void C(h0 h0Var) {
        a aVarI = I();
        N(aVarI, 12, new c(aVarI, h0Var, 4));
    }

    @Override // r1.k0
    public final void D(int i10, int i11) {
        a aVarM = M();
        N(aVarM, 24, new c(aVarM, i10, i11));
    }

    @Override // r1.k0
    public final void E(y yVar, int i10) {
        a aVarI = I();
        N(aVarI, 1, new c(aVarI, yVar, i10));
    }

    @Override // r1.k0
    public final void F(y0 y0Var) {
        a aVarI = I();
        N(aVarI, 27, new c(aVarI, y0Var, 23));
    }

    @Override // f2.i0
    public final void G(int i10, c0 c0Var, t tVar, f2.y yVar, int i11) {
        a aVarL = L(i10, c0Var);
        N(aVarL, 1000, new c(aVarL, tVar, yVar, i11));
    }

    @Override // r1.k0
    public final void H(boolean z) {
        a aVarI = I();
        N(aVarI, 7, new c(aVarI, z, 18));
    }

    public final a I() {
        return J((c0) this.f19343d.f2701d);
    }

    public final a J(c0 c0Var) {
        this.f19346g.getClass();
        q0 q0Var = c0Var == null ? null : (q0) ((d1) this.f19343d.f2700c).get(c0Var);
        if (c0Var != null && q0Var != null) {
            return K(q0Var, q0Var.g(c0Var.f5236a, this.f19341b).f13505c, c0Var);
        }
        int iA = ((x) this.f19346g).A();
        q0 q0VarE = ((x) this.f19346g).E();
        if (iA >= q0VarE.o()) {
            q0VarE = q0.f13551a;
        }
        return K(q0VarE, iA, null);
    }

    public final a K(q0 q0Var, int i10, c0 c0Var) {
        c0 c0Var2 = q0Var.p() ? null : c0Var;
        this.f19340a.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = q0Var.equals(((x) this.f19346g).E()) && i10 == ((x) this.f19346g).A();
        long jR = 0;
        if (c0Var2 == null || !c0Var2.b()) {
            if (z) {
                x xVar = (x) this.f19346g;
                xVar.h0();
                jR = xVar.x(xVar.f18853f1);
            } else if (!q0Var.p()) {
                jR = f0.R(q0Var.m(i10, this.f19342c, 0L).f13545k);
            }
        } else if (z && ((x) this.f19346g).y() == c0Var2.f5237b && ((x) this.f19346g).z() == c0Var2.f5238c) {
            jR = ((x) this.f19346g).C();
        }
        c0 c0Var3 = (c0) this.f19343d.f2701d;
        q0 q0VarE = ((x) this.f19346g).E();
        int iA = ((x) this.f19346g).A();
        long jC = ((x) this.f19346g).C();
        x xVar2 = (x) this.f19346g;
        xVar2.h0();
        return new a(jElapsedRealtime, q0Var, i10, c0Var2, jR, q0VarE, iA, c0Var3, jC, f0.R(xVar2.f18853f1.r));
    }

    public final a L(int i10, c0 c0Var) {
        this.f19346g.getClass();
        if (c0Var != null) {
            return ((q0) ((d1) this.f19343d.f2700c).get(c0Var)) != null ? J(c0Var) : K(q0.f13551a, i10, c0Var);
        }
        q0 q0VarE = ((x) this.f19346g).E();
        if (i10 >= q0VarE.o()) {
            q0VarE = q0.f13551a;
        }
        return K(q0VarE, i10, null);
    }

    public final a M() {
        return J((c0) this.f19343d.f2703f);
    }

    public final void N(a aVar, int i10, j jVar) {
        this.f19344e.put(i10, aVar);
        this.f19345f.e(i10, jVar);
    }

    public final void O(m0 m0Var, Looper looper) {
        o.t(this.f19346g == null || ((g0) this.f19343d.f2699b).isEmpty());
        m0Var.getClass();
        this.f19346g = m0Var;
        this.f19347h = this.f19340a.a(looper, null);
        m mVar = this.f19345f;
        g6 g6Var = new g6(this, 14, m0Var);
        mVar.getClass();
        z zVar = this.f19340a;
        o.t(zVar != null);
        this.f19345f = new m(mVar.f15246d, looper, looper.getThread(), zVar, g6Var, mVar.f15251i);
    }

    @Override // r1.k0
    public final void a(int i10) {
        a aVarI = I();
        N(aVarI, 6, new c(aVarI, i10, 19, (byte) 0));
    }

    @Override // r1.k0
    public final void b(b1 b1Var) {
        a aVarM = M();
        N(aVarM, 25, new s(aVarM, b1Var));
    }

    @Override // f2.i0
    public final void c(int i10, c0 c0Var, t tVar, f2.y yVar, IOException iOException, boolean z) {
        a aVarL = L(i10, c0Var);
        N(aVarL, 1003, new d(aVarL, tVar, yVar, iOException, z));
    }

    @Override // r1.k0
    public final void d(x0 x0Var) {
        a aVarI = I();
        N(aVarI, 2, new c(aVarI, x0Var, 5));
    }

    @Override // r1.k0
    public final void e(v0 v0Var) {
        a aVarI = I();
        N(aVarI, 19, new c(aVarI, v0Var, 8));
    }

    @Override // r1.k0
    public final void f(boolean z) {
        a aVarI = I();
        N(aVarI, 3, new c(aVarI, z, 9));
    }

    @Override // r1.k0
    public final void g(int i10, boolean z) {
        a aVarI = I();
        N(aVarI, 5, new c(i10, 21, aVarI, z));
    }

    @Override // r1.k0
    public final void h(r1.i0 i0Var) {
        a aVarI = I();
        N(aVarI, 13, new c(aVarI, i0Var, 10));
    }

    @Override // r1.k0
    public final void i(float f10) {
        a aVarM = M();
        N(aVarM, 22, new c(aVarM, f10));
    }

    @Override // r1.k0
    public final void j(int i10) {
        a aVarM = M();
        N(aVarM, 21, new t6(aVarM, i10, 21));
    }

    @Override // r1.k0
    public final void k(int i10) {
        a aVarI = I();
        N(aVarI, 4, new c(aVarI, i10, 24, (byte) 0));
    }

    @Override // f2.i0
    public final void l(int i10, c0 c0Var, f2.y yVar) {
        a aVarL = L(i10, c0Var);
        N(aVarL, 1004, new g6(aVarL, 13, yVar));
    }

    @Override // r1.k0
    public final void m(r1.b0 b0Var) {
        a aVarI = I();
        N(aVarI, 14, new c(aVarI, b0Var, 7));
    }

    @Override // r1.k0
    public final void n(k kVar) {
        c0 c0Var;
        a aVarI = (!(kVar instanceof k) || (c0Var = kVar.f18716h) == null) ? I() : J(c0Var);
        N(aVarI, 10, new c(aVarI, kVar, 20));
    }

    @Override // r1.k0
    public final void p(boolean z) {
        a aVarI = I();
        N(aVarI, 9, new c(aVarI, z, 27));
    }

    @Override // r1.k0
    public final void q(t1.c cVar) {
        a aVarI = I();
        N(aVarI, 27, new c(aVarI, cVar, 6));
    }

    @Override // r1.k0
    public final void r(k kVar) {
        c0 c0Var;
        a aVarI = (!(kVar instanceof k) || (c0Var = kVar.f18716h) == null) ? I() : J(c0Var);
        N(aVarI, 10, new g5(aVarI, (Object) kVar, 29));
    }

    @Override // f2.i0
    public final void s(int i10, c0 c0Var, t tVar, f2.y yVar) {
        a aVarL = L(i10, c0Var);
        N(aVarL, 1001, new t6(aVarL, tVar, yVar, 20));
    }

    @Override // r1.k0
    public final void t(int i10) {
        m0 m0Var = this.f19346g;
        m0Var.getClass();
        ba.i iVar = this.f19343d;
        iVar.f2701d = ba.i.e(m0Var, (g0) iVar.f2699b, (c0) iVar.f2702e, (o0) iVar.f2698a);
        iVar.j(((x) m0Var).E());
        a aVarI = I();
        N(aVarI, 0, new c(aVarI, i10, 11, (byte) 0));
    }

    @Override // r1.k0
    public final void u(r1.d dVar) {
        a aVarM = M();
        N(aVarM, 20, new c(aVarM, dVar, 16));
    }

    @Override // r1.k0
    public final void v(int i10) {
        a aVarI = I();
        N(aVarI, 8, new c(aVarI, i10, 26, (byte) 0));
    }

    @Override // f2.i0
    public final void w(int i10, c0 c0Var, t tVar, f2.y yVar) {
        a aVarL = L(i10, c0Var);
        N(aVarL, 1002, new t6(aVarL, tVar, yVar, 18));
    }

    @Override // r1.k0
    public final void x(r1.d0 d0Var) {
        a aVarI = I();
        N(aVarI, 28, new c(aVarI, d0Var, 17));
    }

    @Override // r1.k0
    public final void z(boolean z) {
        a aVarM = M();
        N(aVarM, 23, new t6(aVarM, z));
    }

    @Override // r1.k0
    public final void y() {
    }

    @Override // r1.k0
    public final void o(j0 j0Var) {
    }
}

package f2;

import android.content.Context;
import android.os.Looper;
import ha.j2;
import ha.jd;
import ua.i8;

/* loaded from: classes.dex */
public final class x0 extends a {

    /* renamed from: h, reason: collision with root package name */
    public final i8 f5428h;

    /* renamed from: i, reason: collision with root package name */
    public final a1.d f5429i;

    /* renamed from: j, reason: collision with root package name */
    public final b2.g f5430j;

    /* renamed from: k, reason: collision with root package name */
    public final j2 f5431k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public final r1.p f5432m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5433n = true;

    /* renamed from: o, reason: collision with root package name */
    public long f5434o = -9223372036854775807L;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5435p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5436q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public w1.x f5437s;

    /* renamed from: t, reason: collision with root package name */
    public r1.y f5438t;

    public x0(r1.y yVar, i8 i8Var, a1.d dVar, b2.g gVar, j2 j2Var, int i10, r1.p pVar) {
        this.f5438t = yVar;
        this.f5428h = i8Var;
        this.f5429i = dVar;
        this.f5430j = gVar;
        this.f5431k = j2Var;
        this.l = i10;
        this.f5432m = pVar;
    }

    @Override // f2.a
    public final a0 a(c0 c0Var, s4.a aVar, long j10) {
        i8 i8Var = this.f5428h;
        a0.h hVar = (a0.h) i8Var.f15742c;
        w1.k kVar = new w1.k((Context) i8Var.f15741b, new w1.m(hVar.f28b, hVar.f29c, (i8) hVar.f30d));
        w1.x xVar = this.f5437s;
        if (xVar != null) {
            kVar.f(xVar);
        }
        r1.v vVar = g().f13627b;
        vVar.getClass();
        this.f5199g.getClass();
        v3.f fVar = new v3.f((l2.r) this.f5429i.f71b);
        b2.d dVar = new b2.d(this.f5196d.f2530c, 0, c0Var);
        b2.d dVar2 = new b2.d(this.f5195c.f2530c, 0, c0Var);
        long jG = u1.f0.G(vVar.f13596e);
        return new u0(vVar.f13592a, kVar, fVar, this.f5430j, dVar, this.f5431k, dVar2, this, aVar, this.l, this.f5432m, jG, null);
    }

    @Override // f2.a
    public final synchronized r1.y g() {
        return this.f5438t;
    }

    @Override // f2.a
    public final void k(w1.x xVar) {
        this.f5437s = xVar;
        Looper looperMyLooper = Looper.myLooper();
        looperMyLooper.getClass();
        z1.i iVar = this.f5199g;
        iVar.getClass();
        b2.g gVar = this.f5430j;
        gVar.g(looperMyLooper, iVar);
        gVar.e();
        s();
    }

    @Override // f2.a
    public final void m(a0 a0Var) {
        u0 u0Var = (u0) a0Var;
        if (u0Var.z) {
            for (b1 b1Var : u0Var.f5410w) {
                b1Var.i();
                a1.i iVar = b1Var.f5212h;
                if (iVar != null) {
                    iVar.C(b1Var.f5209e);
                    b1Var.f5212h = null;
                    b1Var.f5211g = null;
                }
            }
        }
        i2.j jVar = u0Var.l;
        i2.h hVar = jVar.f8471b;
        if (hVar != null) {
            hVar.a(true);
        }
        androidx.activity.h hVar2 = new androidx.activity.h(11, u0Var);
        j2.a aVar = jVar.f8470a;
        aVar.execute(hVar2);
        jd jdVar = aVar.f9660b;
        aVar.f9659a.shutdown();
        u0Var.r.removeCallbacksAndMessages(null);
        u0Var.f5407s = null;
        u0Var.V = true;
    }

    @Override // f2.a
    public final void o() {
        this.f5430j.a();
    }

    @Override // f2.a
    public final synchronized void r(r1.y yVar) {
        this.f5438t = yVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [f2.v0] */
    /* JADX WARN: Type inference failed for: r7v0, types: [f2.a, f2.x0] */
    public final void s() {
        f1 f1Var = new f1(this.f5434o, this.f5435p, this.f5436q, g());
        if (this.f5433n) {
            f1Var = new v0(f1Var);
        }
        l(f1Var);
    }

    public final void t(long j10, l2.c0 c0Var, boolean z) {
        if (this.r && c0Var.e()) {
            return;
        }
        this.r = !c0Var.e();
        if (j10 == -9223372036854775807L) {
            j10 = this.f5434o;
        }
        boolean zC = c0Var.c();
        if (!this.f5433n && this.f5434o == j10 && this.f5435p == zC && this.f5436q == z) {
            return;
        }
        this.f5434o = j10;
        this.f5435p = zC;
        this.f5436q = z;
        this.f5433n = false;
        s();
    }

    @Override // f2.a
    public final void i() {
    }
}

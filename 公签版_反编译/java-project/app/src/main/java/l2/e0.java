package l2;

import f2.u0;
import java.util.List;
import u7.y0;

/* loaded from: classes.dex */
public final class e0 implements o {

    /* renamed from: a, reason: collision with root package name */
    public final int f10450a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10451b;

    /* renamed from: c, reason: collision with root package name */
    public final String f10452c;

    /* renamed from: d, reason: collision with root package name */
    public int f10453d;

    /* renamed from: e, reason: collision with root package name */
    public int f10454e;

    /* renamed from: f, reason: collision with root package name */
    public u0 f10455f;

    /* renamed from: g, reason: collision with root package name */
    public j0 f10456g;

    public e0(int i10, int i11, String str) {
        this.f10450a = i10;
        this.f10451b = i11;
        this.f10452c = str;
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(q qVar) {
        u0 u0Var = (u0) qVar;
        this.f10455f = u0Var;
        j0 j0VarZ = u0Var.z(1024, 4);
        this.f10456g = j0VarZ;
        r1.o oVar = new r1.o();
        String str = this.f10452c;
        oVar.f13491m = r1.e0.l(str);
        oVar.f13492n = r1.e0.l(str);
        j0VarZ.g(new r1.p(oVar));
        this.f10455f.q();
        this.f10455f.s(new f0());
        this.f10454e = 1;
    }

    @Override // l2.o
    public final int d(p pVar, dd.c cVar) {
        int i10 = this.f10454e;
        if (i10 != 1) {
            if (i10 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        j0 j0Var = this.f10456g;
        j0Var.getClass();
        int iE = j0Var.e(pVar, 1024, true);
        if (iE == -1) {
            this.f10454e = 2;
            this.f10456g.b(0L, 1, this.f10453d, 0, null);
            this.f10453d = 0;
        } else {
            this.f10453d += iE;
        }
        return 0;
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        if (j10 == 0 || this.f10454e == 1) {
            this.f10454e = 1;
            this.f10453d = 0;
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = u7.g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        int i10 = this.f10451b;
        int i11 = this.f10450a;
        a9.o.t((i11 == -1 || i10 == -1) ? false : true);
        u1.q qVar = new u1.q(i10);
        ((l) pVar).c(qVar.f15266a, 0, i10, false);
        return qVar.I() == i11;
    }

    @Override // l2.o
    public final void a() {
    }
}

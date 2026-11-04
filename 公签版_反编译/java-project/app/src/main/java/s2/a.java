package s2;

import androidx.recyclerview.widget.h;
import dd.c;
import f2.u0;
import f3.n;
import java.util.List;
import l2.j0;
import l2.l;
import l2.o;
import l2.p;
import l2.s;
import r1.d0;
import r1.e0;
import r1.f0;
import u1.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: b, reason: collision with root package name */
    public u0 f13965b;

    /* renamed from: c, reason: collision with root package name */
    public l f13966c;

    /* renamed from: d, reason: collision with root package name */
    public h f13967d;

    /* renamed from: e, reason: collision with root package name */
    public n f13968e;

    /* renamed from: g, reason: collision with root package name */
    public int f13970g;

    /* renamed from: h, reason: collision with root package name */
    public long f13971h;

    /* renamed from: i, reason: collision with root package name */
    public int f13972i;

    /* renamed from: a, reason: collision with root package name */
    public final q f13964a = new q(16);

    /* renamed from: j, reason: collision with root package name */
    public long f13973j = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f13969f = 0;

    @Override // l2.o
    public final void a() {
        n nVar = this.f13968e;
        if (nVar != null) {
            nVar.getClass();
            this.f13968e = null;
        }
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        this.f13965b = (u0) qVar;
    }

    @Override // l2.o
    public final int d(p pVar, c cVar) throws f0 {
        while (true) {
            int i10 = this.f13969f;
            if (i10 == 0) {
                int i11 = this.f13972i;
                q qVar = this.f13964a;
                if (i11 == 0) {
                    if (!((l) pVar).b(qVar.f15266a, 0, 8, true)) {
                        u0 u0Var = this.f13965b;
                        u0Var.getClass();
                        u0Var.q();
                        this.f13965b.s(new s(-9223372036854775807L));
                        this.f13969f = 4;
                        return -1;
                    }
                    this.f13972i = 8;
                    qVar.O(0);
                    this.f13971h = qVar.D();
                    this.f13970g = qVar.o();
                }
                if (this.f13971h == 1) {
                    ((l) pVar).b(qVar.f15266a, 8, 8, false);
                    this.f13972i += 8;
                    this.f13971h = qVar.H();
                }
                if (this.f13970g == 1836086884) {
                    long j10 = ((l) pVar).f10499d;
                    this.f13973j = j10;
                    long j11 = this.f13972i;
                    u2.b bVar = new u2.b(0L, j10 - j11, -9223372036854775807L, j10, this.f13971h - j11);
                    u0 u0Var2 = this.f13965b;
                    u0Var2.getClass();
                    j0 j0VarZ = u0Var2.z(1024, 4);
                    r1.o oVar = new r1.o();
                    oVar.f13491m = e0.l("image/heic");
                    oVar.f13490k = new d0(bVar);
                    j0VarZ.g(new r1.p(oVar));
                    this.f13969f = 2;
                } else {
                    this.f13969f = 1;
                }
            } else if (i10 == 1) {
                ((l) pVar).o((int) (this.f13971h - this.f13972i), false);
                this.f13972i = 0;
                this.f13969f = 0;
            } else {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return -1;
                        }
                        throw new IllegalStateException();
                    }
                    if (this.f13967d == null || pVar != this.f13966c) {
                        l lVar = (l) pVar;
                        this.f13966c = lVar;
                        this.f13967d = new h(lVar, this.f13973j);
                    }
                    n nVar = this.f13968e;
                    nVar.getClass();
                    int iD = nVar.d(this.f13967d, cVar);
                    if (iD == 1) {
                        cVar.f4591b += this.f13973j;
                    }
                    return iD;
                }
                if (this.f13968e == null) {
                    this.f13968e = new n(i3.h.B0, 8);
                }
                h hVar = new h((l) pVar, this.f13973j);
                this.f13967d = hVar;
                if (this.f13968e.g(hVar)) {
                    n nVar2 = this.f13968e;
                    long j12 = this.f13973j;
                    u0 u0Var3 = this.f13965b;
                    u0Var3.getClass();
                    nVar2.c(new h(3, j12, u0Var3));
                    this.f13969f = 3;
                } else {
                    u0 u0Var4 = this.f13965b;
                    u0Var4.getClass();
                    u0Var4.q();
                    this.f13965b.s(new s(-9223372036854775807L));
                    this.f13969f = 4;
                }
            }
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        if (j10 != 0) {
            if (this.f13969f == 3) {
                n nVar = this.f13968e;
                nVar.getClass();
                nVar.e(j10, j11);
                return;
            }
            return;
        }
        this.f13969f = 0;
        this.f13972i = 0;
        this.f13973j = -1L;
        if (this.f13968e != null) {
            this.f13968e = null;
        }
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        return android.support.v4.media.session.b.H((l) pVar, true);
    }
}

package o2;

import dd.c;
import java.util.List;
import l2.e0;
import l2.l;
import l2.o;
import l2.p;
import u1.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11513a;

    /* renamed from: b, reason: collision with root package name */
    public final q f11514b;

    /* renamed from: c, reason: collision with root package name */
    public final e0 f11515c;

    public a(int i10) {
        this.f11513a = i10;
        switch (i10) {
            case 1:
                this.f11514b = new q(4);
                this.f11515c = new e0(-1, -1, "image/webp");
                break;
            default:
                this.f11514b = new q(4);
                this.f11515c = new e0(-1, -1, "image/avif");
                break;
        }
    }

    @Override // l2.o
    public final void a() {
        int i10 = this.f11513a;
    }

    @Override // l2.o
    public final o b() {
        int i10 = this.f11513a;
        return this;
    }

    @Override // l2.o
    public final void c(l2.q qVar) {
        switch (this.f11513a) {
            case 0:
                this.f11515c.c(qVar);
                break;
            default:
                this.f11515c.c(qVar);
                break;
        }
    }

    @Override // l2.o
    public final int d(p pVar, c cVar) {
        switch (this.f11513a) {
        }
        return this.f11515c.d(pVar, cVar);
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        switch (this.f11513a) {
            case 0:
                this.f11515c.e(j10, j11);
                break;
            default:
                this.f11515c.e(j10, j11);
                break;
        }
    }

    @Override // l2.o
    public final List f() {
        switch (this.f11513a) {
            case 0:
                u7.e0 e0Var = g0.f15471b;
                break;
            default:
                u7.e0 e0Var2 = g0.f15471b;
                break;
        }
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        switch (this.f11513a) {
            case 0:
                l lVar = (l) pVar;
                lVar.k(4, false);
                q qVar = this.f11514b;
                qVar.L(4);
                lVar.c(qVar.f15266a, 0, 4, false);
                if (qVar.D() == 1718909296) {
                    qVar.L(4);
                    lVar.c(qVar.f15266a, 0, 4, false);
                    if (qVar.D() == 1635150182) {
                    }
                }
                break;
            default:
                q qVar2 = this.f11514b;
                qVar2.L(4);
                l lVar2 = (l) pVar;
                lVar2.c(qVar2.f15266a, 0, 4, false);
                if (qVar2.D() == 1380533830) {
                    lVar2.k(4, false);
                    qVar2.L(4);
                    lVar2.c(qVar2.f15266a, 0, 4, false);
                    if (qVar2.D() == 1464156752) {
                    }
                }
                break;
        }
        return false;
    }

    private final void h() {
    }

    private final void i() {
    }
}

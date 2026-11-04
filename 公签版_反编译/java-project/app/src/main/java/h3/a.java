package h3;

import dd.c;
import java.util.List;
import l2.e0;
import l2.o;
import l2.p;
import l2.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6411a;

    /* renamed from: b, reason: collision with root package name */
    public final o f6412b;

    public a(byte b10, int i10) {
        this.f6411a = i10;
        switch (i10) {
            case 1:
                this.f6412b = new e0(16973, 2, "image/bmp");
                break;
            default:
                this.f6412b = new e0(35152, 2, "image/png");
                break;
        }
    }

    @Override // l2.o
    public final void a() {
        switch (this.f6411a) {
            case 0:
            case 1:
                break;
            default:
                this.f6412b.a();
                break;
        }
    }

    @Override // l2.o
    public final o b() {
        int i10 = this.f6411a;
        return this;
    }

    @Override // l2.o
    public final void c(q qVar) {
        switch (this.f6411a) {
            case 0:
                ((e0) this.f6412b).c(qVar);
                break;
            case 1:
                ((e0) this.f6412b).c(qVar);
                break;
            default:
                this.f6412b.c(qVar);
                break;
        }
    }

    @Override // l2.o
    public final int d(p pVar, c cVar) {
        switch (this.f6411a) {
            case 0:
                return ((e0) this.f6412b).d(pVar, cVar);
            case 1:
                return ((e0) this.f6412b).d(pVar, cVar);
            default:
                return this.f6412b.d(pVar, cVar);
        }
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        switch (this.f6411a) {
            case 0:
                ((e0) this.f6412b).e(j10, j11);
                break;
            case 1:
                ((e0) this.f6412b).e(j10, j11);
                break;
            default:
                this.f6412b.e(j10, j11);
                break;
        }
    }

    @Override // l2.o
    public final List f() {
        switch (this.f6411a) {
            case 0:
                u7.e0 e0Var = g0.f15471b;
                break;
            case 1:
                u7.e0 e0Var2 = g0.f15471b;
                break;
            default:
                u7.e0 e0Var3 = g0.f15471b;
                break;
        }
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        switch (this.f6411a) {
            case 0:
                return ((e0) this.f6412b).g(pVar);
            case 1:
                return ((e0) this.f6412b).g(pVar);
            default:
                return this.f6412b.g(pVar);
        }
    }

    public a(int i10) {
        this.f6411a = 2;
        if ((i10 & 1) != 0) {
            this.f6412b = new e0(65496, 2, "image/jpeg");
        } else {
            this.f6412b = new t2.a();
        }
    }

    private final void h() {
    }

    private final void i() {
    }
}

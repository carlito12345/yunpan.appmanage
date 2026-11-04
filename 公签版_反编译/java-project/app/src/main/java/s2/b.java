package s2;

import dd.c;
import java.util.List;
import l2.e0;
import l2.l;
import l2.o;
import l2.p;
import l2.q;
import u7.g0;
import u7.y0;

/* loaded from: classes.dex */
public final class b implements o {

    /* renamed from: a, reason: collision with root package name */
    public final o f13974a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f13975b;

    public b(int i10) {
        boolean z = (i10 & 1) != 0;
        this.f13975b = z;
        if (z) {
            this.f13974a = new e0(-1, -1, "image/heif");
        } else {
            this.f13974a = new a();
        }
    }

    @Override // l2.o
    public final void a() {
        this.f13974a.a();
    }

    @Override // l2.o
    public final o b() {
        return this;
    }

    @Override // l2.o
    public final void c(q qVar) {
        this.f13974a.c(qVar);
    }

    @Override // l2.o
    public final int d(p pVar, c cVar) {
        return this.f13974a.d(pVar, cVar);
    }

    @Override // l2.o
    public final void e(long j10, long j11) {
        this.f13974a.e(j10, j11);
    }

    @Override // l2.o
    public final List f() {
        u7.e0 e0Var = g0.f15471b;
        return y0.f15549e;
    }

    @Override // l2.o
    public final boolean g(p pVar) {
        return this.f13975b ? android.support.v4.media.session.b.H((l) pVar, false) : this.f13974a.g(pVar);
    }
}

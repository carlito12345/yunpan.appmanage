package th;

import sh.f;
import sh.p;
import wh.l;
import wh.n;
import wh.o;

/* loaded from: classes3.dex */
public abstract class b extends vh.a implements l, Comparable {
    @Override // vh.b, wh.k
    public Object c(o oVar) {
        if (oVar == n.f17927b) {
            ((f) this).f14586a.getClass();
            return e.f15102a;
        }
        if (oVar == n.f17928c) {
            return wh.b.NANOS;
        }
        if (oVar == n.f17931f) {
            return sh.e.w(((f) this).f14586a.m());
        }
        if (oVar == n.f17932g) {
            return ((f) this).f14587b;
        }
        if (oVar == n.f17929d || oVar == n.f17926a || oVar == n.f17930e) {
            return null;
        }
        return super.c(oVar);
    }

    public final long m(p pVar) {
        p000if.a.t0(pVar, "offset");
        return ((((f) this).f14586a.m() * 86400) + r0.f14587b.x()) - pVar.f14619a;
    }
}

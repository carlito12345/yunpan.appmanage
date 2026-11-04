package th;

import wh.l;
import wh.n;
import wh.o;

/* loaded from: classes3.dex */
public abstract class a extends vh.a implements l, Comparable {
    @Override // vh.b, wh.k
    public Object c(o oVar) {
        if (oVar == n.f17927b) {
            return e.f15102a;
        }
        if (oVar == n.f17928c) {
            return wh.b.DAYS;
        }
        if (oVar == n.f17931f) {
            return sh.e.w(m());
        }
        if (oVar == n.f17932g || oVar == n.f17929d || oVar == n.f17926a || oVar == n.f17930e) {
            return null;
        }
        return super.c(oVar);
    }

    public abstract long m();
}

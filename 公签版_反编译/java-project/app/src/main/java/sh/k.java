package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class k extends vh.b implements wh.j, wh.l, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14604c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final g f14605a;

    /* renamed from: b, reason: collision with root package name */
    public final p f14606b;

    static {
        g gVar = g.f14588e;
        p pVar = p.f14618g;
        gVar.getClass();
        new k(gVar, pVar);
        g gVar2 = g.f14589f;
        p pVar2 = p.f14617f;
        gVar2.getClass();
        new k(gVar2, pVar2);
    }

    public k(g gVar, p pVar) {
        p000if.a.t0(gVar, "time");
        this.f14605a = gVar;
        p000if.a.t0(pVar, "offset");
        this.f14606b = pVar;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 66, this);
    }

    @Override // wh.j
    public final wh.j a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (k) mVar.g(this, j10);
        }
        wh.a aVar = wh.a.OFFSET_SECONDS;
        g gVar = this.f14605a;
        if (mVar != aVar) {
            return n(gVar.a(j10, mVar), this.f14606b);
        }
        wh.a aVar2 = (wh.a) mVar;
        return n(gVar, p.r(aVar2.f17909b.a(j10, aVar2)));
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.OFFSET_SECONDS ? this.f14606b.f14619a : this.f14605a.b(mVar) : mVar.a(this);
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17928c) {
            return wh.b.NANOS;
        }
        if (oVar == wh.n.f17930e || oVar == wh.n.f17929d) {
            return this.f14606b;
        }
        if (oVar == wh.n.f17932g) {
            return this.f14605a;
        }
        if (oVar == wh.n.f17927b || oVar == wh.n.f17931f || oVar == wh.n.f17926a) {
            return null;
        }
        return super.c(oVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        k kVar = (k) obj;
        p pVar = kVar.f14606b;
        boolean zEquals = this.f14606b.equals(pVar);
        g gVar = kVar.f14605a;
        g gVar2 = this.f14605a;
        if (zEquals) {
            return gVar2.compareTo(gVar);
        }
        int iM = p000if.a.m(gVar2.w() - (r1.f14619a * 1000000000), gVar.w() - (kVar.f14606b.f14619a * 1000000000));
        return iM == 0 ? gVar2.compareTo(gVar) : iM;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).i() || mVar == wh.a.OFFSET_SECONDS : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f14605a.equals(kVar.f14605a) && this.f14606b.equals(kVar.f14606b);
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.OFFSET_SECONDS ? ((wh.a) mVar).f17909b : this.f14605a.f(mVar) : mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(this.f14605a.w(), wh.a.NANO_OF_DAY).a(this.f14606b.f14619a, wh.a.OFFSET_SECONDS);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return (k) eVar.g(this);
    }

    public final int hashCode() {
        return this.f14605a.hashCode() ^ this.f14606b.f14619a;
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // wh.j
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final k j(long j10, wh.b bVar) {
        if (bVar instanceof wh.b) {
            return n(this.f14605a.j(j10, bVar), this.f14606b);
        }
        bVar.getClass();
        return (k) j(j10, bVar);
    }

    public final k n(g gVar, p pVar) {
        return (this.f14605a == gVar && this.f14606b.equals(pVar)) ? this : new k(gVar, pVar);
    }

    public final String toString() {
        return this.f14605a.toString() + this.f14606b.f14620b;
    }
}

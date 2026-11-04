package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class j extends vh.a implements wh.l, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14601c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final f f14602a;

    /* renamed from: b, reason: collision with root package name */
    public final p f14603b;

    static {
        f fVar = f.f14584c;
        p pVar = p.f14618g;
        fVar.getClass();
        new j(fVar, pVar);
        f fVar2 = f.f14585d;
        p pVar2 = p.f14617f;
        fVar2.getClass();
        new j(fVar2, pVar2);
    }

    public j(f fVar, p pVar) {
        p000if.a.t0(fVar, "dateTime");
        this.f14602a = fVar;
        p000if.a.t0(pVar, "offset");
        this.f14603b = pVar;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 69, this);
    }

    @Override // wh.j
    public final wh.j a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (j) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        int iOrdinal = aVar.ordinal();
        f fVar = this.f14602a;
        p pVar = this.f14603b;
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? n(fVar.a(j10, mVar), pVar) : n(fVar, p.r(aVar.f17909b.a(j10, aVar)));
        }
        d dVarN = d.n(j10, fVar.f14587b.f14594d);
        p000if.a.t0(dVarN, "instant");
        p000if.a.t0(pVar, "zone");
        p pVarA = pVar.n().a(dVarN);
        return new j(f.r(dVarN.f14577a, dVarN.f14578b, pVarA), pVarA);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        p pVar = this.f14603b;
        f fVar = this.f14602a;
        return iOrdinal != 28 ? iOrdinal != 29 ? fVar.b(mVar) : pVar.f14619a : fVar.m(pVar);
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17927b) {
            return th.e.f15102a;
        }
        if (oVar == wh.n.f17928c) {
            return wh.b.NANOS;
        }
        if (oVar == wh.n.f17930e || oVar == wh.n.f17929d) {
            return this.f14603b;
        }
        s5.c cVar = wh.n.f17931f;
        f fVar = this.f14602a;
        if (oVar == cVar) {
            return fVar.f14586a;
        }
        if (oVar == wh.n.f17932g) {
            return fVar.f14587b;
        }
        if (oVar == wh.n.f17926a) {
            return null;
        }
        return super.c(oVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        j jVar = (j) obj;
        p pVar = jVar.f14603b;
        p pVar2 = this.f14603b;
        boolean zEquals = pVar2.equals(pVar);
        f fVar = jVar.f14602a;
        f fVar2 = this.f14602a;
        if (zEquals) {
            return fVar2.compareTo(fVar);
        }
        int iM = p000if.a.m(fVar2.m(pVar2), fVar.m(jVar.f14603b));
        if (iM != 0) {
            return iM;
        }
        int i10 = fVar2.f14587b.f14594d - fVar.f14587b.f14594d;
        return i10 == 0 ? fVar2.compareTo(fVar) : i10;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return (mVar instanceof wh.a) || (mVar != null && mVar.f(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f14602a.equals(jVar.f14602a) && this.f14603b.equals(jVar.f14603b);
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        return mVar instanceof wh.a ? (mVar == wh.a.INSTANT_SECONDS || mVar == wh.a.OFFSET_SECONDS) ? ((wh.a) mVar).f17909b : this.f14602a.f(mVar) : mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        wh.a aVar = wh.a.EPOCH_DAY;
        f fVar = this.f14602a;
        return jVar.a(fVar.f14586a.m(), aVar).a(fVar.f14587b.w(), wh.a.NANO_OF_DAY).a(this.f14603b.f14619a, wh.a.OFFSET_SECONDS);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        f fVar = this.f14602a;
        return n(fVar.w(eVar, fVar.f14587b), this.f14603b);
    }

    public final int hashCode() {
        return this.f14602a.hashCode() ^ this.f14603b.f14619a;
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return super.i(mVar);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? this.f14602a.i(mVar) : this.f14603b.f14619a;
        }
        throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // wh.j
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final j j(long j10, wh.b bVar) {
        if (bVar instanceof wh.b) {
            return n(this.f14602a.j(j10, bVar), this.f14603b);
        }
        bVar.getClass();
        return (j) j(j10, bVar);
    }

    public final j n(f fVar, p pVar) {
        return (this.f14602a == fVar && this.f14603b.equals(pVar)) ? this : new j(fVar, pVar);
    }

    public final String toString() {
        return this.f14602a.toString() + this.f14603b.f14620b;
    }
}

package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes3.dex */
public final class r extends th.c implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final f f14624a;

    /* renamed from: b, reason: collision with root package name */
    public final p f14625b;

    /* renamed from: c, reason: collision with root package name */
    public final o f14626c;

    public r(f fVar, o oVar, p pVar) {
        this.f14624a = fVar;
        this.f14625b = pVar;
        this.f14626c = oVar;
    }

    public static r n(long j10, int i10, o oVar) {
        p pVarA = oVar.n().a(d.n(j10, i10));
        return new r(f.r(j10, i10, pVarA), oVar, pVarA);
    }

    public static r o(f fVar, o oVar, p pVar) {
        p000if.a.t0(fVar, "localDateTime");
        p000if.a.t0(oVar, "zone");
        if (oVar instanceof p) {
            return new r(fVar, oVar, (p) oVar);
        }
        xh.h hVarN = oVar.n();
        List listC = hVarN.c(fVar);
        if (listC.size() == 1) {
            pVar = (p) listC.get(0);
        } else if (listC.size() == 0) {
            xh.e eVarB = hVarN.b(fVar);
            fVar = fVar.t(c.a(0, eVarB.f18502c.f14619a - eVarB.f18501b.f14619a).f14574a);
            pVar = eVarB.f18502c;
        } else if (pVar == null || !listC.contains(pVar)) {
            Object obj = listC.get(0);
            p000if.a.t0(obj, "offset");
            pVar = (p) obj;
        }
        return new r(fVar, oVar, pVar);
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 6, this);
    }

    @Override // wh.j
    public final wh.j a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (r) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        int iOrdinal = aVar.ordinal();
        f fVar = this.f14624a;
        o oVar = this.f14626c;
        if (iOrdinal == 28) {
            return n(j10, fVar.f14587b.f14594d, oVar);
        }
        p pVar = this.f14625b;
        if (iOrdinal != 29) {
            return o(fVar.a(j10, mVar), oVar, pVar);
        }
        p pVarR = p.r(aVar.f17909b.a(j10, aVar));
        return (pVarR.equals(pVar) || !oVar.n().d(fVar, pVarR)) ? this : new r(fVar, oVar, pVarR);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        return iOrdinal != 28 ? iOrdinal != 29 ? this.f14624a.b(mVar) : this.f14625b.f14619a : m();
    }

    @Override // th.c, vh.b, wh.k
    public final Object c(wh.o oVar) {
        return oVar == wh.n.f17931f ? this.f14624a.f14586a : super.c(oVar);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return (mVar instanceof wh.a) || (mVar != null && mVar.f(this));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f14624a.equals(rVar.f14624a) && this.f14625b.equals(rVar.f14625b) && this.f14626c.equals(rVar.f14626c);
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        return mVar instanceof wh.a ? (mVar == wh.a.INSTANT_SECONDS || mVar == wh.a.OFFSET_SECONDS) ? ((wh.a) mVar).f17909b : this.f14624a.f(mVar) : mVar.c(this);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return o(f.q(eVar, this.f14624a.f14587b), this.f14626c, this.f14625b);
    }

    public final int hashCode() {
        return (this.f14624a.hashCode() ^ this.f14625b.f14619a) ^ Integer.rotateLeft(this.f14626c.hashCode(), 3);
    }

    @Override // th.c, vh.b, wh.k
    public final int i(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return super.i(mVar);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        if (iOrdinal != 28) {
            return iOrdinal != 29 ? this.f14624a.i(mVar) : this.f14625b.f14619a;
        }
        throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // wh.j
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final r j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (r) j(j10, bVar);
        }
        int iCompareTo = bVar.compareTo(wh.b.DAYS);
        p pVar = this.f14625b;
        o oVar = this.f14626c;
        f fVar = this.f14624a;
        if (iCompareTo >= 0 && bVar != wh.b.FOREVER) {
            return o(fVar.j(j10, bVar), oVar, pVar);
        }
        f fVarJ = fVar.j(j10, bVar);
        p000if.a.t0(fVarJ, "localDateTime");
        p000if.a.t0(pVar, "offset");
        p000if.a.t0(oVar, "zone");
        return n(fVarJ.m(pVar), fVarJ.f14587b.f14594d, oVar);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f14624a.toString());
        p pVar = this.f14625b;
        sb2.append(pVar.f14620b);
        String string = sb2.toString();
        o oVar = this.f14626c;
        if (pVar == oVar) {
            return string;
        }
        return string + '[' + oVar.toString() + ']';
    }
}

package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class m extends vh.b implements wh.j, wh.l, Comparable, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f14609b = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f14610a;

    static {
        uh.m mVar = new uh.m();
        mVar.h(wh.a.YEAR, 4, 10, 5);
        mVar.k();
    }

    public m(int i10) {
        this.f14610a = i10;
    }

    public static m m(int i10) {
        wh.a.YEAR.h(i10);
        return new m(i10);
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 67, this);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        int i10 = this.f14610a;
        switch (iOrdinal) {
            case 25:
                if (i10 < 1) {
                    i10 = 1 - i10;
                }
                return i10;
            case 26:
                return i10;
            case 27:
                return i10 < 1 ? 0 : 1;
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17927b) {
            return th.e.f15102a;
        }
        if (oVar == wh.n.f17928c) {
            return wh.b.YEARS;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17929d || oVar == wh.n.f17926a || oVar == wh.n.f17930e) {
            return null;
        }
        return super.c(oVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f14610a - ((m) obj).f14610a;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.YEAR || mVar == wh.a.YEAR_OF_ERA || mVar == wh.a.ERA : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            return this.f14610a == ((m) obj).f14610a;
        }
        return false;
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.YEAR_OF_ERA) {
            return wh.r.c(1L, this.f14610a <= 0 ? 1000000000L : 999999999L);
        }
        return super.f(mVar);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        if (!th.d.a(jVar).equals(th.e.f15102a)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        return jVar.a(this.f14610a, wh.a.YEAR);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return (m) eVar.g(this);
    }

    public final int hashCode() {
        return this.f14610a;
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        return f(mVar).a(b(mVar), mVar);
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // wh.j
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final m j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (m) j(j10, bVar);
        }
        switch (bVar.ordinal()) {
            case 10:
                return o(j10);
            case 11:
                return o(p000if.a.v0(10, j10));
            case 12:
                return o(p000if.a.v0(100, j10));
            case 13:
                return o(p000if.a.v0(1000, j10));
            case 14:
                wh.a aVar = wh.a.ERA;
                return a(p000if.a.u0(b(aVar), j10), aVar);
            default:
                throw new wh.q("Unsupported unit: " + bVar);
        }
    }

    public final m o(long j10) {
        if (j10 == 0) {
            return this;
        }
        wh.a aVar = wh.a.YEAR;
        return m(aVar.f17909b.a(this.f14610a + j10, aVar));
    }

    @Override // wh.j
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final m a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (m) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        aVar.h(j10);
        int iOrdinal = aVar.ordinal();
        int i10 = this.f14610a;
        switch (iOrdinal) {
            case 25:
                if (i10 < 1) {
                    j10 = 1 - j10;
                }
                return m((int) j10);
            case 26:
                return m((int) j10);
            case 27:
                return b(wh.a.ERA) == j10 ? this : m(1 - i10);
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    public final String toString() {
        return Integer.toString(this.f14610a);
    }
}

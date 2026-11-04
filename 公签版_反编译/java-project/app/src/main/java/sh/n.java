package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class n extends vh.b implements wh.j, wh.l, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f14611c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f14612a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14613b;

    static {
        uh.m mVar = new uh.m();
        mVar.h(wh.a.YEAR, 4, 10, 5);
        mVar.c('-');
        mVar.g(wh.a.MONTH_OF_YEAR, 2);
        mVar.k();
    }

    public n(int i10, int i11) {
        this.f14612a = i10;
        this.f14613b = i11;
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 68, this);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        int i10 = this.f14613b;
        int i11 = this.f14612a;
        switch (iOrdinal) {
            case 23:
                return i10;
            case 24:
                return (i11 * 12) + (i10 - 1);
            case 25:
                if (i11 < 1) {
                    i11 = 1 - i11;
                }
                return i11;
            case 26:
                return i11;
            case 27:
                return i11 < 1 ? 0 : 1;
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
            return wh.b.MONTHS;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17929d || oVar == wh.n.f17926a || oVar == wh.n.f17930e) {
            return null;
        }
        return super.c(oVar);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        n nVar = (n) obj;
        int i10 = this.f14612a - nVar.f14612a;
        return i10 == 0 ? this.f14613b - nVar.f14613b : i10;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.YEAR || mVar == wh.a.MONTH_OF_YEAR || mVar == wh.a.PROLEPTIC_MONTH || mVar == wh.a.YEAR_OF_ERA || mVar == wh.a.ERA : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f14612a == nVar.f14612a && this.f14613b == nVar.f14613b;
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.YEAR_OF_ERA) {
            return wh.r.c(1L, this.f14612a <= 0 ? 1000000000L : 999999999L);
        }
        return super.f(mVar);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        if (!th.d.a(jVar).equals(th.e.f15102a)) {
            throw new a("Adjustment only supported on ISO date-time");
        }
        return jVar.a((this.f14612a * 12) + (this.f14613b - 1), wh.a.PROLEPTIC_MONTH);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return (n) eVar.g(this);
    }

    public final int hashCode() {
        return (this.f14613b << 27) ^ this.f14612a;
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
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final n j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (n) j(j10, bVar);
        }
        switch (bVar.ordinal()) {
            case 9:
                return n(j10);
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

    public final n n(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.f14612a * 12) + (this.f14613b - 1) + j10;
        wh.a aVar = wh.a.YEAR;
        return p(aVar.f17909b.a(p000if.a.C(j11, 12L), aVar), p000if.a.D(12, j11) + 1);
    }

    public final n o(long j10) {
        if (j10 == 0) {
            return this;
        }
        wh.a aVar = wh.a.YEAR;
        return p(aVar.f17909b.a(this.f14612a + j10, aVar), this.f14613b);
    }

    public final n p(int i10, int i11) {
        return (this.f14612a == i10 && this.f14613b == i11) ? this : new n(i10, i11);
    }

    @Override // wh.j
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public final n a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (n) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        aVar.h(j10);
        int iOrdinal = aVar.ordinal();
        int i10 = this.f14613b;
        int i11 = this.f14612a;
        switch (iOrdinal) {
            case 23:
                int i12 = (int) j10;
                wh.a.MONTH_OF_YEAR.h(i12);
                return p(i11, i12);
            case 24:
                return n(j10 - b(wh.a.PROLEPTIC_MONTH));
            case 25:
                if (i11 < 1) {
                    j10 = 1 - j10;
                }
                int i13 = (int) j10;
                wh.a.YEAR.h(i13);
                return p(i13, i10);
            case 26:
                int i14 = (int) j10;
                wh.a.YEAR.h(i14);
                return p(i14, i10);
            case 27:
                if (b(wh.a.ERA) == j10) {
                    return this;
                }
                int i15 = 1 - i11;
                wh.a.YEAR.h(i15);
                return p(i15, i10);
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    public final String toString() {
        int i10 = this.f14612a;
        int iAbs = Math.abs(i10);
        StringBuilder sb2 = new StringBuilder(9);
        if (iAbs >= 1000) {
            sb2.append(i10);
        } else if (i10 < 0) {
            sb2.append(i10 - 10000);
            sb2.deleteCharAt(1);
        } else {
            sb2.append(i10 + 10000);
            sb2.deleteCharAt(0);
        }
        int i11 = this.f14613b;
        sb2.append(i11 < 10 ? "-0" : "-");
        sb2.append(i11);
        return sb2.toString();
    }
}

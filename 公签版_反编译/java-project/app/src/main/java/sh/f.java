package sh;

import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class f extends th.b implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final f f14584c = q(e.f14579d, g.f14588e);

    /* renamed from: d, reason: collision with root package name */
    public static final f f14585d = q(e.f14580e, g.f14589f);

    /* renamed from: a, reason: collision with root package name */
    public final e f14586a;

    /* renamed from: b, reason: collision with root package name */
    public final g f14587b;

    public f(e eVar, g gVar) {
        this.f14586a = eVar;
        this.f14587b = gVar;
    }

    public static f q(e eVar, g gVar) {
        p000if.a.t0(eVar, "date");
        p000if.a.t0(gVar, "time");
        return new f(eVar, gVar);
    }

    public static f r(long j10, int i10, p pVar) {
        p000if.a.t0(pVar, "offset");
        long j11 = j10 + pVar.f14619a;
        long jC = p000if.a.C(j11, 86400L);
        int iD = p000if.a.D(86400, j11);
        e eVarW = e.w(jC);
        long j12 = iD;
        g gVar = g.f14588e;
        wh.a.SECOND_OF_DAY.h(j12);
        wh.a.NANO_OF_SECOND.h(i10);
        int i11 = (int) (j12 / 3600);
        long j13 = j12 - (i11 * 3600);
        return new f(eVarW, g.n(i11, (int) (j13 / 60), (int) (j13 - (r7 * 60)), i10));
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 4, this);
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).i() ? this.f14587b.b(mVar) : this.f14586a.b(mVar) : mVar.a(this);
    }

    @Override // th.b, vh.b, wh.k
    public final Object c(wh.o oVar) {
        return oVar == wh.n.f17931f ? this.f14586a : super.c(oVar);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return mVar != null && mVar.f(this);
        }
        wh.a aVar = (wh.a) mVar;
        return aVar.b() || aVar.i();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f14586a.equals(fVar.f14586a) && this.f14587b.equals(fVar.f14587b);
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).i() ? this.f14587b.f(mVar) : this.f14586a.f(mVar) : mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(this.f14586a.m(), wh.a.EPOCH_DAY).a(this.f14587b.w(), wh.a.NANO_OF_DAY);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return w(eVar, this.f14587b);
    }

    public final int hashCode() {
        return this.f14586a.hashCode() ^ this.f14587b.hashCode();
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).i() ? this.f14587b.i(mVar) : this.f14586a.i(mVar) : super.i(mVar);
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final int compareTo(th.b bVar) {
        if (bVar instanceof f) {
            return o((f) bVar);
        }
        f fVar = (f) bVar;
        e eVar = fVar.f14586a;
        e eVar2 = this.f14586a;
        int iCompareTo = eVar2.compareTo(eVar);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iM = this.f14587b.compareTo(fVar.f14587b);
        if (iM != 0) {
            return iM;
        }
        eVar2.getClass();
        th.e eVar3 = th.e.f15102a;
        bVar.getClass();
        ((f) bVar).f14586a.getClass();
        eVar3.getClass();
        eVar3.getClass();
        return 0;
    }

    public final int o(f fVar) {
        int iO = this.f14586a.o(fVar.f14586a);
        return iO == 0 ? this.f14587b.compareTo(fVar.f14587b) : iO;
    }

    public final boolean p(f fVar) {
        if (fVar instanceof f) {
            return o(fVar) < 0;
        }
        long jM = this.f14586a.m();
        long jM2 = fVar.f14586a.m();
        return jM < jM2 || (jM == jM2 && this.f14587b.w() < fVar.f14587b.w());
    }

    @Override // wh.j
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public final f j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (f) j(j10, bVar);
        }
        int iOrdinal = bVar.ordinal();
        g gVar = this.f14587b;
        e eVar = this.f14586a;
        switch (iOrdinal) {
            case 0:
                return u(this.f14586a, 0L, 0L, 0L, j10);
            case 1:
                f fVarW = w(eVar.y(j10 / 86400000000L), gVar);
                return fVarW.u(fVarW.f14586a, 0L, 0L, 0L, (j10 % 86400000000L) * 1000);
            case 2:
                f fVarW2 = w(eVar.y(j10 / 86400000), gVar);
                return fVarW2.u(fVarW2.f14586a, 0L, 0L, 0L, (j10 % 86400000) * 1000000);
            case 3:
                return t(j10);
            case 4:
                return u(this.f14586a, 0L, j10, 0L, 0L);
            case 5:
                return u(this.f14586a, j10, 0L, 0L, 0L);
            case 6:
                f fVarW3 = w(eVar.y(j10 / 256), gVar);
                return fVarW3.u(fVarW3.f14586a, (j10 % 256) * 12, 0L, 0L, 0L);
            default:
                return w(eVar.j(j10, bVar), gVar);
        }
    }

    public final f t(long j10) {
        return u(this.f14586a, 0L, 0L, j10, 0L);
    }

    public final String toString() {
        return this.f14586a.toString() + 'T' + this.f14587b.toString();
    }

    public final f u(e eVar, long j10, long j11, long j12, long j13) {
        long j14 = j10 | j11 | j12 | j13;
        g gVarP = this.f14587b;
        if (j14 == 0) {
            return w(eVar, gVarP);
        }
        long j15 = j10 / 24;
        long j16 = j15 + (j11 / 1440) + (j12 / 86400) + (j13 / 86400000000000L);
        long j17 = 1;
        long j18 = ((j10 % 24) * 3600000000000L) + ((j11 % 1440) * 60000000000L) + ((j12 % 86400) * 1000000000) + (j13 % 86400000000000L);
        long jW = gVarP.w();
        long j19 = (j18 * j17) + jW;
        long jC = p000if.a.C(j19, 86400000000000L) + (j16 * j17);
        long j20 = ((j19 % 86400000000000L) + 86400000000000L) % 86400000000000L;
        if (j20 != jW) {
            gVarP = g.p(j20);
        }
        return w(eVar.y(jC), gVarP);
    }

    @Override // wh.j
    /* renamed from: v, reason: merged with bridge method [inline-methods] */
    public final f a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (f) mVar.g(this, j10);
        }
        boolean zI = ((wh.a) mVar).i();
        g gVar = this.f14587b;
        e eVar = this.f14586a;
        return zI ? w(eVar, gVar.a(j10, mVar)) : w(eVar.a(j10, mVar), gVar);
    }

    public final f w(e eVar, g gVar) {
        return (this.f14586a == eVar && this.f14587b == gVar) ? this : new f(eVar, gVar);
    }
}

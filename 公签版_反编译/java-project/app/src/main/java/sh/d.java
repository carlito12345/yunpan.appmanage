package sh;

import androidx.room.s;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class d extends vh.b implements wh.j, wh.l, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final d f14576c = new d(0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final long f14577a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14578b;

    static {
        n(-31557014167219200L, 0L);
        n(31556889864403199L, 999999999L);
    }

    public d(long j10, int i10) {
        this.f14577a = j10;
        this.f14578b = i10;
    }

    public static d m(int i10, long j10) {
        if ((i10 | j10) == 0) {
            return f14576c;
        }
        if (j10 < -31557014167219200L || j10 > 31556889864403199L) {
            throw new a("Instant exceeds minimum or maximum instant");
        }
        return new d(j10, i10);
    }

    public static d n(long j10, long j11) {
        return m(p000if.a.D(1000000000, j11), p000if.a.u0(j10, p000if.a.C(j11, 1000000000L)));
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new l((byte) 2, this);
    }

    @Override // wh.j
    public final wh.j a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (d) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        aVar.h(j10);
        int iOrdinal = aVar.ordinal();
        int i10 = this.f14578b;
        long j11 = this.f14577a;
        if (iOrdinal != 0) {
            if (iOrdinal == 2) {
                int i11 = ((int) j10) * 1000;
                if (i11 != i10) {
                    return m(i11, j11);
                }
            } else if (iOrdinal == 4) {
                int i12 = ((int) j10) * 1000000;
                if (i12 != i10) {
                    return m(i12, j11);
                }
            } else {
                if (iOrdinal != 28) {
                    throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
                }
                if (j10 != j11) {
                    return m(i10, j10);
                }
            }
        } else if (j10 != i10) {
            return m((int) j10, j11);
        }
        return this;
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        int i10;
        if (!(mVar instanceof wh.a)) {
            return mVar.a(this);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        int i11 = this.f14578b;
        if (iOrdinal == 0) {
            return i11;
        }
        if (iOrdinal == 2) {
            i10 = i11 / 1000;
        } else {
            if (iOrdinal != 4) {
                if (iOrdinal == 28) {
                    return this.f14577a;
                }
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
            }
            i10 = i11 / 1000000;
        }
        return i10;
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17928c) {
            return wh.b.NANOS;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17927b || oVar == wh.n.f17926a || oVar == wh.n.f17929d || oVar == wh.n.f17930e) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        d dVar = (d) obj;
        int iM = p000if.a.m(this.f14577a, dVar.f14577a);
        return iM != 0 ? iM : this.f14578b - dVar.f14578b;
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.INSTANT_SECONDS || mVar == wh.a.NANO_OF_SECOND || mVar == wh.a.MICRO_OF_SECOND || mVar == wh.a.MILLI_OF_SECOND : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return this.f14577a == dVar.f14577a && this.f14578b == dVar.f14578b;
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(this.f14577a, wh.a.INSTANT_SECONDS).a(this.f14578b, wh.a.NANO_OF_SECOND);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return (d) eVar.g(this);
    }

    public final int hashCode() {
        long j10 = this.f14577a;
        return (this.f14578b * 51) + ((int) (j10 ^ (j10 >>> 32)));
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return super.f(mVar).a(mVar.a(this), mVar);
        }
        int iOrdinal = ((wh.a) mVar).ordinal();
        int i10 = this.f14578b;
        if (iOrdinal == 0) {
            return i10;
        }
        if (iOrdinal == 2) {
            return i10 / 1000;
        }
        if (iOrdinal == 4) {
            return i10 / 1000000;
        }
        throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    public final d o(long j10, long j11) {
        if ((j10 | j11) == 0) {
            return this;
        }
        return n(p000if.a.u0(p000if.a.u0(this.f14577a, j10), j11 / 1000000000), this.f14578b + (j11 % 1000000000));
    }

    @Override // wh.j
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final d j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (d) j(j10, bVar);
        }
        switch (bVar) {
            case NANOS:
                return o(0L, j10);
            case MICROS:
                return o(j10 / 1000000, (j10 % 1000000) * 1000);
            case MILLIS:
                return o(j10 / 1000, (j10 % 1000) * 1000000);
            case SECONDS:
                return o(j10, 0L);
            case MINUTES:
                return o(p000if.a.v0(60, j10), 0L);
            case HOURS:
                return o(p000if.a.v0(3600, j10), 0L);
            case HALF_DAYS:
                return o(p000if.a.v0(43200, j10), 0L);
            case DAYS:
                return o(p000if.a.v0(86400, j10), 0L);
            default:
                throw new wh.q("Unsupported unit: " + bVar);
        }
    }

    public final String toString() {
        uh.a aVar = uh.a.f16112f;
        aVar.getClass();
        StringBuilder sb2 = new StringBuilder(32);
        try {
            aVar.f16113a.a(new s(this, aVar), sb2);
            return sb2.toString();
        } catch (IOException e7) {
            throw new a(e7.getMessage(), e7);
        }
    }
}

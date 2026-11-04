package j$.time;

import j$.time.chrono.AbstractC0019i;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class o implements j$.time.temporal.m, j$.time.temporal.p, Comparable, Serializable {
    private static final long serialVersionUID = 2287754244819255394L;

    /* renamed from: a, reason: collision with root package name */
    private final g f8904a;

    /* renamed from: b, reason: collision with root package name */
    private final x f8905b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int iH;
        o oVar = (o) obj;
        x xVar = oVar.f8905b;
        x xVar2 = this.f8905b;
        boolean zEquals = xVar2.equals(xVar);
        g gVar = oVar.f8904a;
        g gVar2 = this.f8904a;
        if (zEquals) {
            iH = gVar2.compareTo(gVar);
        } else {
            gVar2.getClass();
            long jN = AbstractC0019i.n(gVar2, xVar2);
            gVar.getClass();
            iH = (jN > AbstractC0019i.n(gVar, oVar.f8905b) ? 1 : (jN == AbstractC0019i.n(gVar, oVar.f8905b) ? 0 : -1));
            if (iH == 0) {
                iH = gVar2.b().H() - gVar.b().H();
            }
        }
        return iH == 0 ? gVar2.compareTo(gVar) : iH;
    }

    static {
        g gVar = g.f8883c;
        x xVar = x.f8958g;
        gVar.getClass();
        C(gVar, xVar);
        g gVar2 = g.f8884d;
        x xVar2 = x.f8957f;
        gVar2.getClass();
        C(gVar2, xVar2);
    }

    public static o C(g gVar, x xVar) {
        return new o(gVar, xVar);
    }

    private o(g gVar, x xVar) {
        this.f8904a = (g) Objects.requireNonNull(gVar, "dateTime");
        this.f8905b = (x) Objects.requireNonNull(xVar, "offset");
    }

    private o G(g gVar, x xVar) {
        return (this.f8904a == gVar && this.f8905b.equals(xVar)) ? this : new o(gVar, xVar);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return (rVar instanceof j$.time.temporal.a) || (rVar != null && rVar.m(this));
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) rVar).j();
            }
            return this.f8904a.n(rVar);
        }
        return rVar.s(this);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i10 = n.f8903a[((j$.time.temporal.a) rVar).ordinal()];
            if (i10 == 1) {
                throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i10 == 2) {
                return this.f8905b.I();
            }
            return this.f8904a.k(rVar);
        }
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i10 = n.f8903a[((j$.time.temporal.a) rVar).ordinal()];
        x xVar = this.f8905b;
        g gVar = this.f8904a;
        if (i10 != 1) {
            return i10 != 2 ? gVar.s(rVar) : xVar.I();
        }
        gVar.getClass();
        return AbstractC0019i.n(gVar, xVar);
    }

    public final g F() {
        return this.f8904a;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return G(this.f8904a.R(eVar), this.f8905b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i10 = n.f8903a[aVar.ordinal()];
            x xVar = this.f8905b;
            g gVar = this.f8904a;
            if (i10 != 1) {
                if (i10 == 2) {
                    return G(gVar, x.L(aVar.w(j10)));
                }
                return G(gVar.d(j10, rVar), xVar);
            }
            Instant instantOfEpochSecond = Instant.ofEpochSecond(j10, gVar.E());
            Objects.requireNonNull(instantOfEpochSecond, "instant");
            Objects.requireNonNull(xVar, "zone");
            x xVarD = xVar.C().d(instantOfEpochSecond);
            return new o(g.L(instantOfEpochSecond.getEpochSecond(), instantOfEpochSecond.getNano(), xVarD), xVarD);
        }
        return (o) rVar.n(this, j10);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final o e(long j10, j$.time.temporal.u uVar) {
        if (uVar instanceof j$.time.temporal.b) {
            return G(this.f8904a.e(j10, uVar), this.f8905b);
        }
        return (o) uVar.j(this, j10);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.h() || tVar == j$.time.temporal.n.j()) {
            return this.f8905b;
        }
        if (tVar == j$.time.temporal.n.k()) {
            return null;
        }
        j$.time.temporal.t tVarF = j$.time.temporal.n.f();
        g gVar = this.f8904a;
        if (tVar == tVarF) {
            return gVar.P();
        }
        if (tVar == j$.time.temporal.n.g()) {
            return gVar.b();
        }
        if (tVar == j$.time.temporal.n.e()) {
            return j$.time.chrono.u.f8817d;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        return tVar.a(this);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        g gVar = this.f8904a;
        return mVar.d(gVar.P().t(), aVar).d(gVar.b().S(), j$.time.temporal.a.NANO_OF_DAY).d(this.f8905b.I(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f8904a.equals(oVar.f8904a) && this.f8905b.equals(oVar.f8905b);
    }

    public final int hashCode() {
        return this.f8904a.hashCode() ^ this.f8905b.hashCode();
    }

    public final String toString() {
        return this.f8904a.toString() + this.f8905b.toString();
    }

    private Object writeReplace() {
        return new r((byte) 10, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.f8904a.T(objectOutput);
        this.f8905b.O(objectOutput);
    }

    static o E(ObjectInput objectInput) {
        g gVar = g.f8883c;
        e eVar = e.f8828d;
        return new o(g.K(e.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.R(objectInput)), x.N(objectInput));
    }
}

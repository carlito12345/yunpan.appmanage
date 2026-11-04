package j$.time;

import j$.time.chrono.AbstractC0019i;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class p implements j$.time.temporal.m, j$.time.temporal.p, Comparable, Serializable {
    private static final long serialVersionUID = 7264499704384272492L;

    /* renamed from: a, reason: collision with root package name */
    private final i f8906a;

    /* renamed from: b, reason: collision with root package name */
    private final x f8907b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        p pVar = (p) obj;
        x xVar = pVar.f8907b;
        boolean zEquals = this.f8907b.equals(xVar);
        i iVar = pVar.f8906a;
        i iVar2 = this.f8906a;
        if (!zEquals) {
            int i10 = ((iVar2.S() - (r1.I() * 1000000000)) > (iVar.S() - (pVar.f8907b.I() * 1000000000)) ? 1 : ((iVar2.S() - (r1.I() * 1000000000)) == (iVar.S() - (pVar.f8907b.I() * 1000000000)) ? 0 : -1));
            return i10 == 0 ? iVar2.compareTo(iVar) : i10;
        }
        return iVar2.compareTo(iVar);
    }

    static {
        i iVar = i.f8889e;
        x xVar = x.f8958g;
        iVar.getClass();
        C(iVar, xVar);
        i iVar2 = i.f8890f;
        x xVar2 = x.f8957f;
        iVar2.getClass();
        C(iVar2, xVar2);
    }

    public static p C(i iVar, x xVar) {
        return new p(iVar, xVar);
    }

    private p(i iVar, x xVar) {
        this.f8906a = (i) Objects.requireNonNull(iVar, "time");
        this.f8907b = (x) Objects.requireNonNull(xVar, "offset");
    }

    private p F(i iVar, x xVar) {
        return (this.f8906a == iVar && this.f8907b.equals(xVar)) ? this : new p(iVar, xVar);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).D() || rVar == j$.time.temporal.a.OFFSET_SECONDS : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) rVar).j();
            }
            i iVar = this.f8906a;
            iVar.getClass();
            return j$.time.temporal.n.d(iVar, rVar);
        }
        return rVar.s(this);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return this.f8907b.I();
            }
            return this.f8906a.s(rVar);
        }
        return rVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = j$.time.temporal.a.OFFSET_SECONDS;
            i iVar = this.f8906a;
            if (rVar == aVar) {
                return F(iVar, x.L(((j$.time.temporal.a) rVar).w(j10)));
            }
            return F(iVar.d(j10, rVar), this.f8907b);
        }
        return (p) rVar.n(this, j10);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final p e(long j10, j$.time.temporal.u uVar) {
        if (uVar instanceof j$.time.temporal.b) {
            return F(this.f8906a.e(j10, uVar), this.f8907b);
        }
        return (p) uVar.j(this, j10);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.h() || tVar == j$.time.temporal.n.j()) {
            return this.f8907b;
        }
        if (((tVar == j$.time.temporal.n.k()) || (tVar == j$.time.temporal.n.e())) || tVar == j$.time.temporal.n.f()) {
            return null;
        }
        if (tVar == j$.time.temporal.n.g()) {
            return this.f8906a;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        return tVar.a(this);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(this.f8906a.S(), j$.time.temporal.a.NANO_OF_DAY).d(this.f8907b.I(), j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f8906a.equals(pVar.f8906a) && this.f8907b.equals(pVar.f8907b);
    }

    public final int hashCode() {
        return this.f8906a.hashCode() ^ this.f8907b.hashCode();
    }

    public final String toString() {
        return this.f8906a.toString() + this.f8907b.toString();
    }

    private Object writeReplace() {
        return new r((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) {
        this.f8906a.W(objectOutput);
        this.f8907b.O(objectOutput);
    }

    static p E(ObjectInput objectInput) {
        return new p(i.R(objectInput), x.N(objectInput));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return (p) AbstractC0019i.a(eVar, this);
    }
}

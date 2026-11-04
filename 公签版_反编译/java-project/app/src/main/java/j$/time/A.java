package j$.time;

import j$.time.chrono.AbstractC0019i;
import j$.time.chrono.InterfaceC0012b;
import j$.time.chrono.InterfaceC0015e;
import j$.time.chrono.InterfaceC0021k;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class A implements j$.time.temporal.m, InterfaceC0021k, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* renamed from: a, reason: collision with root package name */
    private final g f8753a;

    /* renamed from: b, reason: collision with root package name */
    private final x f8754b;

    /* renamed from: c, reason: collision with root package name */
    private final w f8755c;

    @Override // j$.time.chrono.InterfaceC0021k
    public final /* synthetic */ long B() {
        return AbstractC0019i.o(this);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return AbstractC0019i.d(this, (InterfaceC0021k) obj);
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0015e y() {
        return this.f8753a;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final j$.time.chrono.n a() {
        return ((e) c()).a();
    }

    public static A C(g gVar, w wVar, x xVar) {
        Objects.requireNonNull(gVar, "localDateTime");
        Objects.requireNonNull(wVar, "zone");
        if (wVar instanceof x) {
            return new A(gVar, wVar, (x) wVar);
        }
        j$.time.zone.f fVarC = wVar.C();
        List listG = fVarC.g(gVar);
        if (listG.size() == 1) {
            xVar = (x) listG.get(0);
        } else if (listG.size() == 0) {
            j$.time.zone.b bVarF = fVarC.f(gVar);
            gVar = gVar.N(bVarF.m().m());
            xVar = bVarF.n();
        } else if (xVar == null || !listG.contains(xVar)) {
            xVar = (x) Objects.requireNonNull((x) listG.get(0), "offset");
        }
        return new A(gVar, wVar, xVar);
    }

    private static A w(long j10, int i10, w wVar) {
        x xVarD = wVar.C().d(Instant.ofEpochSecond(j10, i10));
        return new A(g.L(j10, i10, xVarD), wVar, xVarD);
    }

    private A(g gVar, w wVar, x xVar) {
        this.f8753a = gVar;
        this.f8754b = xVar;
        this.f8755c = wVar;
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
            return this.f8753a.n(rVar);
        }
        return rVar.s(this);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i10 = z.f8964a[((j$.time.temporal.a) rVar).ordinal()];
            if (i10 == 1) {
                throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i10 == 2) {
                return this.f8754b.I();
            }
            return this.f8753a.k(rVar);
        }
        return AbstractC0019i.e(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i10 = z.f8964a[((j$.time.temporal.a) rVar).ordinal()];
        return i10 != 1 ? i10 != 2 ? this.f8753a.s(rVar) : this.f8754b.I() : AbstractC0019i.o(this);
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final x g() {
        return this.f8754b;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final w q() {
        return this.f8755c;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0021k h(w wVar) {
        Objects.requireNonNull(wVar, "zone");
        return this.f8755c.equals(wVar) ? this : C(this.f8753a, wVar, this.f8754b);
    }

    public final g F() {
        return this.f8753a;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0012b c() {
        return this.f8753a.P();
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final i b() {
        return this.f8753a.b();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return C(g.K(eVar, this.f8753a.b()), this.f8755c, this.f8754b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            int i10 = z.f8964a[aVar.ordinal()];
            g gVar = this.f8753a;
            w wVar = this.f8755c;
            if (i10 == 1) {
                return w(j10, gVar.E(), wVar);
            }
            x xVar = this.f8754b;
            if (i10 != 2) {
                return C(gVar.d(j10, rVar), wVar, xVar);
            }
            x xVarL = x.L(aVar.w(j10));
            return (xVarL.equals(xVar) || !wVar.C().g(gVar).contains(xVarL)) ? this : new A(gVar, wVar, xVarL);
        }
        return (A) rVar.n(this, j10);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final A e(long j10, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (A) uVar.j(this, j10);
        }
        j$.time.temporal.b bVar = (j$.time.temporal.b) uVar;
        int iCompareTo = bVar.compareTo(j$.time.temporal.b.DAYS);
        x xVar = this.f8754b;
        w wVar = this.f8755c;
        g gVar = this.f8753a;
        if (iCompareTo >= 0 && bVar != j$.time.temporal.b.FOREVER) {
            return C(gVar.e(j10, uVar), wVar, xVar);
        }
        g gVarM = gVar.e(j10, uVar);
        Objects.requireNonNull(gVarM, "localDateTime");
        Objects.requireNonNull(xVar, "offset");
        Objects.requireNonNull(wVar, "zone");
        if (wVar.C().g(gVarM).contains(xVar)) {
            return new A(gVarM, wVar, xVar);
        }
        gVarM.getClass();
        return w(AbstractC0019i.n(gVarM, xVar), gVarM.E(), wVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.f()) {
            return this.f8753a.P();
        }
        return AbstractC0019i.l(this, tVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A)) {
            return false;
        }
        A a10 = (A) obj;
        return this.f8753a.equals(a10.f8753a) && this.f8754b.equals(a10.f8754b) && this.f8755c.equals(a10.f8755c);
    }

    public final int hashCode() {
        return (this.f8753a.hashCode() ^ this.f8754b.hashCode()) ^ Integer.rotateLeft(this.f8755c.hashCode(), 3);
    }

    public final String toString() {
        String string = this.f8753a.toString();
        x xVar = this.f8754b;
        String str = string + xVar.toString();
        w wVar = this.f8755c;
        if (xVar == wVar) {
            return str;
        }
        return str + "[" + wVar.toString() + "]";
    }

    private Object writeReplace() {
        return new r((byte) 6, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void G(DataOutput dataOutput) {
        this.f8753a.T(dataOutput);
        this.f8754b.O(dataOutput);
        this.f8755c.G((ObjectOutput) dataOutput);
    }

    static A E(ObjectInput objectInput) {
        g gVar = g.f8883c;
        e eVar = e.f8828d;
        g gVarK = g.K(e.N(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.R(objectInput));
        x xVarN = x.N(objectInput);
        w wVar = (w) r.a(objectInput);
        Objects.requireNonNull(gVarK, "localDateTime");
        Objects.requireNonNull(xVarN, "offset");
        Objects.requireNonNull(wVar, "zone");
        if ((wVar instanceof x) && !xVarN.equals(wVar)) {
            throw new IllegalArgumentException("ZoneId must match ZoneOffset");
        }
        return new A(gVarK, wVar, xVarN);
    }
}

package j$.time;

import j$.time.chrono.AbstractC0019i;
import j$.time.chrono.InterfaceC0012b;
import j$.time.chrono.InterfaceC0015e;
import j$.time.chrono.InterfaceC0021k;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class g implements j$.time.temporal.m, j$.time.temporal.p, InterfaceC0015e, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final g f8883c = K(e.f8828d, i.f8889e);

    /* renamed from: d, reason: collision with root package name */
    public static final g f8884d = K(e.f8829e, i.f8890f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* renamed from: a, reason: collision with root package name */
    private final e f8885a;

    /* renamed from: b, reason: collision with root package name */
    private final i f8886b;

    @Override // j$.time.chrono.InterfaceC0015e
    public final InterfaceC0012b c() {
        return this.f8885a;
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final j$.time.chrono.n a() {
        return ((e) c()).a();
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final InterfaceC0021k p(x xVar) {
        return A.C(this, xVar, null);
    }

    public static g J(int i10) {
        return new g(e.N(i10, 12, 31), i.J(0));
    }

    public static g K(e eVar, i iVar) {
        Objects.requireNonNull(eVar, "date");
        Objects.requireNonNull(iVar, "time");
        return new g(eVar, iVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(((e) c()).t(), j$.time.temporal.a.EPOCH_DAY).d(b().S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public static g L(long j10, int i10, x xVar) {
        Objects.requireNonNull(xVar, "offset");
        long j11 = i10;
        j$.time.temporal.a.NANO_OF_SECOND.C(j11);
        return new g(e.P(j$.com.android.tools.r8.a.i(j10 + xVar.I(), 86400)), i.K((((int) j$.com.android.tools.r8.a.h(r5, r7)) * 1000000000) + j11));
    }

    public static g D(j$.time.temporal.o oVar) {
        if (oVar instanceof g) {
            return (g) oVar;
        }
        if (oVar instanceof A) {
            return ((A) oVar).F();
        }
        if (oVar instanceof o) {
            return ((o) oVar).F();
        }
        try {
            return new g(e.E(oVar), i.E(oVar));
        } catch (DateTimeException e7) {
            throw new DateTimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + oVar + " of type " + oVar.getClass().getName(), e7);
        }
    }

    private g(e eVar, i iVar) {
        this.f8885a = eVar;
        this.f8886b = iVar;
    }

    private g S(e eVar, i iVar) {
        return (this.f8885a == eVar && this.f8886b == iVar) ? this : new g(eVar, iVar);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar != null && rVar.m(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        return aVar.v() || aVar.D();
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (((j$.time.temporal.a) rVar).D()) {
                i iVar = this.f8886b;
                iVar.getClass();
                return j$.time.temporal.n.d(iVar, rVar);
            }
            return this.f8885a.n(rVar);
        }
        return rVar.s(this);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).D() ? this.f8886b.k(rVar) : this.f8885a.k(rVar);
        }
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).D() ? this.f8886b.s(rVar) : this.f8885a.s(rVar);
        }
        return rVar.k(this);
    }

    private int C(g gVar) {
        int iC = this.f8885a.C(gVar.f8885a);
        return iC == 0 ? this.f8886b.compareTo(gVar.f8886b) : iC;
    }

    public final e P() {
        return this.f8885a;
    }

    public final int G() {
        return this.f8885a.J();
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final i b() {
        return this.f8886b;
    }

    public final int F() {
        return this.f8886b.I();
    }

    public final int E() {
        return this.f8886b.H();
    }

    public final g R(e eVar) {
        return S(eVar, this.f8886b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return S(eVar, this.f8886b);
    }

    @Override // j$.time.temporal.m
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final g d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            boolean zD = ((j$.time.temporal.a) rVar).D();
            i iVar = this.f8886b;
            e eVar = this.f8885a;
            if (zD) {
                return S(eVar, iVar.d(j10, rVar));
            }
            return S(eVar.d(j10, rVar), iVar);
        }
        return (g) rVar.n(this, j10);
    }

    @Override // j$.time.temporal.m
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final g e(long j10, j$.time.temporal.u uVar) {
        if (uVar instanceof j$.time.temporal.b) {
            int i10 = f.f8833a[((j$.time.temporal.b) uVar).ordinal()];
            i iVar = this.f8886b;
            e eVar = this.f8885a;
            switch (i10) {
                case 1:
                    return O(this.f8885a, 0L, 0L, 0L, j10);
                case 2:
                    g gVarS = S(eVar.R(j10 / 86400000000L), iVar);
                    return gVarS.O(gVarS.f8885a, 0L, 0L, 0L, (j10 % 86400000000L) * 1000);
                case 3:
                    g gVarS2 = S(eVar.R(j10 / 86400000), iVar);
                    return gVarS2.O(gVarS2.f8885a, 0L, 0L, 0L, (j10 % 86400000) * 1000000);
                case 4:
                    return N(j10);
                case 5:
                    return O(this.f8885a, 0L, j10, 0L, 0L);
                case 6:
                    return O(this.f8885a, j10, 0L, 0L, 0L);
                case 7:
                    g gVarS3 = S(eVar.R(j10 / 256), iVar);
                    return gVarS3.O(gVarS3.f8885a, (j10 % 256) * 12, 0L, 0L, 0L);
                default:
                    return S(eVar.e(j10, uVar), iVar);
            }
        }
        return (g) uVar.j(this, j10);
    }

    public final g N(long j10) {
        return O(this.f8885a, 0L, 0L, j10, 0L);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    private g O(e eVar, long j10, long j11, long j12, long j13) {
        long j14 = j10 | j11 | j12 | j13;
        i iVarK = this.f8886b;
        if (j14 == 0) {
            return S(eVar, iVarK);
        }
        long j15 = j10 / 24;
        long j16 = j15 + (j11 / 1440) + (j12 / 86400) + (j13 / 86400000000000L);
        long j17 = 1;
        long j18 = ((j10 % 24) * 3600000000000L) + ((j11 % 1440) * 60000000000L) + ((j12 % 86400) * 1000000000) + (j13 % 86400000000000L);
        long jS = iVarK.S();
        long j19 = (j18 * j17) + jS;
        long jI = j$.com.android.tools.r8.a.i(j19, 86400000000000L) + (j16 * j17);
        long jH = j$.com.android.tools.r8.a.h(j19, 86400000000000L);
        if (jH != jS) {
            iVarK = i.K(jH);
        }
        return S(eVar.R(jI), iVarK);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.f()) {
            return this.f8885a;
        }
        return AbstractC0019i.k(this, tVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC0015e interfaceC0015e) {
        if (interfaceC0015e instanceof g) {
            return C((g) interfaceC0015e);
        }
        return AbstractC0019i.c(this, interfaceC0015e);
    }

    public final boolean H(g gVar) {
        if (gVar instanceof g) {
            return C(gVar) > 0;
        }
        long jT = this.f8885a.t();
        long jT2 = gVar.f8885a.t();
        return jT > jT2 || (jT == jT2 && this.f8886b.S() > gVar.f8886b.S());
    }

    public final boolean I(g gVar) {
        if (gVar instanceof g) {
            return C(gVar) < 0;
        }
        long jT = this.f8885a.t();
        long jT2 = gVar.f8885a.t();
        return jT < jT2 || (jT == jT2 && this.f8886b.S() < gVar.f8886b.S());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f8885a.equals(gVar.f8885a) && this.f8886b.equals(gVar.f8886b);
    }

    public final int hashCode() {
        return this.f8885a.hashCode() ^ this.f8886b.hashCode();
    }

    public final String toString() {
        return this.f8885a.toString() + "T" + this.f8886b.toString();
    }

    private Object writeReplace() {
        return new r((byte) 5, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void T(DataOutput dataOutput) {
        this.f8885a.Z(dataOutput);
        this.f8886b.W(dataOutput);
    }
}

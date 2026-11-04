package j$.time.chrono;

import j$.util.Objects;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;

/* renamed from: j$.time.chrono.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0017g implements InterfaceC0015e, j$.time.temporal.m, j$.time.temporal.p, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* renamed from: a, reason: collision with root package name */
    private final transient InterfaceC0012b f8787a;

    /* renamed from: b, reason: collision with root package name */
    private final transient j$.time.i f8788b;

    @Override // j$.time.temporal.o
    public final /* synthetic */ Object v(j$.time.temporal.t tVar) {
        return AbstractC0019i.k(this, tVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: x */
    public final /* synthetic */ int compareTo(InterfaceC0015e interfaceC0015e) {
        return AbstractC0019i.c(this, interfaceC0015e);
    }

    static C0017g D(InterfaceC0012b interfaceC0012b, j$.time.i iVar) {
        return new C0017g(interfaceC0012b, iVar);
    }

    static C0017g C(n nVar, j$.time.temporal.m mVar) {
        C0017g c0017g = (C0017g) mVar;
        AbstractC0011a abstractC0011a = (AbstractC0011a) nVar;
        if (abstractC0011a.equals(c0017g.f8787a.a())) {
            return c0017g;
        }
        throw new ClassCastException("Chronology mismatch, required: " + abstractC0011a.i() + ", actual: " + c0017g.f8787a.a().i());
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final n a() {
        return this.f8787a.a();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return C(this.f8787a.a(), j$.time.temporal.n.b(this, j10, bVar));
    }

    private C0017g(InterfaceC0012b interfaceC0012b, j$.time.i iVar) {
        Objects.requireNonNull(interfaceC0012b, "date");
        Objects.requireNonNull(iVar, "time");
        this.f8787a = interfaceC0012b;
        this.f8788b = iVar;
    }

    private C0017g I(j$.time.temporal.m mVar, j$.time.i iVar) {
        InterfaceC0012b interfaceC0012b = this.f8787a;
        return (interfaceC0012b == mVar && this.f8788b == iVar) ? this : new C0017g(AbstractC0014d.C(interfaceC0012b.a(), mVar), iVar);
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final InterfaceC0012b c() {
        return this.f8787a;
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final j$.time.i b() {
        return this.f8788b;
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
            if (!((j$.time.temporal.a) rVar).D()) {
                return this.f8787a.n(rVar);
            }
            j$.time.i iVar = this.f8788b;
            iVar.getClass();
            return j$.time.temporal.n.d(iVar, rVar);
        }
        return rVar.s(this);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).D() ? this.f8788b.k(rVar) : this.f8787a.k(rVar);
        }
        return n(rVar).a(s(rVar), rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).D() ? this.f8788b.s(rVar) : this.f8787a.s(rVar);
        }
        return rVar.k(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(j$.time.e eVar) {
        return I(eVar, this.f8788b);
    }

    @Override // j$.time.temporal.m
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final C0017g d(long j10, j$.time.temporal.r rVar) {
        boolean z = rVar instanceof j$.time.temporal.a;
        InterfaceC0012b interfaceC0012b = this.f8787a;
        if (z) {
            boolean zD = ((j$.time.temporal.a) rVar).D();
            j$.time.i iVar = this.f8788b;
            if (zD) {
                return I(interfaceC0012b, iVar.d(j10, rVar));
            }
            return I(interfaceC0012b.d(j10, rVar), iVar);
        }
        return C(interfaceC0012b.a(), rVar.n(this, j10));
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final C0017g e(long j10, j$.time.temporal.u uVar) {
        boolean z = uVar instanceof j$.time.temporal.b;
        InterfaceC0012b interfaceC0012b = this.f8787a;
        if (z) {
            int i10 = AbstractC0016f.f8786a[((j$.time.temporal.b) uVar).ordinal()];
            j$.time.i iVar = this.f8788b;
            switch (i10) {
                case 1:
                    return G(this.f8787a, 0L, 0L, 0L, j10);
                case 2:
                    C0017g c0017gI = I(interfaceC0012b.e(j10 / 86400000000L, (j$.time.temporal.u) j$.time.temporal.b.DAYS), iVar);
                    return c0017gI.G(c0017gI.f8787a, 0L, 0L, 0L, (j10 % 86400000000L) * 1000);
                case 3:
                    C0017g c0017gI2 = I(interfaceC0012b.e(j10 / 86400000, (j$.time.temporal.u) j$.time.temporal.b.DAYS), iVar);
                    return c0017gI2.G(c0017gI2.f8787a, 0L, 0L, 0L, (j10 % 86400000) * 1000000);
                case 4:
                    return F(j10);
                case 5:
                    return G(this.f8787a, 0L, j10, 0L, 0L);
                case 6:
                    return G(this.f8787a, j10, 0L, 0L, 0L);
                case 7:
                    C0017g c0017gI3 = I(interfaceC0012b.e(j10 / 256, (j$.time.temporal.u) j$.time.temporal.b.DAYS), iVar);
                    return c0017gI3.G(c0017gI3.f8787a, (j10 % 256) * 12, 0L, 0L, 0L);
                default:
                    return I(interfaceC0012b.e(j10, uVar), iVar);
            }
        }
        return C(interfaceC0012b.a(), uVar.j(this, j10));
    }

    final C0017g F(long j10) {
        return G(this.f8787a, 0L, 0L, j10, 0L);
    }

    private C0017g G(InterfaceC0012b interfaceC0012b, long j10, long j11, long j12, long j13) {
        long j14 = j10 | j11 | j12 | j13;
        j$.time.i iVarK = this.f8788b;
        if (j14 == 0) {
            return I(interfaceC0012b, iVarK);
        }
        long j15 = j11 / 1440;
        long j16 = j10 / 24;
        long j17 = (j11 % 1440) * 60000000000L;
        long j18 = ((j10 % 24) * 3600000000000L) + j17 + ((j12 % 86400) * 1000000000) + (j13 % 86400000000000L);
        long jS = iVarK.S();
        long j19 = j18 + jS;
        long jI = j$.com.android.tools.r8.a.i(j19, 86400000000000L) + j16 + j15 + (j12 / 86400) + (j13 / 86400000000000L);
        long jH = j$.com.android.tools.r8.a.h(j19, 86400000000000L);
        if (jH != jS) {
            iVarK = j$.time.i.K(jH);
        }
        return I(interfaceC0012b.e(jI, (j$.time.temporal.u) j$.time.temporal.b.DAYS), iVarK);
    }

    @Override // j$.time.chrono.InterfaceC0015e
    public final InterfaceC0021k p(j$.time.x xVar) {
        return m.C(xVar, null, this);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(c().t(), j$.time.temporal.a.EPOCH_DAY).d(b().S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    private Object writeReplace() {
        return new G((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.f8787a);
        objectOutput.writeObject(this.f8788b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC0015e) && AbstractC0019i.c(this, (InterfaceC0015e) obj) == 0;
    }

    public final int hashCode() {
        return this.f8787a.hashCode() ^ this.f8788b.hashCode();
    }

    public final String toString() {
        return this.f8787a.toString() + "T" + this.f8788b.toString();
    }
}

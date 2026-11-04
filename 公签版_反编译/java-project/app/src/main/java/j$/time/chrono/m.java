package j$.time.chrono;

import j$.time.Instant;
import j$.util.Objects;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
final class m implements InterfaceC0021k, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* renamed from: a, reason: collision with root package name */
    private final transient C0017g f8796a;

    /* renamed from: b, reason: collision with root package name */
    private final transient j$.time.x f8797b;

    /* renamed from: c, reason: collision with root package name */
    private final transient j$.time.w f8798c;

    @Override // j$.time.chrono.InterfaceC0021k
    public final /* synthetic */ long B() {
        return AbstractC0019i.o(this);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ int k(j$.time.temporal.r rVar) {
        return AbstractC0019i.e(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ Object v(j$.time.temporal.t tVar) {
        return AbstractC0019i.l(this, tVar);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return AbstractC0019i.d(this, (InterfaceC0021k) obj);
    }

    static InterfaceC0021k C(j$.time.w wVar, j$.time.x xVar, C0017g c0017g) {
        Objects.requireNonNull(c0017g, "localDateTime");
        Objects.requireNonNull(wVar, "zone");
        if (wVar instanceof j$.time.x) {
            return new m(wVar, (j$.time.x) wVar, c0017g);
        }
        j$.time.zone.f fVarC = wVar.C();
        j$.time.g gVarD = j$.time.g.D(c0017g);
        List listG = fVarC.g(gVarD);
        if (listG.size() == 1) {
            xVar = (j$.time.x) listG.get(0);
        } else if (listG.size() == 0) {
            j$.time.zone.b bVarF = fVarC.f(gVarD);
            c0017g = c0017g.F(bVarF.m().m());
            xVar = bVarF.n();
        } else if (xVar == null || !listG.contains(xVar)) {
            xVar = (j$.time.x) listG.get(0);
        }
        Objects.requireNonNull(xVar, "offset");
        return new m(wVar, xVar, c0017g);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return ((j$.time.temporal.a) rVar).j();
            }
            return ((C0017g) y()).n(rVar);
        }
        return rVar.s(this);
    }

    static m w(n nVar, j$.time.temporal.m mVar) {
        m mVar2 = (m) mVar;
        AbstractC0011a abstractC0011a = (AbstractC0011a) nVar;
        if (abstractC0011a.equals(mVar2.a())) {
            return mVar2;
        }
        throw new ClassCastException("Chronology mismatch, required: " + abstractC0011a.i() + ", actual: " + mVar2.a().i());
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i10 = AbstractC0020j.f8794a[((j$.time.temporal.a) rVar).ordinal()];
            if (i10 == 1) {
                return B();
            }
            if (i10 == 2) {
                return g().I();
            }
            return ((C0017g) y()).s(rVar);
        }
        return rVar.k(this);
    }

    private m(j$.time.w wVar, j$.time.x xVar, C0017g c0017g) {
        this.f8796a = (C0017g) Objects.requireNonNull(c0017g, "dateTime");
        this.f8797b = (j$.time.x) Objects.requireNonNull(xVar, "offset");
        this.f8798c = (j$.time.w) Objects.requireNonNull(wVar, "zone");
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final j$.time.x g() {
        return this.f8797b;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0012b c() {
        return ((C0017g) y()).c();
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final j$.time.i b() {
        return ((C0017g) y()).b();
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0015e y() {
        return this.f8796a;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final j$.time.w q() {
        return this.f8798c;
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final n a() {
        return c().a();
    }

    @Override // j$.time.chrono.InterfaceC0021k
    public final InterfaceC0021k h(j$.time.w wVar) {
        return C(wVar, this.f8797b, this.f8796a);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return (rVar instanceof j$.time.temporal.a) || (rVar != null && rVar.m(this));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return w(a(), rVar.n(this, j10));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i10 = AbstractC0022l.f8795a[aVar.ordinal()];
        if (i10 == 1) {
            return e(j10 - AbstractC0019i.o(this), j$.time.temporal.b.SECONDS);
        }
        j$.time.w wVar = this.f8798c;
        C0017g c0017g = this.f8796a;
        if (i10 != 2) {
            return C(wVar, this.f8797b, c0017g.d(j10, rVar));
        }
        j$.time.x xVarL = j$.time.x.L(aVar.w(j10));
        c0017g.getClass();
        Instant instantOfEpochSecond = Instant.ofEpochSecond(AbstractC0019i.n(c0017g, xVarL), c0017g.b().H());
        n nVarA = a();
        j$.time.x xVarD = wVar.C().d(instantOfEpochSecond);
        Objects.requireNonNull(xVarD, "offset");
        return new m(wVar, xVarD, (C0017g) nVarA.o(j$.time.g.L(instantOfEpochSecond.getEpochSecond(), instantOfEpochSecond.getNano(), xVarD)));
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0021k e(long j10, j$.time.temporal.u uVar) {
        if (uVar instanceof j$.time.temporal.b) {
            return w(a(), this.f8796a.e(j10, uVar).w(this));
        }
        return w(a(), uVar.j(this, j10));
    }

    private Object writeReplace() {
        return new G((byte) 3, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.f8796a);
        objectOutput.writeObject(this.f8797b);
        objectOutput.writeObject(this.f8798c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC0021k) && AbstractC0019i.d(this, (InterfaceC0021k) obj) == 0;
    }

    public final int hashCode() {
        return (this.f8796a.hashCode() ^ this.f8797b.hashCode()) ^ Integer.rotateLeft(this.f8798c.hashCode(), 3);
    }

    public final String toString() {
        String string = this.f8796a.toString();
        j$.time.x xVar = this.f8797b;
        String str = string + xVar.toString();
        j$.time.w wVar = this.f8798c;
        if (xVar == wVar) {
            return str;
        }
        return str + "[" + wVar.toString() + "]";
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(j$.time.e eVar) {
        return w(a(), eVar.w(this));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return w(a(), j$.time.temporal.n.b(this, j10, bVar));
    }
}

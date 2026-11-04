package j$.time.chrono;

import j$.time.AbstractC0010a;
import j$.time.DateTimeException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class z extends AbstractC0014d {

    /* renamed from: d, reason: collision with root package name */
    static final j$.time.e f8822d = j$.time.e.N(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* renamed from: a, reason: collision with root package name */
    private final transient j$.time.e f8823a;

    /* renamed from: b, reason: collision with root package name */
    private transient A f8824b;

    /* renamed from: c, reason: collision with root package name */
    private transient int f8825c;

    @Override // j$.time.chrono.AbstractC0014d
    public final o D() {
        return this.f8824b;
    }

    z(j$.time.e eVar) {
        if (eVar.K(f8822d)) {
            throw new DateTimeException("JapaneseDate before Meiji 6 is not supported");
        }
        A aI = A.i(eVar);
        this.f8824b = aI;
        this.f8825c = (eVar.J() - aI.o().J()) + 1;
        this.f8823a = eVar;
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final n a() {
        return x.f8820d;
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final int hashCode() {
        x.f8820d.getClass();
        return this.f8823a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b, j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || rVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || rVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).v();
        }
        return rVar != null && rVar.m(this);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.s(this);
        }
        if (!f(rVar)) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i10 = y.f8821a[aVar.ordinal()];
        j$.time.e eVar = this.f8823a;
        if (i10 == 1) {
            return j$.time.temporal.w.j(1L, eVar.M());
        }
        A a10 = this.f8824b;
        if (i10 != 2) {
            if (i10 != 3) {
                return x.f8820d.m(aVar);
            }
            int iJ = a10.o().J();
            return a10.r() != null ? j$.time.temporal.w.j(1L, (r0.o().J() - iJ) + 1) : j$.time.temporal.w.j(1L, 999999999 - iJ);
        }
        A aR = a10.r();
        int iH = (aR == null || aR.o().J() != eVar.J()) ? eVar.L() ? 366 : 365 : aR.o().H() - 1;
        if (this.f8825c == 1) {
            iH -= a10.o().H() - 1;
        }
        return j$.time.temporal.w.j(1L, iH);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i10 = y.f8821a[((j$.time.temporal.a) rVar).ordinal()];
        int i11 = this.f8825c;
        A a10 = this.f8824b;
        j$.time.e eVar = this.f8823a;
        switch (i10) {
            case 2:
                return i11 == 1 ? (eVar.H() - a10.o().H()) + 1 : eVar.H();
            case 3:
                return i11;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
            case 8:
                return a10.getValue();
            default:
                return eVar.s(rVar);
        }
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public final z d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            if (s(aVar) == j10) {
                return this;
            }
            int[] iArr = y.f8821a;
            int i10 = iArr[aVar.ordinal()];
            j$.time.e eVar = this.f8823a;
            if (i10 == 3 || i10 == 8 || i10 == 9) {
                int iA = x.f8820d.m(aVar).a(j10, aVar);
                int i11 = iArr[aVar.ordinal()];
                if (i11 == 3) {
                    return L(this.f8824b, iA);
                }
                if (i11 == 8) {
                    return L(A.A(iA), this.f8825c);
                }
                if (i11 == 9) {
                    return K(eVar.Y(iA));
                }
            }
            return K(eVar.d(j10, rVar));
        }
        return (z) super.d(j10, rVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: I */
    public final InterfaceC0012b m(j$.time.temporal.p pVar) {
        return (z) super.m(pVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m m(j$.time.e eVar) {
        return (z) super.m(eVar);
    }

    private z L(A a10, int i10) {
        x.f8820d.getClass();
        if (!(a10 instanceof A)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int iJ = (a10.o().J() + i10) - 1;
        if (i10 != 1 && (iJ < -999999999 || iJ > 999999999 || iJ < a10.o().J() || a10 != A.i(j$.time.e.N(iJ, 1, 1)))) {
            throw new DateTimeException("Invalid yearOfEra value");
        }
        return K(this.f8823a.Y(iJ));
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final InterfaceC0015e u(j$.time.i iVar) {
        return C0017g.D(this, iVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b H(long j10) {
        return K(this.f8823a.T(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b G(long j10) {
        return K(this.f8823a.S(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b F(long j10) {
        return K(this.f8823a.R(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b, j$.time.temporal.m
    public final InterfaceC0012b e(long j10, j$.time.temporal.u uVar) {
        return (z) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m e(long j10, j$.time.temporal.u uVar) {
        return (z) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: E */
    public final InterfaceC0012b j(long j10, j$.time.temporal.u uVar) {
        return (z) super.j(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return (z) super.j(j10, bVar);
    }

    private z K(j$.time.e eVar) {
        return eVar.equals(this.f8823a) ? this : new z(eVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final long t() {
        return this.f8823a.t();
    }

    @Override // j$.time.chrono.AbstractC0014d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof z) {
            return this.f8823a.equals(((z) obj).f8823a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 4, this);
    }
}

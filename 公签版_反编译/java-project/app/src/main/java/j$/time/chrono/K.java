package j$.time.chrono;

import j$.time.AbstractC0010a;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class K extends AbstractC0014d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* renamed from: a, reason: collision with root package name */
    private final transient j$.time.e f8780a;

    K(j$.time.e eVar) {
        Objects.requireNonNull(eVar, "isoDate");
        this.f8780a = eVar;
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public final n a() {
        return I.f8778d;
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final int hashCode() {
        I.f8778d.getClass();
        return this.f8780a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.AbstractC0014d
    public final o D() {
        return J() >= 1 ? L.BE : L.BEFORE_BE;
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.s(this);
        }
        if (!AbstractC0019i.h(this, rVar)) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        int i10 = J.f8779a[aVar.ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return this.f8780a.n(rVar);
        }
        if (i10 != 4) {
            return I.f8778d.m(aVar);
        }
        j$.time.temporal.w wVarJ = j$.time.temporal.a.YEAR.j();
        return j$.time.temporal.w.j(1L, J() <= 0 ? (-(wVarJ.e() + 543)) + 1 : 543 + wVarJ.d());
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i10 = J.f8779a[((j$.time.temporal.a) rVar).ordinal()];
            if (i10 == 4) {
                int iJ = J();
                if (iJ < 1) {
                    iJ = 1 - iJ;
                }
                return iJ;
            }
            j$.time.e eVar = this.f8780a;
            if (i10 == 5) {
                return ((J() * 12) + eVar.I()) - 1;
            }
            if (i10 == 6) {
                return J();
            }
            if (i10 != 7) {
                return eVar.s(rVar);
            }
            return J() < 1 ? 0 : 1;
        }
        return rVar.k(this);
    }

    private int J() {
        return this.f8780a.J() + 543;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final K d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
            if (s(aVar) == j10) {
                return this;
            }
            int[] iArr = J.f8779a;
            int i10 = iArr[aVar.ordinal()];
            j$.time.e eVar = this.f8780a;
            if (i10 == 4) {
                int iA = I.f8778d.m(aVar).a(j10, aVar);
                int i11 = iArr[aVar.ordinal()];
                if (i11 == 4) {
                    if (J() < 1) {
                        iA = 1 - iA;
                    }
                    return L(eVar.Y(iA - 543));
                }
                if (i11 == 6) {
                    return L(eVar.Y(iA - 543));
                }
                if (i11 == 7) {
                    return L(eVar.Y((-542) - J()));
                }
            } else {
                if (i10 == 5) {
                    I.f8778d.m(aVar).b(j10, aVar);
                    return L(eVar.S(j10 - (((J() * 12) + eVar.I()) - 1)));
                }
                if (i10 == 6 || i10 == 7) {
                }
            }
            return L(eVar.d(j10, rVar));
        }
        return (K) super.d(j10, rVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: I */
    public final InterfaceC0012b m(j$.time.temporal.p pVar) {
        return (K) super.m(pVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m m(j$.time.e eVar) {
        return (K) super.m(eVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b H(long j10) {
        return L(this.f8780a.T(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b G(long j10) {
        return L(this.f8780a.S(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b F(long j10) {
        return L(this.f8780a.R(j10));
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b, j$.time.temporal.m
    public final InterfaceC0012b e(long j10, j$.time.temporal.u uVar) {
        return (K) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m e(long j10, j$.time.temporal.u uVar) {
        return (K) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: E */
    public final InterfaceC0012b j(long j10, j$.time.temporal.u uVar) {
        return (K) super.j(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return (K) super.j(j10, bVar);
    }

    private K L(j$.time.e eVar) {
        return eVar.equals(this.f8780a) ? this : new K(eVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final long t() {
        return this.f8780a.t();
    }

    @Override // j$.time.chrono.AbstractC0014d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof K) {
            return this.f8780a.equals(((K) obj).f8780a);
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 8, this);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final InterfaceC0015e u(j$.time.i iVar) {
        return C0017g.D(this, iVar);
    }
}

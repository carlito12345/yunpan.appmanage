package j$.time.chrono;

import j$.time.AbstractC0010a;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public final class s extends AbstractC0014d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* renamed from: a, reason: collision with root package name */
    private final transient q f8812a;

    /* renamed from: b, reason: collision with root package name */
    private final transient int f8813b;

    /* renamed from: c, reason: collision with root package name */
    private final transient int f8814c;

    /* renamed from: d, reason: collision with root package name */
    private final transient int f8815d;

    @Override // j$.time.chrono.InterfaceC0012b
    public final n a() {
        return this.f8812a;
    }

    static s K(q qVar, int i10, int i11, int i12) {
        return new s(qVar, i10, i11, i12);
    }

    static s L(q qVar, long j10) {
        return new s(qVar, j10);
    }

    private s(q qVar, int i10, int i11, int i12) {
        qVar.w(i10, i11, i12);
        this.f8812a = qVar;
        this.f8813b = i10;
        this.f8814c = i11;
        this.f8815d = i12;
    }

    private s(q qVar, long j10) {
        int[] iArrC = qVar.C((int) j10);
        this.f8812a = qVar;
        this.f8813b = iArrC[0];
        this.f8814c = iArrC[1];
        this.f8815d = iArrC[2];
    }

    @Override // j$.time.chrono.AbstractC0014d
    public final o D() {
        return t.AH;
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
        int i10 = r.f8811a[aVar.ordinal()];
        int i11 = this.f8813b;
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? this.f8812a.G(aVar) : j$.time.temporal.w.j(1L, 5L) : j$.time.temporal.w.j(1L, r3.E(i11)) : j$.time.temporal.w.j(1L, r3.D(i11, this.f8814c));
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i10 = r.f8811a[((j$.time.temporal.a) rVar).ordinal()];
        int i11 = this.f8814c;
        int i12 = this.f8815d;
        int i13 = this.f8813b;
        switch (i10) {
            case 1:
                return i12;
            case 2:
                return J();
            case 3:
                return ((i12 - 1) / 7) + 1;
            case 4:
                return ((int) j$.com.android.tools.r8.a.h(t() + 3, 7)) + 1;
            case 5:
                return ((i12 - 1) % 7) + 1;
            case 6:
                return ((J() - 1) % 7) + 1;
            case 7:
                return t();
            case 8:
                return ((J() - 1) / 7) + 1;
            case 9:
                return i11;
            case 10:
                return ((i13 * 12) + i11) - 1;
            case 11:
                return i13;
            case 12:
                return i13;
            case 13:
                return i13 <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    /* renamed from: P, reason: merged with bridge method [inline-methods] */
    public final s d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (s) super.d(j10, rVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        q qVar = this.f8812a;
        qVar.G(aVar).b(j10, aVar);
        int i10 = (int) j10;
        int i11 = r.f8811a[aVar.ordinal()];
        int i12 = this.f8815d;
        int i13 = this.f8814c;
        int i14 = this.f8813b;
        switch (i11) {
            case 1:
                return O(i14, i13, i10);
            case 2:
                return F(Math.min(i10, qVar.E(i14)) - J());
            case 3:
                return F((j10 - s(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return F(j10 - (((int) j$.com.android.tools.r8.a.h(t() + 3, 7)) + 1));
            case 5:
                return F(j10 - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return F(j10 - s(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new s(qVar, j10);
            case 8:
                return F((j10 - s(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return O(i14, i10, i12);
            case 10:
                return G(j10 - (((i14 * 12) + i13) - 1));
            case 11:
                if (i14 < 1) {
                    i10 = 1 - i10;
                }
                return O(i10, i13, i12);
            case 12:
                return O(i10, i13, i12);
            case 13:
                return O(1 - i14, i13, i12);
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
    }

    private s O(int i10, int i11, int i12) {
        q qVar = this.f8812a;
        int iD = qVar.D(i10, i11);
        if (i12 > iD) {
            i12 = iD;
        }
        return new s(qVar, i10, i11, i12);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: I */
    public final InterfaceC0012b m(j$.time.temporal.p pVar) {
        return (s) super.m(pVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m m(j$.time.e eVar) {
        return (s) super.m(eVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final long t() {
        return this.f8812a.w(this.f8813b, this.f8814c, this.f8815d);
    }

    private int J() {
        return this.f8812a.v(this.f8813b, this.f8814c) + this.f8815d;
    }

    @Override // j$.time.chrono.AbstractC0014d
    final InterfaceC0012b H(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = this.f8813b + ((int) j10);
        int i10 = (int) j11;
        if (j11 == i10) {
            return O(i10, this.f8814c, this.f8815d);
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final s G(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.f8813b * 12) + (this.f8814c - 1) + j10;
        return O(this.f8812a.n(j$.com.android.tools.r8.a.i(j11, 12L)), ((int) j$.com.android.tools.r8.a.h(j11, 12L)) + 1, this.f8815d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final s F(long j10) {
        return new s(this.f8812a, t() + j10);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b, j$.time.temporal.m
    public final InterfaceC0012b e(long j10, j$.time.temporal.u uVar) {
        return (s) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m e(long j10, j$.time.temporal.u uVar) {
        return (s) super.e(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    /* renamed from: E */
    public final InterfaceC0012b j(long j10, j$.time.temporal.u uVar) {
        return (s) super.j(j10, uVar);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return (s) super.j(j10, bVar);
    }

    @Override // j$.time.chrono.AbstractC0014d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        return this.f8813b == sVar.f8813b && this.f8814c == sVar.f8814c && this.f8815d == sVar.f8815d && this.f8812a.equals(sVar.f8812a);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final int hashCode() {
        int iHashCode = this.f8812a.i().hashCode();
        int i10 = this.f8813b;
        return (iHashCode ^ (i10 & (-2048))) ^ (((i10 << 11) + (this.f8814c << 6)) + this.f8815d);
    }

    @Override // j$.time.chrono.AbstractC0014d, j$.time.chrono.InterfaceC0012b
    public final InterfaceC0015e u(j$.time.i iVar) {
        return C0017g.D(this, iVar);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 6, this);
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.f8812a);
        objectOutput.writeInt(j$.time.temporal.n.a(this, j$.time.temporal.a.YEAR));
        objectOutput.writeByte(j$.time.temporal.n.a(this, j$.time.temporal.a.MONTH_OF_YEAR));
        objectOutput.writeByte(j$.time.temporal.n.a(this, j$.time.temporal.a.DAY_OF_MONTH));
    }
}

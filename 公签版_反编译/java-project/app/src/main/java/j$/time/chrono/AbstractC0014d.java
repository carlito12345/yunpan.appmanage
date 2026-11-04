package j$.time.chrono;

import j$.time.AbstractC0010a;
import java.io.Serializable;

/* renamed from: j$.time.chrono.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0014d implements InterfaceC0012b, j$.time.temporal.m, j$.time.temporal.p, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    abstract InterfaceC0012b F(long j10);

    abstract InterfaceC0012b G(long j10);

    abstract InterfaceC0012b H(long j10);

    @Override // j$.time.chrono.InterfaceC0012b, j$.time.temporal.o
    public /* synthetic */ boolean f(j$.time.temporal.r rVar) {
        return AbstractC0019i.h(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ int k(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public /* synthetic */ j$.time.temporal.w n(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ Object v(j$.time.temporal.t tVar) {
        return AbstractC0019i.j(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final /* synthetic */ j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return AbstractC0019i.a(this, mVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: z */
    public final /* synthetic */ int compareTo(InterfaceC0012b interfaceC0012b) {
        return AbstractC0019i.b(this, interfaceC0012b);
    }

    static InterfaceC0012b C(n nVar, j$.time.temporal.m mVar) {
        InterfaceC0012b interfaceC0012b = (InterfaceC0012b) mVar;
        AbstractC0011a abstractC0011a = (AbstractC0011a) nVar;
        if (abstractC0011a.equals(interfaceC0012b.a())) {
            return interfaceC0012b;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + abstractC0011a.i() + ", actual: " + interfaceC0012b.a().i());
    }

    AbstractC0014d() {
    }

    @Override // j$.time.temporal.m
    public InterfaceC0012b e(long j10, j$.time.temporal.u uVar) {
        boolean z = uVar instanceof j$.time.temporal.b;
        if (!z) {
            if (!z) {
                return C(a(), uVar.j(this, j10));
            }
            throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
        switch (AbstractC0013c.f8785a[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return F(j10);
            case 2:
                return F(j$.com.android.tools.r8.a.j(j10, 7));
            case 3:
                return G(j10);
            case 4:
                return H(j10);
            case 5:
                return H(j$.com.android.tools.r8.a.j(j10, 10));
            case 6:
                return H(j$.com.android.tools.r8.a.j(j10, 100));
            case 7:
                return H(j$.com.android.tools.r8.a.j(j10, 1000));
            case 8:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.d(s(aVar), j10), (j$.time.temporal.r) aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public o D() {
        return a().A(j$.time.temporal.n.a(this, j$.time.temporal.a.ERA));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof InterfaceC0012b) && AbstractC0019i.b(this, (InterfaceC0012b) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public int hashCode() {
        long jT = t();
        return ((AbstractC0011a) a()).hashCode() ^ ((int) (jT ^ (jT >>> 32)));
    }

    @Override // j$.time.temporal.m
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public InterfaceC0012b m(j$.time.temporal.p pVar) {
        return C(a(), pVar.w(this));
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public String toString() {
        long jS = s(j$.time.temporal.a.YEAR_OF_ERA);
        long jS2 = s(j$.time.temporal.a.MONTH_OF_YEAR);
        long jS3 = s(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(((AbstractC0011a) a()).i());
        sb2.append(" ");
        sb2.append(D());
        sb2.append(" ");
        sb2.append(jS);
        sb2.append(jS2 < 10 ? "-0" : "-");
        sb2.append(jS2);
        sb2.append(jS3 < 10 ? "-0" : "-");
        sb2.append(jS3);
        return sb2.toString();
    }

    @Override // j$.time.temporal.m
    public InterfaceC0012b d(long j10, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return C(a(), rVar.n(this, j10));
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public InterfaceC0012b j(long j10, j$.time.temporal.u uVar) {
        return C(a(), j$.time.temporal.n.b(this, j10, uVar));
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public InterfaceC0015e u(j$.time.i iVar) {
        return C0017g.D(this, iVar);
    }

    @Override // j$.time.chrono.InterfaceC0012b
    public long t() {
        return s(j$.time.temporal.a.EPOCH_DAY);
    }
}

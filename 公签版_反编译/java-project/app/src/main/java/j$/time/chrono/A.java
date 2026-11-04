package j$.time.chrono;

import j$.time.DateTimeException;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class A implements o, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final A f8765d;

    /* renamed from: e, reason: collision with root package name */
    private static final A[] f8766e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* renamed from: a, reason: collision with root package name */
    private final transient int f8767a;

    /* renamed from: b, reason: collision with root package name */
    private final transient j$.time.e f8768b;

    /* renamed from: c, reason: collision with root package name */
    private final transient String f8769c;

    @Override // j$.time.temporal.o
    public final /* synthetic */ boolean f(j$.time.temporal.r rVar) {
        return AbstractC0019i.i(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ int k(j$.time.temporal.r rVar) {
        return AbstractC0019i.f(this, (j$.time.temporal.a) rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ long s(j$.time.temporal.r rVar) {
        return AbstractC0019i.g(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final /* synthetic */ Object v(j$.time.temporal.t tVar) {
        return AbstractC0019i.m(this, tVar);
    }

    static {
        A a10 = new A(-1, j$.time.e.N(1868, 1, 1), "Meiji");
        f8765d = a10;
        f8766e = new A[]{a10, new A(0, j$.time.e.N(1912, 7, 30), "Taisho"), new A(1, j$.time.e.N(1926, 12, 25), "Showa"), new A(2, j$.time.e.N(1989, 1, 8), "Heisei"), new A(3, j$.time.e.N(2019, 5, 1), "Reiwa")};
    }

    static A l() {
        return f8766e[r0.length - 1];
    }

    static long D() {
        int iJ = 1000000000 - l().f8768b.J();
        A[] aArr = f8766e;
        int iJ2 = aArr[0].f8768b.J();
        for (int i10 = 1; i10 < aArr.length; i10++) {
            A a10 = aArr[i10];
            iJ = Math.min(iJ, (a10.f8768b.J() - iJ2) + 1);
            iJ2 = a10.f8768b.J();
        }
        return iJ;
    }

    static long C() {
        long jF = j$.time.temporal.a.DAY_OF_YEAR.j().f();
        for (A a10 : f8766e) {
            jF = Math.min(jF, ((a10.f8768b.L() ? 366 : 365) - a10.f8768b.H()) + 1);
            if (a10.r() != null) {
                jF = Math.min(jF, a10.r().f8768b.H() - 1);
            }
        }
        return jF;
    }

    private A(int i10, j$.time.e eVar, String str) {
        this.f8767a = i10;
        this.f8768b = eVar;
        this.f8769c = str;
    }

    final j$.time.e o() {
        return this.f8768b;
    }

    public static A A(int i10) {
        int i11 = i10 + 1;
        if (i11 >= 0) {
            A[] aArr = f8766e;
            if (i11 < aArr.length) {
                return aArr[i11];
            }
        }
        throw new DateTimeException("Invalid era: " + i10);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(getValue(), j$.time.temporal.a.ERA);
    }

    static A i(j$.time.e eVar) {
        if (eVar.K(z.f8822d)) {
            throw new DateTimeException("JapaneseDate before Meiji 6 are not supported");
        }
        A[] aArr = f8766e;
        for (int length = aArr.length - 1; length >= 0; length--) {
            A a10 = aArr[length];
            if (eVar.compareTo(a10.f8768b) >= 0) {
                return a10;
            }
        }
        return null;
    }

    @Override // j$.time.chrono.o
    public final int getValue() {
        return this.f8767a;
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        if (rVar != aVar) {
            return j$.time.temporal.n.d(this, rVar);
        }
        return x.f8820d.m(aVar);
    }

    final A r() {
        if (this == l()) {
            return null;
        }
        return A(this.f8767a + 1);
    }

    public final String toString() {
        return this.f8769c;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new G((byte) 5, this);
    }

    final void E(DataOutput dataOutput) throws IOException {
        dataOutput.writeByte(this.f8767a);
    }
}

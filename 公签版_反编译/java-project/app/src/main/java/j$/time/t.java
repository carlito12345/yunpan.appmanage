package j$.time;

import j$.time.chrono.AbstractC0011a;
import j$.time.chrono.AbstractC0019i;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class t implements j$.time.temporal.m, j$.time.temporal.p, Comparable, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f8916b = 0;
    private static final long serialVersionUID = -23038383694477807L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8917a;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f8917a - ((t) obj).f8917a;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.v.EXCEEDS_PAD);
        oVar.v();
    }

    public static t C(int i10) {
        j$.time.temporal.a.YEAR.C(i10);
        return new t(i10);
    }

    private t(int i10) {
        this.f8917a = i10;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.w.j(1L, this.f8917a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        return n(rVar).a(s(rVar), rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i10 = s.f8914a[((j$.time.temporal.a) rVar).ordinal()];
        int i11 = this.f8917a;
        if (i10 == 1) {
            if (i11 < 1) {
                i11 = 1 - i11;
            }
            return i11;
        }
        if (i10 == 2) {
            return i11;
        }
        if (i10 == 3) {
            return i11 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final t d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (t) rVar.n(this, j10);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.C(j10);
        int i10 = s.f8914a[aVar.ordinal()];
        int i11 = this.f8917a;
        if (i10 == 1) {
            if (i11 < 1) {
                j10 = 1 - j10;
            }
            return C((int) j10);
        }
        if (i10 == 2) {
            return C((int) j10);
        }
        if (i10 == 3) {
            return s(j$.time.temporal.a.ERA) == j10 ? this : C(1 - i11);
        }
        throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final t e(long j10, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (t) uVar.j(this, j10);
        }
        int i10 = s.f8915b[((j$.time.temporal.b) uVar).ordinal()];
        if (i10 == 1) {
            return E(j10);
        }
        if (i10 == 2) {
            return E(j$.com.android.tools.r8.a.j(j10, 10));
        }
        if (i10 == 3) {
            return E(j$.com.android.tools.r8.a.j(j10, 100));
        }
        if (i10 == 4) {
            return E(j$.com.android.tools.r8.a.j(j10, 1000));
        }
        if (i10 == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return d(j$.com.android.tools.r8.a.d(s(aVar), j10), aVar);
        }
        throw new j$.time.temporal.v("Unsupported unit: " + uVar);
    }

    public final t E(long j10) {
        return j10 == 0 ? this : C(j$.time.temporal.a.YEAR.w(this.f8917a + j10));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.e()) {
            return j$.time.chrono.u.f8817d;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.YEARS;
        }
        return j$.time.temporal.n.c(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        if (!((AbstractC0011a) AbstractC0019i.p(mVar)).equals(j$.time.chrono.u.f8817d)) {
            throw new DateTimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.d(this.f8917a, j$.time.temporal.a.YEAR);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            return this.f8917a == ((t) obj).f8917a;
        }
        return false;
    }

    public final int hashCode() {
        return this.f8917a;
    }

    public final String toString() {
        return Integer.toString(this.f8917a);
    }

    private Object writeReplace() {
        return new r((byte) 11, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void G(DataOutput dataOutput) {
        dataOutput.writeInt(this.f8917a);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return (t) AbstractC0019i.a(eVar, this);
    }
}

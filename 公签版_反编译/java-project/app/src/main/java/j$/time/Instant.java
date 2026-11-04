package j$.time;

import j$.time.chrono.AbstractC0019i;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class Instant implements j$.time.temporal.m, j$.time.temporal.p, Comparable<Instant>, Serializable {
    public static final Instant EPOCH = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;

    /* renamed from: a, reason: collision with root package name */
    private final long f8759a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8760b;

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int i10 = (this.f8759a > instant2.f8759a ? 1 : (this.f8759a == instant2.f8759a ? 0 : -1));
        return i10 != 0 ? i10 : this.f8760b - instant2.f8760b;
    }

    static {
        ofEpochSecond(-31557014167219200L, 0L);
        ofEpochSecond(31556889864403199L, 999999999L);
    }

    public static Instant ofEpochSecond(long j10) {
        return C(j10, 0);
    }

    public static Instant ofEpochSecond(long j10, long j11) {
        return C(j$.com.android.tools.r8.a.d(j10, j$.com.android.tools.r8.a.i(j11, 1000000000L)), (int) j$.com.android.tools.r8.a.h(j11, 1000000000L));
    }

    public static Instant ofEpochMilli(long j10) {
        long j11 = 1000;
        return C(j$.com.android.tools.r8.a.i(j10, j11), ((int) j$.com.android.tools.r8.a.h(j10, j11)) * 1000000);
    }

    private static Instant C(long j10, int i10) {
        if ((i10 | j10) == 0) {
            return EPOCH;
        }
        if (j10 < -31557014167219200L || j10 > 31556889864403199L) {
            throw new DateTimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j10, i10);
    }

    private Instant(long j10, int i10) {
        this.f8759a = j10;
        this.f8760b = i10;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.INSTANT_SECONDS || rVar == j$.time.temporal.a.NANO_OF_SECOND || rVar == j$.time.temporal.a.MICRO_OF_SECOND || rVar == j$.time.temporal.a.MILLI_OF_SECOND : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.n.d(this, rVar).a(rVar.k(this), rVar);
        }
        int i10 = c.f8763a[((j$.time.temporal.a) rVar).ordinal()];
        int i11 = this.f8760b;
        if (i10 == 1) {
            return i11;
        }
        if (i10 == 2) {
            return i11 / 1000;
        }
        if (i10 == 3) {
            return i11 / 1000000;
        }
        if (i10 == 4) {
            j$.time.temporal.a.INSTANT_SECONDS.w(this.f8759a);
        }
        throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        int i10;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i11 = c.f8763a[((j$.time.temporal.a) rVar).ordinal()];
        int i12 = this.f8760b;
        if (i11 == 1) {
            return i12;
        }
        if (i11 == 2) {
            i10 = i12 / 1000;
        } else {
            if (i11 != 3) {
                if (i11 == 4) {
                    return this.f8759a;
                }
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
            }
            i10 = i12 / 1000000;
        }
        return i10;
    }

    public long getEpochSecond() {
        return this.f8759a;
    }

    public int getNano() {
        return this.f8760b;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (Instant) rVar.n(this, j10);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.C(j10);
        int i10 = c.f8763a[aVar.ordinal()];
        int i11 = this.f8760b;
        long j11 = this.f8759a;
        if (i10 != 1) {
            if (i10 == 2) {
                int i12 = ((int) j10) * 1000;
                if (i12 != i11) {
                    return C(j11, i12);
                }
            } else if (i10 == 3) {
                int i13 = ((int) j10) * 1000000;
                if (i13 != i11) {
                    return C(j11, i13);
                }
            } else {
                if (i10 != 4) {
                    throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
                }
                if (j10 != j11) {
                    return C(j10, i11);
                }
            }
        } else if (j10 != i11) {
            return C(j11, (int) j10);
        }
        return this;
    }

    @Override // j$.time.temporal.m
    /* renamed from: E, reason: merged with bridge method [inline-methods] */
    public final Instant e(long j10, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (Instant) uVar.j(this, j10);
        }
        switch (c.f8764b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return D(0L, j10);
            case 2:
                return D(j10 / 1000000, (j10 % 1000000) * 1000);
            case 3:
                return D(j10 / 1000, (j10 % 1000) * 1000000);
            case 4:
                return D(j10, 0L);
            case 5:
                return D(j$.com.android.tools.r8.a.j(j10, 60), 0L);
            case 6:
                return D(j$.com.android.tools.r8.a.j(j10, 3600), 0L);
            case 7:
                return D(j$.com.android.tools.r8.a.j(j10, 43200), 0L);
            case 8:
                return D(j$.com.android.tools.r8.a.j(j10, 86400), 0L);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    private Instant D(long j10, long j11) {
        if ((j10 | j11) == 0) {
            return this;
        }
        return ofEpochSecond(j$.com.android.tools.r8.a.d(j$.com.android.tools.r8.a.d(this.f8759a, j10), j11 / 1000000000), this.f8760b + (j11 % 1000000000));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        if (tVar == j$.time.temporal.n.e() || tVar == j$.time.temporal.n.k() || tVar == j$.time.temporal.n.j() || tVar == j$.time.temporal.n.h() || tVar == j$.time.temporal.n.f() || tVar == j$.time.temporal.n.g()) {
            return null;
        }
        return tVar.a(this);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(this.f8759a, j$.time.temporal.a.INSTANT_SECONDS).d(this.f8760b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public long toEpochMilli() {
        int i10 = this.f8760b;
        long j10 = this.f8759a;
        return (j10 >= 0 || i10 <= 0) ? j$.com.android.tools.r8.a.d(j$.com.android.tools.r8.a.j(j10, 1000), i10 / 1000000) : j$.com.android.tools.r8.a.d(j$.com.android.tools.r8.a.j(j10 + 1, 1000), (i10 / 1000000) - 1000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Instant)) {
            return false;
        }
        Instant instant = (Instant) obj;
        return this.f8759a == instant.f8759a && this.f8760b == instant.f8760b;
    }

    public final int hashCode() {
        long j10 = this.f8759a;
        return (this.f8760b * 51) + ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        return j$.time.format.a.f8834e.a(this);
    }

    private Object writeReplace() {
        return new r((byte) 2, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void F(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.f8759a);
        dataOutput.writeInt(this.f8760b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return (Instant) AbstractC0019i.a(eVar, this);
    }
}

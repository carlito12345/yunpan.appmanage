package j$.time;

import com.android.apksig.internal.apk.v4.V4Signature;
import j$.time.chrono.AbstractC0011a;
import j$.time.chrono.AbstractC0019i;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class v implements j$.time.temporal.m, j$.time.temporal.p, Comparable, Serializable {
    private static final long serialVersionUID = 4183400860270640070L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8952a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8953b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        v vVar = (v) obj;
        int i10 = this.f8952a - vVar.f8952a;
        return i10 == 0 ? this.f8953b - vVar.f8953b : i10;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.l(j$.time.temporal.a.YEAR, 4, 10, j$.time.format.v.EXCEEDS_PAD);
        oVar.e('-');
        oVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        oVar.v();
    }

    private v(int i10, int i11) {
        this.f8952a = i10;
        this.f8953b = i11;
    }

    private v H(int i10, int i11) {
        return (this.f8952a == i10 && this.f8953b == i11) ? this : new v(i10, i11);
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.YEAR || rVar == j$.time.temporal.a.MONTH_OF_YEAR || rVar == j$.time.temporal.a.PROLEPTIC_MONTH || rVar == j$.time.temporal.a.YEAR_OF_ERA || rVar == j$.time.temporal.a.ERA : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.w.j(1L, this.f8952a <= 0 ? 1000000000L : 999999999L);
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
        int i10 = u.f8950a[((j$.time.temporal.a) rVar).ordinal()];
        if (i10 == 1) {
            return this.f8953b;
        }
        if (i10 == 2) {
            return C();
        }
        int i11 = this.f8952a;
        if (i10 == 3) {
            if (i11 < 1) {
                i11 = 1 - i11;
            }
            return i11;
        }
        if (i10 == 4) {
            return i11;
        }
        if (i10 == 5) {
            return i11 < 1 ? 0 : 1;
        }
        throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
    }

    private long C() {
        return ((this.f8952a * 12) + this.f8953b) - 1;
    }

    @Override // j$.time.temporal.m
    /* renamed from: I, reason: merged with bridge method [inline-methods] */
    public final v d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (v) rVar.n(this, j10);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.C(j10);
        int i10 = u.f8950a[aVar.ordinal()];
        int i11 = this.f8952a;
        if (i10 == 1) {
            int i12 = (int) j10;
            j$.time.temporal.a.MONTH_OF_YEAR.C(i12);
            return H(i11, i12);
        }
        if (i10 == 2) {
            return E(j10 - C());
        }
        int i13 = this.f8953b;
        if (i10 == 3) {
            if (i11 < 1) {
                j10 = 1 - j10;
            }
            int i14 = (int) j10;
            j$.time.temporal.a.YEAR.C(i14);
            return H(i14, i13);
        }
        if (i10 == 4) {
            int i15 = (int) j10;
            j$.time.temporal.a.YEAR.C(i15);
            return H(i15, i13);
        }
        if (i10 != 5) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        if (s(j$.time.temporal.a.ERA) == j10) {
            return this;
        }
        int i16 = 1 - i11;
        j$.time.temporal.a.YEAR.C(i16);
        return H(i16, i13);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final v e(long j10, j$.time.temporal.u uVar) {
        if (!(uVar instanceof j$.time.temporal.b)) {
            return (v) uVar.j(this, j10);
        }
        switch (u.f8951b[((j$.time.temporal.b) uVar).ordinal()]) {
            case 1:
                return E(j10);
            case 2:
                return F(j10);
            case 3:
                return F(j$.com.android.tools.r8.a.j(j10, 10));
            case 4:
                return F(j$.com.android.tools.r8.a.j(j10, 100));
            case 5:
                return F(j$.com.android.tools.r8.a.j(j10, 1000));
            case 6:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return d(j$.com.android.tools.r8.a.d(s(aVar), j10), aVar);
            default:
                throw new j$.time.temporal.v("Unsupported unit: " + uVar);
        }
    }

    public final v F(long j10) {
        return j10 == 0 ? this : H(j$.time.temporal.a.YEAR.w(this.f8952a + j10), this.f8953b);
    }

    public final v E(long j10) {
        if (j10 == 0) {
            return this;
        }
        long j11 = (this.f8952a * 12) + (this.f8953b - 1) + j10;
        long j12 = 12;
        return H(j$.time.temporal.a.YEAR.w(j$.com.android.tools.r8.a.i(j11, j12)), ((int) j$.com.android.tools.r8.a.h(j11, j12)) + 1);
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
            return j$.time.temporal.b.MONTHS;
        }
        return j$.time.temporal.n.c(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        if (!((AbstractC0011a) AbstractC0019i.p(mVar)).equals(j$.time.chrono.u.f8817d)) {
            throw new DateTimeException("Adjustment only supported on ISO date-time");
        }
        return mVar.d(C(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f8952a == vVar.f8952a && this.f8953b == vVar.f8953b;
    }

    public final int hashCode() {
        return (this.f8953b << 27) ^ this.f8952a;
    }

    public final String toString() {
        int i10 = this.f8952a;
        int iAbs = Math.abs(i10);
        StringBuilder sb2 = new StringBuilder(9);
        if (iAbs >= 1000) {
            sb2.append(i10);
        } else if (i10 < 0) {
            sb2.append(i10 - 10000);
            sb2.deleteCharAt(1);
        } else {
            sb2.append(i10 + 10000);
            sb2.deleteCharAt(0);
        }
        int i11 = this.f8953b;
        sb2.append(i11 < 10 ? "-0" : "-");
        sb2.append(i11);
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r(V4Signature.LOG2_BLOCK_SIZE_4096_BYTES, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void J(DataOutput dataOutput) {
        dataOutput.writeInt(this.f8952a);
        dataOutput.writeByte(this.f8953b);
    }

    static v G(ObjectInput objectInput) throws IOException {
        int i10 = objectInput.readInt();
        byte b10 = objectInput.readByte();
        j$.time.temporal.a.YEAR.C(i10);
        j$.time.temporal.a.MONTH_OF_YEAR.C(b10);
        return new v(i10, b10);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return (v) AbstractC0019i.a(eVar, this);
    }
}

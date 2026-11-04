package j$.time;

import j$.time.chrono.AbstractC0011a;
import j$.time.chrono.AbstractC0019i;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class m implements j$.time.temporal.o, j$.time.temporal.p, Comparable, Serializable {
    private static final long serialVersionUID = -939150713474957432L;

    /* renamed from: a, reason: collision with root package name */
    private final int f8901a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8902b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        m mVar = (m) obj;
        int i10 = this.f8901a - mVar.f8901a;
        return i10 == 0 ? this.f8902b - mVar.f8902b : i10;
    }

    static {
        j$.time.format.o oVar = new j$.time.format.o();
        oVar.f("--");
        oVar.k(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        oVar.e('-');
        oVar.k(j$.time.temporal.a.DAY_OF_MONTH, 2);
        oVar.v();
    }

    private m(int i10, int i11) {
        this.f8901a = i10;
        this.f8902b = i11;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.MONTH_OF_YEAR || rVar == j$.time.temporal.a.DAY_OF_MONTH : rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return rVar.j();
        }
        if (rVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.n.d(this, rVar);
        }
        k kVarF = k.F(this.f8901a);
        kVarF.getClass();
        int i10 = j.f8897a[kVarF.ordinal()];
        return j$.time.temporal.w.k(i10 != 1 ? (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) ? 30 : 31 : 28, k.F(r5).E());
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        return n(rVar).a(s(rVar), rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        int i10;
        if (!(rVar instanceof j$.time.temporal.a)) {
            return rVar.k(this);
        }
        int i11 = l.f8900a[((j$.time.temporal.a) rVar).ordinal()];
        if (i11 == 1) {
            i10 = this.f8902b;
        } else {
            if (i11 != 2) {
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
            }
            i10 = this.f8901a;
        }
        return i10;
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.e()) {
            return j$.time.chrono.u.f8817d;
        }
        return j$.time.temporal.n.c(this, tVar);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        if (!((AbstractC0011a) AbstractC0019i.p(mVar)).equals(j$.time.chrono.u.f8817d)) {
            throw new DateTimeException("Adjustment only supported on ISO date-time");
        }
        j$.time.temporal.m mVarD = mVar.d(this.f8901a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return mVarD.d(Math.min(mVarD.n(aVar).d(), this.f8902b), aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f8901a == mVar.f8901a && this.f8902b == mVar.f8902b;
    }

    public final int hashCode() {
        return (this.f8901a << 6) + this.f8902b;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(10);
        sb2.append("--");
        int i10 = this.f8901a;
        sb2.append(i10 < 10 ? "0" : "");
        sb2.append(i10);
        int i11 = this.f8902b;
        sb2.append(i11 < 10 ? "-0" : "-");
        sb2.append(i11);
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r((byte) 13, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void D(DataOutput dataOutput) {
        dataOutput.writeByte(this.f8901a);
        dataOutput.writeByte(this.f8902b);
    }

    static m C(ObjectInput objectInput) throws IOException {
        byte b10 = objectInput.readByte();
        byte b11 = objectInput.readByte();
        k kVarF = k.F(b10);
        Objects.requireNonNull(kVarF, "month");
        j$.time.temporal.a.DAY_OF_MONTH.C(b11);
        if (b11 > kVarF.E()) {
            throw new DateTimeException("Illegal value for DayOfMonth field, value " + ((int) b11) + " is not valid for month " + kVarF.name());
        }
        return new m(kVarF.getValue(), b11);
    }
}

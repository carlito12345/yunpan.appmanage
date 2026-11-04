package j$.time;

import com.android.apksig.internal.apk.v4.V4Signature;
import j$.time.chrono.AbstractC0019i;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class i implements j$.time.temporal.m, j$.time.temporal.p, Comparable, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final i f8889e;

    /* renamed from: f, reason: collision with root package name */
    public static final i f8890f;

    /* renamed from: g, reason: collision with root package name */
    public static final i f8891g;

    /* renamed from: h, reason: collision with root package name */
    private static final i[] f8892h = new i[24];
    private static final long serialVersionUID = 6414437269572265201L;

    /* renamed from: a, reason: collision with root package name */
    private final byte f8893a;

    /* renamed from: b, reason: collision with root package name */
    private final byte f8894b;

    /* renamed from: c, reason: collision with root package name */
    private final byte f8895c;

    /* renamed from: d, reason: collision with root package name */
    private final int f8896d;

    static {
        int i10 = 0;
        while (true) {
            i[] iVarArr = f8892h;
            if (i10 < iVarArr.length) {
                iVarArr[i10] = new i(i10, 0, 0, 0);
                i10++;
            } else {
                i iVar = iVarArr[0];
                f8891g = iVar;
                i iVar2 = iVarArr[12];
                f8889e = iVar;
                f8890f = new i(23, 59, 59, 999999999);
                return;
            }
        }
    }

    public static i J(int i10) {
        j$.time.temporal.a.HOUR_OF_DAY.C(i10);
        return f8892h[i10];
    }

    public static i L(long j10) {
        j$.time.temporal.a.SECOND_OF_DAY.C(j10);
        int i10 = (int) (j10 / 3600);
        long j11 = j10 - (i10 * 3600);
        return D(i10, (int) (j11 / 60), (int) (j11 - (r0 * 60)), 0);
    }

    public static i K(long j10) {
        j$.time.temporal.a.NANO_OF_DAY.C(j10);
        int i10 = (int) (j10 / 3600000000000L);
        long j11 = j10 - (i10 * 3600000000000L);
        int i11 = (int) (j11 / 60000000000L);
        long j12 = j11 - (i11 * 60000000000L);
        int i12 = (int) (j12 / 1000000000);
        return D(i10, i11, i12, (int) (j12 - (i12 * 1000000000)));
    }

    public static i E(j$.time.temporal.o oVar) {
        Objects.requireNonNull(oVar, "temporal");
        i iVar = (i) oVar.v(j$.time.temporal.n.g());
        if (iVar != null) {
            return iVar;
        }
        throw new DateTimeException("Unable to obtain LocalTime from TemporalAccessor: " + oVar + " of type " + oVar.getClass().getName());
    }

    private static i D(int i10, int i11, int i12, int i13) {
        if ((i11 | i12 | i13) == 0) {
            return f8892h[i10];
        }
        return new i(i10, i11, i12, i13);
    }

    private i(int i10, int i11, int i12, int i13) {
        this.f8893a = (byte) i10;
        this.f8894b = (byte) i11;
        this.f8895c = (byte) i12;
        this.f8896d = i13;
    }

    @Override // j$.time.temporal.o
    public final boolean f(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).D();
        }
        return rVar != null && rVar.m(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.w n(j$.time.temporal.r rVar) {
        return j$.time.temporal.n.d(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final int k(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return F(rVar);
        }
        return j$.time.temporal.n.a(this, rVar);
    }

    @Override // j$.time.temporal.o
    public final long s(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.NANO_OF_DAY) {
                return S();
            }
            if (rVar == j$.time.temporal.a.MICRO_OF_DAY) {
                return S() / 1000;
            }
            return F(rVar);
        }
        return rVar.k(this);
    }

    private int F(j$.time.temporal.r rVar) {
        int i10 = h.f8887a[((j$.time.temporal.a) rVar).ordinal()];
        byte b10 = this.f8894b;
        int i11 = this.f8896d;
        byte b11 = this.f8893a;
        switch (i10) {
            case 1:
                return i11;
            case 2:
                throw new j$.time.temporal.v("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return i11 / 1000;
            case 4:
                throw new j$.time.temporal.v("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return i11 / 1000000;
            case 6:
                return (int) (S() / 1000000);
            case 7:
                return this.f8895c;
            case 8:
                return T();
            case 9:
                return b10;
            case 10:
                return (b11 * 60) + b10;
            case 11:
                return b11 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
            case 12:
                int i12 = b11 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
                if (i12 % 12 == 0) {
                    return 12;
                }
                return i12;
            case 13:
                return b11;
            case 14:
                if (b11 == 0) {
                    return 24;
                }
                return b11;
            case 15:
                return b11 / V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
    }

    public final int G() {
        return this.f8893a;
    }

    public final int I() {
        return this.f8895c;
    }

    public final int H() {
        return this.f8896d;
    }

    @Override // j$.time.temporal.m
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final i d(long j10, j$.time.temporal.r rVar) {
        if (!(rVar instanceof j$.time.temporal.a)) {
            return (i) rVar.n(this, j10);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
        aVar.C(j10);
        int i10 = h.f8887a[aVar.ordinal()];
        byte b10 = this.f8894b;
        byte b11 = this.f8895c;
        int i11 = this.f8896d;
        byte b12 = this.f8893a;
        switch (i10) {
            case 1:
                return V((int) j10);
            case 2:
                return K(j10);
            case 3:
                return V(((int) j10) * 1000);
            case 4:
                return K(j10 * 1000);
            case 5:
                return V(((int) j10) * 1000000);
            case 6:
                return K(j10 * 1000000);
            case 7:
                int i12 = (int) j10;
                if (b11 == i12) {
                    return this;
                }
                j$.time.temporal.a.SECOND_OF_MINUTE.C(i12);
                return D(b12, b10, i12, i11);
            case 8:
                return Q(j10 - T());
            case 9:
                int i13 = (int) j10;
                if (b10 == i13) {
                    return this;
                }
                j$.time.temporal.a.MINUTE_OF_HOUR.C(i13);
                return D(b12, i13, b11, i11);
            case 10:
                return O(j10 - ((b12 * 60) + b10));
            case 11:
                return N(j10 - (b12 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES));
            case 12:
                if (j10 == 12) {
                    j10 = 0;
                }
                return N(j10 - (b12 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES));
            case 13:
                int i14 = (int) j10;
                if (b12 == i14) {
                    return this;
                }
                j$.time.temporal.a.HOUR_OF_DAY.C(i14);
                return D(i14, b10, b11, i11);
            case 14:
                if (j10 == 24) {
                    j10 = 0;
                }
                int i15 = (int) j10;
                if (b12 == i15) {
                    return this;
                }
                j$.time.temporal.a.HOUR_OF_DAY.C(i15);
                return D(i15, b10, b11, i11);
            case 15:
                return N((j10 - (b12 / V4Signature.LOG2_BLOCK_SIZE_4096_BYTES)) * 12);
            default:
                throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
    }

    public final i V(int i10) {
        if (this.f8896d == i10) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.C(i10);
        return D(this.f8893a, this.f8894b, this.f8895c, i10);
    }

    @Override // j$.time.temporal.m
    /* renamed from: M, reason: merged with bridge method [inline-methods] */
    public final i e(long j10, j$.time.temporal.u uVar) {
        if (uVar instanceof j$.time.temporal.b) {
            switch (h.f8888b[((j$.time.temporal.b) uVar).ordinal()]) {
                case 1:
                    return P(j10);
                case 2:
                    return P((j10 % 86400000000L) * 1000);
                case 3:
                    return P((j10 % 86400000) * 1000000);
                case 4:
                    return Q(j10);
                case 5:
                    return O(j10);
                case 6:
                    return N(j10);
                case 7:
                    return N((j10 % 2) * 12);
                default:
                    throw new j$.time.temporal.v("Unsupported unit: " + uVar);
            }
        }
        return (i) uVar.j(this, j10);
    }

    public final i N(long j10) {
        if (j10 == 0) {
            return this;
        }
        return D(((((int) (j10 % 24)) + this.f8893a) + 24) % 24, this.f8894b, this.f8895c, this.f8896d);
    }

    public final i O(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i10 = (this.f8893a * 60) + this.f8894b;
        int i11 = ((((int) (j10 % 1440)) + i10) + 1440) % 1440;
        return i10 == i11 ? this : D(i11 / 60, i11 % 60, this.f8895c, this.f8896d);
    }

    public final i Q(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i10 = (this.f8894b * 60) + (this.f8893a * 3600) + this.f8895c;
        int i11 = ((((int) (j10 % 86400)) + i10) + 86400) % 86400;
        return i10 == i11 ? this : D(i11 / 3600, (i11 / 60) % 60, i11 % 60, this.f8896d);
    }

    public final i P(long j10) {
        if (j10 == 0) {
            return this;
        }
        long jS = S();
        long j11 = (((j10 % 86400000000000L) + jS) + 86400000000000L) % 86400000000000L;
        return jS == j11 ? this : D((int) (j11 / 3600000000000L), (int) ((j11 / 60000000000L) % 60), (int) ((j11 / 1000000000) % 60), (int) (j11 % 1000000000));
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(long j10, j$.time.temporal.b bVar) {
        return j10 == Long.MIN_VALUE ? e(Long.MAX_VALUE, bVar).e(1L, bVar) : e(-j10, bVar);
    }

    @Override // j$.time.temporal.o
    public final Object v(j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.e() || tVar == j$.time.temporal.n.k() || tVar == j$.time.temporal.n.j() || tVar == j$.time.temporal.n.h()) {
            return null;
        }
        if (tVar == j$.time.temporal.n.g()) {
            return this;
        }
        if (tVar == j$.time.temporal.n.f()) {
            return null;
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        return tVar.a(this);
    }

    @Override // j$.time.temporal.p
    public final j$.time.temporal.m w(j$.time.temporal.m mVar) {
        return mVar.d(S(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public final int T() {
        return (this.f8894b * 60) + (this.f8893a * 3600) + this.f8895c;
    }

    public final long S() {
        return (this.f8895c * 1000000000) + (this.f8894b * 60000000000L) + (this.f8893a * 3600000000000L) + this.f8896d;
    }

    @Override // java.lang.Comparable
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final int compareTo(i iVar) {
        int iC = j$.com.android.tools.r8.a.c(this.f8893a, iVar.f8893a);
        if (iC != 0) {
            return iC;
        }
        int iC2 = j$.com.android.tools.r8.a.c(this.f8894b, iVar.f8894b);
        if (iC2 != 0) {
            return iC2;
        }
        int iC3 = j$.com.android.tools.r8.a.c(this.f8895c, iVar.f8895c);
        return iC3 == 0 ? j$.com.android.tools.r8.a.c(this.f8896d, iVar.f8896d) : iC3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f8893a == iVar.f8893a && this.f8894b == iVar.f8894b && this.f8895c == iVar.f8895c && this.f8896d == iVar.f8896d;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m m(e eVar) {
        return (i) AbstractC0019i.a(eVar, this);
    }

    public final int hashCode() {
        long jS = S();
        return (int) (jS ^ (jS >>> 32));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(18);
        byte b10 = this.f8893a;
        sb2.append(b10 < 10 ? "0" : "");
        sb2.append((int) b10);
        byte b11 = this.f8894b;
        sb2.append(b11 < 10 ? ":0" : ":");
        sb2.append((int) b11);
        byte b12 = this.f8895c;
        int i10 = this.f8896d;
        if (b12 > 0 || i10 > 0) {
            sb2.append(b12 < 10 ? ":0" : ":");
            sb2.append((int) b12);
            if (i10 > 0) {
                sb2.append('.');
                if (i10 % 1000000 == 0) {
                    sb2.append(Integer.toString((i10 / 1000000) + 1000).substring(1));
                } else if (i10 % 1000 == 0) {
                    sb2.append(Integer.toString((i10 / 1000) + 1000000).substring(1));
                } else {
                    sb2.append(Integer.toString(i10 + 1000000000).substring(1));
                }
            }
        }
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r((byte) 4, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void W(DataOutput dataOutput) {
        byte b10 = this.f8895c;
        byte b11 = this.f8893a;
        byte b12 = this.f8894b;
        int i10 = this.f8896d;
        if (i10 != 0) {
            dataOutput.writeByte(b11);
            dataOutput.writeByte(b12);
            dataOutput.writeByte(b10);
            dataOutput.writeInt(i10);
            return;
        }
        if (b10 != 0) {
            dataOutput.writeByte(b11);
            dataOutput.writeByte(b12);
            dataOutput.writeByte(b10 ^ (-1));
        } else if (b12 == 0) {
            dataOutput.writeByte(b11 ^ (-1));
        } else {
            dataOutput.writeByte(b11);
            dataOutput.writeByte(b12 ^ (-1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static i R(ObjectInput objectInput) throws IOException {
        int i10;
        int i11;
        int i12 = objectInput.readByte();
        byte b10 = 0;
        if (i12 >= 0) {
            byte b11 = objectInput.readByte();
            if (b11 < 0) {
                boolean z = b11 ^ (-1);
                i11 = 0;
                b10 = z ? 1 : 0;
                i10 = 0;
            } else {
                byte b12 = objectInput.readByte();
                if (b12 < 0) {
                    i10 = b12 ^ (-1);
                    b10 = b11;
                } else {
                    int i13 = objectInput.readInt();
                    i10 = b12;
                    i11 = i13;
                    b10 = b11;
                }
            }
            j$.time.temporal.a.HOUR_OF_DAY.C(i12);
            j$.time.temporal.a.MINUTE_OF_HOUR.C(b10);
            j$.time.temporal.a.SECOND_OF_MINUTE.C(i10);
            j$.time.temporal.a.NANO_OF_SECOND.C(i11);
            return D(i12, b10, i10, i11);
        }
        i12 ^= -1;
        i10 = 0;
        i11 = 0;
        j$.time.temporal.a.HOUR_OF_DAY.C(i12);
        j$.time.temporal.a.MINUTE_OF_HOUR.C(b10);
        j$.time.temporal.a.SECOND_OF_MINUTE.C(i10);
        j$.time.temporal.a.NANO_OF_SECOND.C(i11);
        return D(i12, b10, i10, i11);
    }
}

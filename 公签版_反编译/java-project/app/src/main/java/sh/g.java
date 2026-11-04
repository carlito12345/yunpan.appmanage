package sh;

import com.android.apksig.internal.apk.v4.V4Signature;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.Serializable;

/* loaded from: classes3.dex */
public final class g extends vh.b implements wh.j, wh.l, Comparable, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final g f14588e;

    /* renamed from: f, reason: collision with root package name */
    public static final g f14589f;

    /* renamed from: g, reason: collision with root package name */
    public static final g[] f14590g = new g[24];

    /* renamed from: a, reason: collision with root package name */
    public final byte f14591a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f14592b;

    /* renamed from: c, reason: collision with root package name */
    public final byte f14593c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14594d;

    static {
        int i10 = 0;
        while (true) {
            g[] gVarArr = f14590g;
            if (i10 >= gVarArr.length) {
                g gVar = gVarArr[0];
                g gVar2 = gVarArr[12];
                f14588e = gVar;
                f14589f = new g(23, 59, 59, 999999999);
                return;
            }
            gVarArr[i10] = new g(i10, 0, 0, 0);
            i10++;
        }
    }

    public g(int i10, int i11, int i12, int i13) {
        this.f14591a = (byte) i10;
        this.f14592b = (byte) i11;
        this.f14593c = (byte) i12;
        this.f14594d = i13;
    }

    public static g n(int i10, int i11, int i12, int i13) {
        return ((i11 | i12) | i13) == 0 ? f14590g[i10] : new g(i10, i11, i12, i13);
    }

    public static g p(long j10) {
        wh.a.NANO_OF_DAY.h(j10);
        int i10 = (int) (j10 / 3600000000000L);
        long j11 = j10 - (i10 * 3600000000000L);
        int i11 = (int) (j11 / 60000000000L);
        long j12 = j11 - (i11 * 60000000000L);
        int i12 = (int) (j12 / 1000000000);
        return n(i10, i11, i12, (int) (j12 - (i12 * 1000000000)));
    }

    private Object readResolve() throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static g v(ObjectInput objectInput) throws IOException {
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
            wh.a.HOUR_OF_DAY.h(i12);
            wh.a.MINUTE_OF_HOUR.h(b10);
            wh.a.SECOND_OF_MINUTE.h(i10);
            wh.a.NANO_OF_SECOND.h(i11);
            return n(i12, b10, i10, i11);
        }
        i12 ^= -1;
        i10 = 0;
        i11 = 0;
        wh.a.HOUR_OF_DAY.h(i12);
        wh.a.MINUTE_OF_HOUR.h(b10);
        wh.a.SECOND_OF_MINUTE.h(i10);
        wh.a.NANO_OF_SECOND.h(i11);
        return n(i12, b10, i10, i11);
    }

    private Object writeReplace() {
        return new l((byte) 5, this);
    }

    public final void A(DataOutput dataOutput) {
        byte b10 = this.f14593c;
        byte b11 = this.f14591a;
        byte b12 = this.f14592b;
        int i10 = this.f14594d;
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

    @Override // wh.k
    public final long b(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.NANO_OF_DAY ? w() : mVar == wh.a.MICRO_OF_DAY ? w() / 1000 : o(mVar) : mVar.a(this);
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17928c) {
            return wh.b.NANOS;
        }
        if (oVar == wh.n.f17932g) {
            return this;
        }
        if (oVar == wh.n.f17927b || oVar == wh.n.f17926a || oVar == wh.n.f17929d || oVar == wh.n.f17930e || oVar == wh.n.f17931f) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? ((wh.a) mVar).i() : mVar != null && mVar.f(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f14591a == gVar.f14591a && this.f14592b == gVar.f14592b && this.f14593c == gVar.f14593c && this.f14594d == gVar.f14594d;
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(w(), wh.a.NANO_OF_DAY);
    }

    @Override // wh.j
    public final wh.j h(e eVar) {
        return (g) eVar.g(this);
    }

    public final int hashCode() {
        long jW = w();
        return (int) (jW ^ (jW >>> 32));
    }

    @Override // vh.b, wh.k
    public final int i(wh.m mVar) {
        return mVar instanceof wh.a ? o(mVar) : super.i(mVar);
    }

    @Override // wh.j
    public final wh.j l(long j10, wh.b bVar) {
        return j10 == Long.MIN_VALUE ? j(Long.MAX_VALUE, bVar).j(1L, bVar) : j(-j10, bVar);
    }

    @Override // java.lang.Comparable
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final int compareTo(g gVar) {
        byte b10 = gVar.f14591a;
        int i10 = 0;
        byte b11 = this.f14591a;
        int i11 = b11 < b10 ? -1 : b11 > b10 ? 1 : 0;
        if (i11 != 0) {
            return i11;
        }
        byte b12 = this.f14592b;
        byte b13 = gVar.f14592b;
        int i12 = b12 < b13 ? -1 : b12 > b13 ? 1 : 0;
        if (i12 != 0) {
            return i12;
        }
        byte b14 = this.f14593c;
        byte b15 = gVar.f14593c;
        int i13 = b14 < b15 ? -1 : b14 > b15 ? 1 : 0;
        if (i13 != 0) {
            return i13;
        }
        int i14 = this.f14594d;
        int i15 = gVar.f14594d;
        if (i14 < i15) {
            i10 = -1;
        } else if (i14 > i15) {
            i10 = 1;
        }
        return i10;
    }

    public final int o(wh.m mVar) {
        int iOrdinal = ((wh.a) mVar).ordinal();
        byte b10 = this.f14592b;
        int i10 = this.f14594d;
        byte b11 = this.f14591a;
        switch (iOrdinal) {
            case 0:
                return i10;
            case 1:
                throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
            case 2:
                return i10 / 1000;
            case 3:
                throw new a(org.bouncycastle.jcajce.provider.digest.a.f("Field too large for an int: ", mVar));
            case 4:
                return i10 / 1000000;
            case 5:
                return (int) (w() / 1000000);
            case 6:
                return this.f14593c;
            case 7:
                return x();
            case 8:
                return b10;
            case 9:
                return (b11 * 60) + b10;
            case 10:
                return b11 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
            case 11:
                int i11 = b11 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
                if (i11 % 12 == 0) {
                    return 12;
                }
                return i11;
            case 12:
                return b11;
            case 13:
                if (b11 == 0) {
                    return 24;
                }
                return b11;
            case 14:
                return b11 / V4Signature.LOG2_BLOCK_SIZE_4096_BYTES;
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    @Override // wh.j
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public final g j(long j10, wh.b bVar) {
        if (!(bVar instanceof wh.b)) {
            bVar.getClass();
            return (g) j(j10, bVar);
        }
        switch (bVar) {
            case NANOS:
                return t(j10);
            case MICROS:
                return t((j10 % 86400000000L) * 1000);
            case MILLIS:
                return t((j10 % 86400000) * 1000000);
            case SECONDS:
                return u(j10);
            case MINUTES:
                return s(j10);
            case HOURS:
                return r(j10);
            case HALF_DAYS:
                return r((j10 % 2) * 12);
            default:
                throw new wh.q("Unsupported unit: " + bVar);
        }
    }

    public final g r(long j10) {
        if (j10 == 0) {
            return this;
        }
        return n(((((int) (j10 % 24)) + this.f14591a) + 24) % 24, this.f14592b, this.f14593c, this.f14594d);
    }

    public final g s(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i10 = (this.f14591a * 60) + this.f14592b;
        int i11 = ((((int) (j10 % 1440)) + i10) + 1440) % 1440;
        return i10 == i11 ? this : n(i11 / 60, i11 % 60, this.f14593c, this.f14594d);
    }

    public final g t(long j10) {
        if (j10 == 0) {
            return this;
        }
        long jW = w();
        long j11 = (((j10 % 86400000000000L) + jW) + 86400000000000L) % 86400000000000L;
        return jW == j11 ? this : n((int) (j11 / 3600000000000L), (int) ((j11 / 60000000000L) % 60), (int) ((j11 / 1000000000) % 60), (int) (j11 % 1000000000));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(18);
        byte b10 = this.f14591a;
        sb2.append(b10 < 10 ? "0" : "");
        sb2.append((int) b10);
        byte b11 = this.f14592b;
        sb2.append(b11 < 10 ? ":0" : ":");
        sb2.append((int) b11);
        byte b12 = this.f14593c;
        int i10 = this.f14594d;
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

    public final g u(long j10) {
        if (j10 == 0) {
            return this;
        }
        int i10 = (this.f14592b * 60) + (this.f14591a * 3600) + this.f14593c;
        int i11 = ((((int) (j10 % 86400)) + i10) + 86400) % 86400;
        return i10 == i11 ? this : n(i11 / 3600, (i11 / 60) % 60, i11 % 60, this.f14594d);
    }

    public final long w() {
        return (this.f14593c * 1000000000) + (this.f14592b * 60000000000L) + (this.f14591a * 3600000000000L) + this.f14594d;
    }

    public final int x() {
        return (this.f14592b * 60) + (this.f14591a * 3600) + this.f14593c;
    }

    @Override // wh.j
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public final g a(long j10, wh.m mVar) {
        if (!(mVar instanceof wh.a)) {
            return (g) mVar.g(this, j10);
        }
        wh.a aVar = (wh.a) mVar;
        aVar.h(j10);
        int iOrdinal = aVar.ordinal();
        byte b10 = this.f14592b;
        byte b11 = this.f14593c;
        int i10 = this.f14594d;
        byte b12 = this.f14591a;
        switch (iOrdinal) {
            case 0:
                return z((int) j10);
            case 1:
                return p(j10);
            case 2:
                return z(((int) j10) * 1000);
            case 3:
                return p(j10 * 1000);
            case 4:
                return z(((int) j10) * 1000000);
            case 5:
                return p(j10 * 1000000);
            case 6:
                int i11 = (int) j10;
                if (b11 == i11) {
                    return this;
                }
                wh.a.SECOND_OF_MINUTE.h(i11);
                return n(b12, b10, i11, i10);
            case 7:
                return u(j10 - x());
            case 8:
                int i12 = (int) j10;
                if (b10 == i12) {
                    return this;
                }
                wh.a.MINUTE_OF_HOUR.h(i12);
                return n(b12, i12, b11, i10);
            case 9:
                return s(j10 - ((b12 * 60) + b10));
            case 10:
                return r(j10 - (b12 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES));
            case 11:
                if (j10 == 12) {
                    j10 = 0;
                }
                return r(j10 - (b12 % V4Signature.LOG2_BLOCK_SIZE_4096_BYTES));
            case 12:
                int i13 = (int) j10;
                if (b12 == i13) {
                    return this;
                }
                wh.a.HOUR_OF_DAY.h(i13);
                return n(i13, b10, b11, i10);
            case 13:
                if (j10 == 24) {
                    j10 = 0;
                }
                int i14 = (int) j10;
                if (b12 == i14) {
                    return this;
                }
                wh.a.HOUR_OF_DAY.h(i14);
                return n(i14, b10, b11, i10);
            case 14:
                return r((j10 - (b12 / V4Signature.LOG2_BLOCK_SIZE_4096_BYTES)) * 12);
            default:
                throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
    }

    public final g z(int i10) {
        if (this.f14594d == i10) {
            return this;
        }
        wh.a.NANO_OF_SECOND.h(i10);
        return n(this.f14591a, this.f14592b, this.f14593c, i10);
    }
}

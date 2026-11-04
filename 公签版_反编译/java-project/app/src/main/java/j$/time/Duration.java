package j$.time;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.Serializable;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class Duration implements Comparable<Duration>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final Duration f8756c = new Duration(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* renamed from: a, reason: collision with root package name */
    private final long f8757a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8758b;

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        Duration duration2 = duration;
        int i10 = (this.f8757a > duration2.f8757a ? 1 : (this.f8757a == duration2.f8757a ? 0 : -1));
        return i10 != 0 ? i10 : this.f8758b - duration2.f8758b;
    }

    static {
        BigInteger.valueOf(1000000000L);
    }

    public static Duration n(long j10) {
        return j(j10, 0);
    }

    public static Duration s(long j10, long j11) {
        return j(j$.com.android.tools.r8.a.d(j10, j$.com.android.tools.r8.a.i(j11, 1000000000L)), (int) j$.com.android.tools.r8.a.h(j11, 1000000000L));
    }

    public static Duration ofMillis(long j10) {
        long j11 = j10 / 1000;
        int i10 = (int) (j10 % 1000);
        if (i10 < 0) {
            i10 += 1000;
            j11--;
        }
        return j(j11, i10 * 1000000);
    }

    private static Duration j(long j10, int i10) {
        if ((i10 | j10) == 0) {
            return f8756c;
        }
        return new Duration(j10, i10);
    }

    private Duration(long j10, int i10) {
        this.f8757a = j10;
        this.f8758b = i10;
    }

    public final long m() {
        return this.f8757a;
    }

    public final int k() {
        return this.f8758b;
    }

    public long toMillis() {
        long j10 = this.f8758b;
        long j11 = this.f8757a;
        if (j11 < 0) {
            j11++;
            j10 -= 1000000000;
        }
        return j$.com.android.tools.r8.a.d(j$.com.android.tools.r8.a.j(j11, 1000), j10 / 1000000);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Duration)) {
            return false;
        }
        Duration duration = (Duration) obj;
        return this.f8757a == duration.f8757a && this.f8758b == duration.f8758b;
    }

    public final int hashCode() {
        long j10 = this.f8757a;
        return (this.f8758b * 51) + ((int) (j10 ^ (j10 >>> 32)));
    }

    public final String toString() {
        if (this == f8756c) {
            return "PT0S";
        }
        long j10 = this.f8757a;
        int i10 = this.f8758b;
        long j11 = (j10 >= 0 || i10 <= 0) ? j10 : 1 + j10;
        long j12 = j11 / 3600;
        int i11 = (int) ((j11 % 3600) / 60);
        int i12 = (int) (j11 % 60);
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("PT");
        if (j12 != 0) {
            sb2.append(j12);
            sb2.append('H');
        }
        if (i11 != 0) {
            sb2.append(i11);
            sb2.append('M');
        }
        if (i12 == 0 && i10 == 0 && sb2.length() > 2) {
            return sb2.toString();
        }
        if (j10 < 0 && i10 > 0 && i12 == 0) {
            sb2.append("-0");
        } else {
            sb2.append(i12);
        }
        if (i10 > 0) {
            int length = sb2.length();
            if (j10 < 0) {
                sb2.append(2000000000 - i10);
            } else {
                sb2.append(i10 + 1000000000);
            }
            while (sb2.charAt(sb2.length() - 1) == '0') {
                sb2.setLength(sb2.length() - 1);
            }
            sb2.setCharAt(length, '.');
        }
        sb2.append('S');
        return sb2.toString();
    }

    private Object writeReplace() {
        return new r((byte) 1, this);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    final void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeLong(this.f8757a);
        objectOutput.writeInt(this.f8758b);
    }
}

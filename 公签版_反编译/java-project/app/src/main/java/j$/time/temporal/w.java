package j$.time.temporal;

import j$.time.DateTimeException;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class w implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* renamed from: a, reason: collision with root package name */
    private final long f8946a;

    /* renamed from: b, reason: collision with root package name */
    private final long f8947b;

    /* renamed from: c, reason: collision with root package name */
    private final long f8948c;

    /* renamed from: d, reason: collision with root package name */
    private final long f8949d;

    public static w j(long j10, long j11) {
        if (j10 > j11) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new w(j10, j10, j11, j11);
    }

    public static w k(long j10, long j11) {
        if (j10 > j11) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 > j11) {
            throw new IllegalArgumentException("Minimum value must be less than maximum value");
        }
        return new w(1L, 1L, j10, j11);
    }

    private w(long j10, long j11, long j12, long j13) {
        this.f8946a = j10;
        this.f8947b = j11;
        this.f8948c = j12;
        this.f8949d = j13;
    }

    public final boolean g() {
        return this.f8946a == this.f8947b && this.f8948c == this.f8949d;
    }

    public final long e() {
        return this.f8946a;
    }

    public final long f() {
        return this.f8948c;
    }

    public final long d() {
        return this.f8949d;
    }

    public final boolean h() {
        return this.f8946a >= -2147483648L && this.f8949d <= 2147483647L;
    }

    public final boolean i(long j10) {
        return j10 >= this.f8946a && j10 <= this.f8949d;
    }

    public final int a(long j10, r rVar) {
        if (h() && i(j10)) {
            return (int) j10;
        }
        throw new DateTimeException(c(j10, rVar));
    }

    public final void b(long j10, r rVar) {
        if (!i(j10)) {
            throw new DateTimeException(c(j10, rVar));
        }
    }

    private String c(long j10, r rVar) {
        if (rVar != null) {
            return "Invalid value for " + rVar + " (valid values " + this + "): " + j10;
        }
        return "Invalid value (valid values " + this + "): " + j10;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        long j10 = this.f8946a;
        long j11 = this.f8947b;
        if (j10 > j11) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j12 = this.f8948c;
        long j13 = this.f8949d;
        if (j12 > j13) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j11 > j13) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.f8946a == wVar.f8946a && this.f8947b == wVar.f8947b && this.f8948c == wVar.f8948c && this.f8949d == wVar.f8949d;
    }

    public final int hashCode() {
        long j10 = this.f8947b;
        long j11 = this.f8946a + (j10 << 16) + (j10 >> 48);
        long j12 = this.f8948c;
        long j13 = j11 + (j12 << 32) + (j12 >> 32);
        long j14 = this.f8949d;
        long j15 = j13 + (j14 << 48) + (j14 >> 16);
        return (int) ((j15 >>> 32) ^ j15);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        long j10 = this.f8946a;
        sb2.append(j10);
        long j11 = this.f8947b;
        if (j10 != j11) {
            sb2.append('/');
            sb2.append(j11);
        }
        sb2.append(" - ");
        long j12 = this.f8948c;
        sb2.append(j12);
        long j13 = this.f8949d;
        if (j12 != j13) {
            sb2.append('/');
            sb2.append(j13);
        }
        return sb2.toString();
    }
}

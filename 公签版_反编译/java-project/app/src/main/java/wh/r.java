package wh;

import java.io.Serializable;

/* loaded from: classes3.dex */
public final class r implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final long f17933a;

    /* renamed from: b, reason: collision with root package name */
    public final long f17934b;

    /* renamed from: c, reason: collision with root package name */
    public final long f17935c;

    /* renamed from: d, reason: collision with root package name */
    public final long f17936d;

    public r(long j10, long j11, long j12, long j13) {
        this.f17933a = j10;
        this.f17934b = j11;
        this.f17935c = j12;
        this.f17936d = j13;
    }

    public static r c(long j10, long j11) {
        if (j10 <= j11) {
            return new r(j10, j10, j11, j11);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public static r d(long j10, long j11) {
        if (j10 > j11) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 <= j11) {
            return new r(1L, 1L, j10, j11);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public final int a(long j10, m mVar) {
        long j11 = this.f17933a;
        if (j11 >= -2147483648L) {
            long j12 = this.f17936d;
            if (j12 <= 2147483647L && j10 >= j11 && j10 <= j12) {
                return (int) j10;
            }
        }
        throw new sh.a("Invalid int value for " + mVar + ": " + j10);
    }

    public final void b(long j10, m mVar) {
        if (j10 < this.f17933a || j10 > this.f17936d) {
            if (mVar == null) {
                throw new sh.a("Invalid value (valid values " + this + "): " + j10);
            }
            throw new sh.a("Invalid value for " + mVar + " (valid values " + this + "): " + j10);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f17933a == rVar.f17933a && this.f17934b == rVar.f17934b && this.f17935c == rVar.f17935c && this.f17936d == rVar.f17936d;
    }

    public final int hashCode() {
        long j10 = this.f17933a;
        long j11 = this.f17934b;
        long j12 = (j10 + j11) << ((int) (j11 + 16));
        long j13 = this.f17935c;
        long j14 = (j12 >> ((int) (j13 + 48))) << ((int) (j13 + 32));
        long j15 = this.f17936d;
        long j16 = ((j14 >> ((int) (32 + j15))) << ((int) (j15 + 48))) >> 16;
        return (int) (j16 ^ (j16 >>> 32));
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        long j10 = this.f17933a;
        sb2.append(j10);
        long j11 = this.f17934b;
        if (j10 != j11) {
            sb2.append('/');
            sb2.append(j11);
        }
        sb2.append(" - ");
        long j12 = this.f17935c;
        sb2.append(j12);
        long j13 = this.f17936d;
        if (j12 != j13) {
            sb2.append('/');
            sb2.append(j13);
        }
        return sb2.toString();
    }
}

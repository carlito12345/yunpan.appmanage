package u1;

import java.math.RoundingMode;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public long f15200a;

    /* renamed from: b, reason: collision with root package name */
    public long f15201b;

    /* renamed from: c, reason: collision with root package name */
    public long f15202c;

    /* renamed from: d, reason: collision with root package name */
    public final ThreadLocal f15203d = new ThreadLocal();

    public d0(long j10) {
        g(j10);
    }

    public final synchronized long a(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!f()) {
                long jLongValue = this.f15200a;
                if (jLongValue == 9223372036854775806L) {
                    Long l = (Long) this.f15203d.get();
                    l.getClass();
                    jLongValue = l.longValue();
                }
                this.f15201b = jLongValue - j10;
                notifyAll();
            }
            this.f15202c = j10;
            return j10 + this.f15201b;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized long b(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j11 = this.f15202c;
            if (j11 != -9223372036854775807L) {
                String str = f0.f15206a;
                long jM = f0.M(j11, 90000L, 1000000L, RoundingMode.DOWN);
                long j12 = (4294967296L + jM) / 8589934592L;
                long j13 = ((j12 - 1) * 8589934592L) + j10;
                long j14 = (j12 * 8589934592L) + j10;
                j10 = Math.abs(j13 - jM) < Math.abs(j14 - jM) ? j13 : j14;
            }
            long j15 = j10;
            String str2 = f0.f15206a;
            return a(f0.M(j15, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized long c(long j10) {
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j11 = this.f15202c;
        if (j11 != -9223372036854775807L) {
            String str = f0.f15206a;
            long jM = f0.M(j11, 90000L, 1000000L, RoundingMode.DOWN);
            long j12 = jM / 8589934592L;
            Long.signum(j12);
            long j13 = (j12 * 8589934592L) + j10;
            j10 = j13 >= jM ? j13 : ((j12 + 1) * 8589934592L) + j10;
        }
        long j14 = j10;
        String str2 = f0.f15206a;
        return a(f0.M(j14, 1000000L, 90000L, RoundingMode.DOWN));
    }

    public final synchronized long d() {
        long j10;
        j10 = this.f15200a;
        if (j10 == Long.MAX_VALUE || j10 == 9223372036854775806L) {
            j10 = -9223372036854775807L;
        }
        return j10;
    }

    public final synchronized long e() {
        return this.f15201b;
    }

    public final synchronized boolean f() {
        return this.f15201b != -9223372036854775807L;
    }

    public final synchronized void g(long j10) {
        this.f15200a = j10;
        this.f15201b = j10 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f15202c = -9223372036854775807L;
    }
}

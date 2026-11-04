package e3;

import android.util.Pair;
import l2.b0;
import l2.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class c implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long[] f4724a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f4725b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4726c;

    public c(long j10, long[] jArr, long[] jArr2) {
        this.f4724a = jArr;
        this.f4725b = jArr2;
        this.f4726c = j10 == -9223372036854775807L ? f0.G(jArr2[jArr2.length - 1]) : j10;
    }

    public static Pair i(long j10, long[] jArr, long[] jArr2) {
        double d10;
        int iD = f0.d(jArr, j10, true);
        long j11 = jArr[iD];
        long j12 = jArr2[iD];
        int i10 = iD + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        long j14 = jArr2[i10];
        if (j13 == j11) {
            d10 = 0.0d;
        } else {
            double d11 = j10;
            double d12 = j11;
            Double.isNaN(d11);
            Double.isNaN(d12);
            double d13 = j13 - j11;
            Double.isNaN(d13);
            d10 = (d11 - d12) / d13;
        }
        double d14 = j14 - j12;
        Double.isNaN(d14);
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) (d10 * d14)) + j12));
    }

    @Override // e3.i
    public final long a() {
        return -1L;
    }

    @Override // e3.i
    public final long b() {
        return 0L;
    }

    @Override // l2.c0
    public final boolean c() {
        return true;
    }

    @Override // e3.i
    public final long d(long j10) {
        return f0.G(((Long) i(j10, this.f4724a, this.f4725b).second).longValue());
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        Pair pairI = i(f0.R(f0.h(j10, 0L, this.f4726c)), this.f4725b, this.f4724a);
        d0 d0Var = new d0(f0.G(((Long) pairI.first).longValue()), ((Long) pairI.second).longValue());
        return new b0(d0Var, d0Var);
    }

    @Override // e3.i
    public final int g() {
        return -2147483647;
    }

    @Override // l2.c0
    public final long h() {
        return this.f4726c;
    }
}

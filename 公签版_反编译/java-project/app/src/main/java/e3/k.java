package e3;

import l2.b0;
import l2.d0;
import u1.f0;

/* loaded from: classes.dex */
public final class k implements i {

    /* renamed from: a, reason: collision with root package name */
    public final long f4760a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4761b;

    /* renamed from: c, reason: collision with root package name */
    public final long f4762c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4763d;

    /* renamed from: e, reason: collision with root package name */
    public final long f4764e;

    /* renamed from: f, reason: collision with root package name */
    public final long f4765f;

    /* renamed from: g, reason: collision with root package name */
    public final long[] f4766g;

    public k(long j10, int i10, long j11, int i11, long j12, long[] jArr) {
        this.f4760a = j10;
        this.f4761b = i10;
        this.f4762c = j11;
        this.f4763d = i11;
        this.f4764e = j12;
        this.f4766g = jArr;
        this.f4765f = j12 != -1 ? j10 + j12 : -1L;
    }

    @Override // e3.i
    public final long a() {
        return this.f4765f;
    }

    @Override // e3.i
    public final long b() {
        return this.f4760a + this.f4761b;
    }

    @Override // l2.c0
    public final boolean c() {
        return this.f4766g != null;
    }

    @Override // e3.i
    public final long d(long j10) {
        double d10;
        long j11 = j10 - this.f4760a;
        if (!c() || j11 <= this.f4761b) {
            return 0L;
        }
        long[] jArr = this.f4766g;
        jArr.getClass();
        double d11 = j11;
        Double.isNaN(d11);
        double d12 = this.f4764e;
        Double.isNaN(d12);
        double d13 = (d11 * 256.0d) / d12;
        int iD = f0.d(jArr, (long) d13, true);
        long j12 = this.f4762c;
        long j13 = (iD * j12) / 100;
        long j14 = jArr[iD];
        int i10 = iD + 1;
        long j15 = (j12 * i10) / 100;
        long j16 = iD == 99 ? 256L : jArr[i10];
        if (j14 == j16) {
            d10 = 0.0d;
        } else {
            double d14 = j14;
            Double.isNaN(d14);
            double d15 = j16 - j14;
            Double.isNaN(d15);
            d10 = (d13 - d14) / d15;
        }
        double d16 = j15 - j13;
        Double.isNaN(d16);
        return Math.round(d10 * d16) + j13;
    }

    @Override // l2.c0
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        double d10;
        boolean zC = c();
        int i10 = this.f4761b;
        long j11 = this.f4760a;
        if (!zC) {
            d0 d0Var = new d0(0L, j11 + i10);
            return new b0(d0Var, d0Var);
        }
        long jH = f0.h(j10, 0L, this.f4762c);
        double d11 = jH;
        Double.isNaN(d11);
        double d12 = this.f4762c;
        Double.isNaN(d12);
        double d13 = (d11 * 100.0d) / d12;
        double d14 = 0.0d;
        if (d13 <= 0.0d) {
            d10 = 256.0d;
        } else if (d13 >= 100.0d) {
            d10 = 256.0d;
            d14 = 256.0d;
        } else {
            int i11 = (int) d13;
            long[] jArr = this.f4766g;
            jArr.getClass();
            double d15 = jArr[i11];
            double d16 = i11 == 99 ? 256.0d : jArr[i11 + 1];
            double d17 = i11;
            Double.isNaN(d17);
            Double.isNaN(d15);
            Double.isNaN(d15);
            d14 = ((d16 - d15) * (d13 - d17)) + d15;
            d10 = 256.0d;
        }
        double d18 = d14 / d10;
        long j12 = this.f4764e;
        double d19 = j12;
        Double.isNaN(d19);
        d0 d0Var2 = new d0(jH, j11 + f0.h(Math.round(d18 * d19), i10, j12 - 1));
        return new b0(d0Var2, d0Var2);
    }

    @Override // e3.i
    public final int g() {
        return this.f4763d;
    }

    @Override // l2.c0
    public final long h() {
        return this.f4762c;
    }
}

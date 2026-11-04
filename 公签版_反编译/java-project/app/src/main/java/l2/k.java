package l2;

/* loaded from: classes.dex */
public class k implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f10481a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10482b;

    /* renamed from: c, reason: collision with root package name */
    public final int f10483c;

    /* renamed from: d, reason: collision with root package name */
    public final long f10484d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10485e;

    /* renamed from: f, reason: collision with root package name */
    public final long f10486f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f10487g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f10488h;

    public k(long j10, long j11, int i10, int i11, boolean z, boolean z4) {
        this.f10481a = j10;
        this.f10482b = j11;
        this.f10483c = i11 == -1 ? 1 : i11;
        this.f10485e = i10;
        this.f10487g = z;
        this.f10488h = z4;
        if (j10 == -1) {
            this.f10484d = -1L;
            this.f10486f = -9223372036854775807L;
        } else {
            long j12 = j10 - j11;
            this.f10484d = j12;
            this.f10486f = (Math.max(0L, j12) * 8000000) / i10;
        }
    }

    @Override // l2.c0
    public final boolean c() {
        return this.f10484d != -1 || this.f10487g;
    }

    @Override // l2.c0
    public final boolean e() {
        return this.f10488h;
    }

    @Override // l2.c0
    public final b0 f(long j10) {
        long j11 = this.f10482b;
        long j12 = this.f10484d;
        if (j12 == -1 && !this.f10487g) {
            d0 d0Var = new d0(0L, j11);
            return new b0(d0Var, d0Var);
        }
        int i10 = this.f10485e;
        long j13 = this.f10483c;
        long jMin = (((i10 * j10) / 8000000) / j13) * j13;
        if (j12 != -1) {
            jMin = Math.min(jMin, j12 - j13);
        }
        long jMax = Math.max(jMin, 0L) + j11;
        long jMax2 = (Math.max(0L, jMax - j11) * 8000000) / i10;
        d0 d0Var2 = new d0(jMax2, jMax);
        if (j12 != -1 && jMax2 < j10) {
            long j14 = jMax + j13;
            if (j14 < this.f10481a) {
                return new b0(d0Var2, new d0((Math.max(0L, j14 - j11) * 8000000) / i10, j14));
            }
        }
        return new b0(d0Var2, d0Var2);
    }

    @Override // l2.c0
    public final long h() {
        return this.f10486f;
    }
}

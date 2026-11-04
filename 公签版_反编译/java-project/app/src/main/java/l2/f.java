package l2;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final long f10457a;

    /* renamed from: b, reason: collision with root package name */
    public final long f10458b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10459c;

    /* renamed from: d, reason: collision with root package name */
    public long f10460d = 0;

    /* renamed from: e, reason: collision with root package name */
    public long f10461e;

    /* renamed from: f, reason: collision with root package name */
    public long f10462f;

    /* renamed from: g, reason: collision with root package name */
    public long f10463g;

    /* renamed from: h, reason: collision with root package name */
    public long f10464h;

    public f(long j10, long j11, long j12, long j13, long j14, long j15) {
        this.f10457a = j10;
        this.f10458b = j11;
        this.f10461e = j12;
        this.f10462f = j13;
        this.f10463g = j14;
        this.f10459c = j15;
        this.f10464h = a(j11, 0L, j12, j13, j14, j15);
    }

    public static long a(long j10, long j11, long j12, long j13, long j14, long j15) {
        if (j13 + 1 >= j14 || j11 + 1 >= j12) {
            return j13;
        }
        long j16 = (long) ((j10 - j11) * ((j14 - j13) / (j12 - j11)));
        return u1.f0.h(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
    }
}

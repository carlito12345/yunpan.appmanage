package b1;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f2493a;

    /* renamed from: b, reason: collision with root package name */
    public int f2494b;

    /* renamed from: c, reason: collision with root package name */
    public float f2495c;

    /* renamed from: d, reason: collision with root package name */
    public float f2496d;

    /* renamed from: h, reason: collision with root package name */
    public float f2500h;

    /* renamed from: i, reason: collision with root package name */
    public int f2501i;

    /* renamed from: e, reason: collision with root package name */
    public long f2497e = Long.MIN_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public long f2499g = -1;

    /* renamed from: f, reason: collision with root package name */
    public long f2498f = 0;

    public final float a(long j10) {
        if (j10 < this.f2497e) {
            return 0.0f;
        }
        long j11 = this.f2499g;
        if (j11 < 0 || j10 < j11) {
            return g.b((j10 - r0) / this.f2493a, 0.0f, 1.0f) * 0.5f;
        }
        float f10 = this.f2500h;
        return (g.b((j10 - j11) / this.f2501i, 0.0f, 1.0f) * f10) + (1.0f - f10);
    }
}

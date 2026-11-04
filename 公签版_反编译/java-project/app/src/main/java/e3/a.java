package e3;

/* loaded from: classes.dex */
public final class a extends l2.k implements i {

    /* renamed from: i, reason: collision with root package name */
    public final long f4716i;

    /* renamed from: j, reason: collision with root package name */
    public final int f4717j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4718k;
    public final boolean l;

    /* renamed from: m, reason: collision with root package name */
    public final long f4719m;

    public a(long j10, long j11, int i10, int i11, boolean z, boolean z4) {
        super(j10, j11, i10, i11, z, z4);
        this.f4716i = j11;
        this.f4717j = i10;
        this.f4718k = i11;
        this.l = z;
        this.f4719m = j10 == -1 ? -1L : j10;
    }

    @Override // e3.i
    public final long a() {
        return this.f4719m;
    }

    @Override // e3.i
    public final long b() {
        return this.f4716i;
    }

    @Override // e3.i
    public final long d(long j10) {
        return (Math.max(0L, j10 - this.f10482b) * 8000000) / this.f10485e;
    }

    @Override // e3.i
    public final int g() {
        return this.f4717j;
    }
}

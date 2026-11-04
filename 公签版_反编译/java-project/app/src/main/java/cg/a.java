package cg;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public int f3241a = 1;

    /* renamed from: b, reason: collision with root package name */
    public long f3242b;

    /* renamed from: c, reason: collision with root package name */
    public long f3243c;

    /* renamed from: d, reason: collision with root package name */
    public int f3244d;

    /* renamed from: e, reason: collision with root package name */
    public int f3245e;

    /* renamed from: f, reason: collision with root package name */
    public Exception f3246f;

    public final void a(long j10) {
        long j11 = this.f3243c + j10;
        this.f3243c = j11;
        long j12 = this.f3242b;
        if (j12 > 0) {
            int i10 = (int) ((j11 * 100) / j12);
            this.f3244d = i10;
            if (i10 > 100) {
                this.f3244d = 100;
            }
        }
    }
}

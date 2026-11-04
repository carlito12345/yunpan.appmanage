package y1;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final long f18629a;

    /* renamed from: b, reason: collision with root package name */
    public final long f18630b;

    /* renamed from: c, reason: collision with root package name */
    public long f18631c = -9223372036854775807L;

    /* renamed from: d, reason: collision with root package name */
    public long f18632d = -9223372036854775807L;

    /* renamed from: f, reason: collision with root package name */
    public long f18634f = -9223372036854775807L;

    /* renamed from: g, reason: collision with root package name */
    public long f18635g = -9223372036854775807L;

    /* renamed from: j, reason: collision with root package name */
    public float f18638j = 0.97f;

    /* renamed from: i, reason: collision with root package name */
    public float f18637i = 1.03f;

    /* renamed from: k, reason: collision with root package name */
    public float f18639k = 1.0f;
    public long l = -9223372036854775807L;

    /* renamed from: e, reason: collision with root package name */
    public long f18633e = -9223372036854775807L;

    /* renamed from: h, reason: collision with root package name */
    public long f18636h = -9223372036854775807L;

    /* renamed from: m, reason: collision with root package name */
    public long f18640m = -9223372036854775807L;

    /* renamed from: n, reason: collision with root package name */
    public long f18641n = -9223372036854775807L;

    public e(long j10, long j11) {
        this.f18629a = j10;
        this.f18630b = j11;
    }

    public final void a() {
        long j10;
        long j11 = this.f18631c;
        if (j11 != -9223372036854775807L) {
            j10 = this.f18632d;
            if (j10 == -9223372036854775807L) {
                long j12 = this.f18634f;
                if (j12 != -9223372036854775807L && j11 < j12) {
                    j11 = j12;
                }
                j10 = this.f18635g;
                if (j10 == -9223372036854775807L || j11 <= j10) {
                    j10 = j11;
                }
            }
        } else {
            j10 = -9223372036854775807L;
        }
        if (this.f18633e == j10) {
            return;
        }
        this.f18633e = j10;
        this.f18636h = j10;
        this.f18640m = -9223372036854775807L;
        this.f18641n = -9223372036854775807L;
        this.l = -9223372036854775807L;
    }
}

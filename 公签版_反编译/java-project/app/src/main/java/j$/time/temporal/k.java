package j$.time.temporal;

import j$.time.DateTimeException;

/* loaded from: classes2.dex */
enum k implements r {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);

    private static final long serialVersionUID = -7501623920830201812L;

    /* renamed from: a, reason: collision with root package name */
    private final transient String f8932a;

    /* renamed from: b, reason: collision with root package name */
    private final transient w f8933b;

    /* renamed from: c, reason: collision with root package name */
    private final transient long f8934c;

    @Override // j$.time.temporal.r
    public final boolean v() {
        return true;
    }

    static {
        b bVar = b.NANOS;
    }

    k(String str, long j10) {
        this.f8932a = str;
        this.f8933b = w.j((-365243219162L) + j10, 365241780471L + j10);
        this.f8934c = j10;
    }

    @Override // j$.time.temporal.r
    public final w j() {
        return this.f8933b;
    }

    @Override // j$.time.temporal.r
    public final boolean m(o oVar) {
        return oVar.f(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.r
    public final w s(o oVar) {
        if (!oVar.f(a.EPOCH_DAY)) {
            throw new DateTimeException("Unsupported field: " + this);
        }
        return this.f8933b;
    }

    @Override // j$.time.temporal.r
    public final long k(o oVar) {
        return oVar.s(a.EPOCH_DAY) + this.f8934c;
    }

    @Override // j$.time.temporal.r
    public final m n(m mVar, long j10) {
        if (!this.f8933b.i(j10)) {
            throw new DateTimeException("Invalid value: " + this.f8932a + " " + j10);
        }
        return mVar.d(j$.com.android.tools.r8.a.k(j10, this.f8934c), a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f8932a;
    }
}

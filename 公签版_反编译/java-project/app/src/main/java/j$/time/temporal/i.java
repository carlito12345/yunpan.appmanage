package j$.time.temporal;

import j$.time.Duration;

/* loaded from: classes2.dex */
enum i implements u {
    WEEK_BASED_YEARS("WeekBasedYears"),
    QUARTER_YEARS("QuarterYears");


    /* renamed from: a, reason: collision with root package name */
    private final String f8927a;

    static {
        Duration duration = Duration.f8756c;
    }

    i(String str) {
        this.f8927a = str;
    }

    @Override // j$.time.temporal.u
    public final m j(m mVar, long j10) {
        int i10 = c.f8923a[ordinal()];
        if (i10 == 1) {
            return mVar.d(j$.com.android.tools.r8.a.d(mVar.k(r0), j10), j.f8930c);
        }
        if (i10 == 2) {
            return mVar.e(j10 / 4, b.YEARS).e((j10 % 4) * 3, b.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f8927a;
    }
}

package wh;

/* loaded from: classes3.dex */
public enum b implements p {
    NANOS("Nanos"),
    /* JADX INFO: Fake field, exist only in values array */
    MICROS("Micros"),
    /* JADX INFO: Fake field, exist only in values array */
    MILLIS("Millis"),
    /* JADX INFO: Fake field, exist only in values array */
    SECONDS("Seconds"),
    /* JADX INFO: Fake field, exist only in values array */
    MINUTES("Minutes"),
    /* JADX INFO: Fake field, exist only in values array */
    HOURS("Hours"),
    /* JADX INFO: Fake field, exist only in values array */
    HALF_DAYS("HalfDays"),
    DAYS("Days"),
    WEEKS("Weeks"),
    MONTHS("Months"),
    YEARS("Years"),
    /* JADX INFO: Fake field, exist only in values array */
    DECADES("Decades"),
    /* JADX INFO: Fake field, exist only in values array */
    CENTURIES("Centuries"),
    /* JADX INFO: Fake field, exist only in values array */
    MILLENNIA("Millennia"),
    /* JADX INFO: Fake field, exist only in values array */
    ERAS("Eras"),
    FOREVER("Forever");


    /* renamed from: a, reason: collision with root package name */
    public final String f17917a;

    static {
        sh.c cVar = sh.c.f14573c;
        sh.c.a(p000if.a.D(1000000000, 999999999L), p000if.a.u0(Long.MAX_VALUE, p000if.a.C(999999999L, 1000000000L)));
    }

    b(String str) {
        this.f17917a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f17917a;
    }
}

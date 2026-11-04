package wh;

/* loaded from: classes3.dex */
public enum a implements m {
    NANO_OF_SECOND("NanoOfSecond", r.c(0, 999999999)),
    NANO_OF_DAY("NanoOfDay", r.c(0, 86399999999999L)),
    MICRO_OF_SECOND("MicroOfSecond", r.c(0, 999999)),
    MICRO_OF_DAY("MicroOfDay", r.c(0, 86399999999L)),
    MILLI_OF_SECOND("MilliOfSecond", r.c(0, 999)),
    MILLI_OF_DAY("MilliOfDay", r.c(0, 86399999)),
    SECOND_OF_MINUTE("SecondOfMinute", r.c(0, 59)),
    SECOND_OF_DAY("SecondOfDay", r.c(0, 86399)),
    MINUTE_OF_HOUR("MinuteOfHour", r.c(0, 59)),
    /* JADX INFO: Fake field, exist only in values array */
    MINUTE_OF_DAY("MinuteOfDay", r.c(0, 1439)),
    HOUR_OF_AMPM("HourOfAmPm", r.c(0, 11)),
    CLOCK_HOUR_OF_AMPM("ClockHourOfAmPm", r.c(1, 12)),
    HOUR_OF_DAY("HourOfDay", r.c(0, 23)),
    CLOCK_HOUR_OF_DAY("ClockHourOfDay", r.c(1, 24)),
    AMPM_OF_DAY("AmPmOfDay", r.c(0, 1)),
    DAY_OF_WEEK("DayOfWeek", r.c(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_MONTH("AlignedDayOfWeekInMonth", r.c(1, 7)),
    ALIGNED_DAY_OF_WEEK_IN_YEAR("AlignedDayOfWeekInYear", r.c(1, 7)),
    DAY_OF_MONTH("DayOfMonth", r.d(28, 31)),
    DAY_OF_YEAR("DayOfYear", r.d(365, 366)),
    EPOCH_DAY("EpochDay", r.c(-365243219162L, 365241780471L)),
    ALIGNED_WEEK_OF_MONTH("AlignedWeekOfMonth", r.d(4, 5)),
    ALIGNED_WEEK_OF_YEAR("AlignedWeekOfYear", r.c(1, 53)),
    MONTH_OF_YEAR("MonthOfYear", r.c(1, 12)),
    PROLEPTIC_MONTH("ProlepticMonth", r.c(-11999999988L, 11999999999L)),
    YEAR_OF_ERA("YearOfEra", r.d(999999999, 1000000000)),
    YEAR("Year", r.c(-999999999, 999999999)),
    ERA("Era", r.c(0, 1)),
    INSTANT_SECONDS("InstantSeconds", r.c(Long.MIN_VALUE, Long.MAX_VALUE)),
    OFFSET_SECONDS("OffsetSeconds", r.c(-64800, 64800));


    /* renamed from: a, reason: collision with root package name */
    public final String f17908a;

    /* renamed from: b, reason: collision with root package name */
    public final r f17909b;

    static {
        b bVar = b.NANOS;
    }

    a(String str, r rVar) {
        this.f17908a = str;
        this.f17909b = rVar;
    }

    @Override // wh.m
    public final long a(k kVar) {
        return kVar.b(this);
    }

    @Override // wh.m
    public final boolean b() {
        return ordinal() >= DAY_OF_WEEK.ordinal() && ordinal() <= ERA.ordinal();
    }

    @Override // wh.m
    public final r c(k kVar) {
        return kVar.f(this);
    }

    @Override // wh.m
    public final r d() {
        return this.f17909b;
    }

    @Override // wh.m
    public final boolean f(k kVar) {
        return kVar.d(this);
    }

    @Override // wh.m
    public final j g(j jVar, long j10) {
        return jVar.a(j10, this);
    }

    public final void h(long j10) {
        this.f17909b.b(j10, this);
    }

    public final boolean i() {
        return ordinal() < DAY_OF_WEEK.ordinal();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f17908a;
    }
}

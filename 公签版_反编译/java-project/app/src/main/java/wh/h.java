package wh;

/* loaded from: classes3.dex */
public enum h implements p {
    /* JADX INFO: Fake field, exist only in values array */
    WEEK_BASED_YEARS("WeekBasedYears"),
    /* JADX INFO: Fake field, exist only in values array */
    QUARTER_YEARS("QuarterYears");


    /* renamed from: a, reason: collision with root package name */
    public final String f17924a;

    static {
        sh.c cVar = sh.c.f14573c;
    }

    h(String str) {
        this.f17924a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f17924a;
    }
}

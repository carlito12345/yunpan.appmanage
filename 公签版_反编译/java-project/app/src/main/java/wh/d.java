package wh;

/* loaded from: classes3.dex */
public enum d extends g {
    public d() {
        super("QUARTER_OF_YEAR", 1);
    }

    @Override // wh.m
    public final long a(k kVar) {
        if (kVar.d(this)) {
            return (kVar.b(a.MONTH_OF_YEAR) + 2) / 3;
        }
        throw new q("Unsupported field: QuarterOfYear");
    }

    @Override // wh.m
    public final r d() {
        return r.c(1L, 4L);
    }

    @Override // wh.m
    public final boolean f(k kVar) {
        return kVar.d(a.MONTH_OF_YEAR) && th.d.a(kVar).equals(th.e.f15102a);
    }

    @Override // wh.m
    public final j g(j jVar, long j10) {
        long jA = a(jVar);
        d().b(j10, this);
        a aVar = a.MONTH_OF_YEAR;
        return jVar.a(((j10 - jA) * 3) + jVar.b(aVar), aVar);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "QuarterOfYear";
    }
}

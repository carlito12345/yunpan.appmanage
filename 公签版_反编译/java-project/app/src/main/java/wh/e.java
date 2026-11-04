package wh;

/* loaded from: classes3.dex */
public enum e extends g {
    public e() {
        super("WEEK_OF_WEEK_BASED_YEAR", 2);
    }

    @Override // wh.m
    public final long a(k kVar) {
        if (kVar.d(this)) {
            return g.h(sh.e.q(kVar));
        }
        throw new q("Unsupported field: WeekOfWeekBasedYear");
    }

    @Override // wh.g, wh.m
    public final r c(k kVar) {
        if (kVar.d(this)) {
            return r.c(1L, g.j(g.i(sh.e.q(kVar))));
        }
        throw new q("Unsupported field: WeekOfWeekBasedYear");
    }

    @Override // wh.m
    public final r d() {
        return r.d(52L, 53L);
    }

    @Override // wh.m
    public final boolean f(k kVar) {
        return kVar.d(a.EPOCH_DAY) && th.d.a(kVar).equals(th.e.f15102a);
    }

    @Override // wh.m
    public final j g(j jVar, long j10) {
        d().b(j10, this);
        long jA = a(jVar);
        long j11 = j10 - jA;
        if ((j10 ^ j11) >= 0 || (j10 ^ jA) >= 0) {
            return jVar.j(j11, b.WEEKS);
        }
        StringBuilder sbW = android.support.v4.media.session.a.w(j10, "Subtraction overflows a long: ", " - ");
        sbW.append(jA);
        throw new ArithmeticException(sbW.toString());
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "WeekOfWeekBasedYear";
    }
}

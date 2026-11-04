package wh;

/* loaded from: classes3.dex */
public enum f extends g {
    public f() {
        super("WEEK_BASED_YEAR", 3);
    }

    @Override // wh.m
    public final long a(k kVar) {
        if (kVar.d(this)) {
            return g.i(sh.e.q(kVar));
        }
        throw new q("Unsupported field: WeekBasedYear");
    }

    @Override // wh.g, wh.m
    public final r c(k kVar) {
        return a.YEAR.f17909b;
    }

    @Override // wh.m
    public final r d() {
        return a.YEAR.f17909b;
    }

    @Override // wh.m
    public final boolean f(k kVar) {
        return kVar.d(a.EPOCH_DAY) && th.d.a(kVar).equals(th.e.f15102a);
    }

    @Override // wh.m
    public final j g(j jVar, long j10) {
        if (!f(jVar)) {
            throw new q("Unsupported field: WeekBasedYear");
        }
        int iA = a.YEAR.f17909b.a(j10, g.f17920c);
        sh.e eVarQ = sh.e.q(jVar);
        int i10 = eVarQ.i(a.DAY_OF_WEEK);
        int iH = g.h(eVarQ);
        if (iH == 53 && g.j(iA) == 52) {
            iH = 52;
        }
        return jVar.h(sh.e.v(iA, 1, 4).y(((iH - 1) * 7) + (i10 - r6.i(r0))));
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "WeekBasedYear";
    }
}

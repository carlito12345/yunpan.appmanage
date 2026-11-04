package sh;

/* loaded from: classes3.dex */
public enum b implements wh.k, wh.l {
    /* JADX INFO: Fake field, exist only in values array */
    MONDAY,
    /* JADX INFO: Fake field, exist only in values array */
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    /* JADX INFO: Fake field, exist only in values array */
    FRIDAY,
    /* JADX INFO: Fake field, exist only in values array */
    SATURDAY,
    /* JADX INFO: Fake field, exist only in values array */
    SUNDAY;


    /* renamed from: c, reason: collision with root package name */
    public static final b[] f14571c = values();

    public static b n(int i10) {
        if (i10 < 1 || i10 > 7) {
            throw new a(da.b.a(i10, "Invalid value for DayOfWeek: "));
        }
        return f14571c[i10 - 1];
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        if (mVar == wh.a.DAY_OF_WEEK) {
            return m();
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.a(this);
    }

    @Override // wh.k
    public final Object c(wh.o oVar) {
        if (oVar == wh.n.f17928c) {
            return wh.b.DAYS;
        }
        if (oVar == wh.n.f17931f || oVar == wh.n.f17932g || oVar == wh.n.f17927b || oVar == wh.n.f17929d || oVar == wh.n.f17926a || oVar == wh.n.f17930e) {
            return null;
        }
        return oVar.b(this);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        return mVar instanceof wh.a ? mVar == wh.a.DAY_OF_WEEK : mVar != null && mVar.f(this);
    }

    @Override // wh.k
    public final wh.r f(wh.m mVar) {
        if (mVar == wh.a.DAY_OF_WEEK) {
            return mVar.d();
        }
        if (mVar instanceof wh.a) {
            throw new wh.q(org.bouncycastle.jcajce.provider.digest.a.f("Unsupported field: ", mVar));
        }
        return mVar.c(this);
    }

    @Override // wh.l
    public final wh.j g(wh.j jVar) {
        return jVar.a(m(), wh.a.DAY_OF_WEEK);
    }

    @Override // wh.k
    public final int i(wh.m mVar) {
        return mVar == wh.a.DAY_OF_WEEK ? m() : f(mVar).a(b(mVar), mVar);
    }

    public final int m() {
        return ordinal() + 1;
    }
}

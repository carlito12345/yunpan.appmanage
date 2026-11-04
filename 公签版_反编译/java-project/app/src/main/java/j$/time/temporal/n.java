package j$.time.temporal;

import j$.time.AbstractC0010a;
import j$.time.DateTimeException;
import j$.util.Objects;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class n {

    /* renamed from: a, reason: collision with root package name */
    static final t f8936a = new s(0);

    /* renamed from: b, reason: collision with root package name */
    static final t f8937b = new s(1);

    /* renamed from: c, reason: collision with root package name */
    static final t f8938c = new s(2);

    /* renamed from: d, reason: collision with root package name */
    static final t f8939d = new s(3);

    /* renamed from: e, reason: collision with root package name */
    static final t f8940e = new s(4);

    /* renamed from: f, reason: collision with root package name */
    static final t f8941f = new s(5);

    /* renamed from: g, reason: collision with root package name */
    static final t f8942g = new s(6);

    public static t k() {
        return f8936a;
    }

    public static w d(o oVar, r rVar) {
        if (!(rVar instanceof a)) {
            Objects.requireNonNull(rVar, "field");
            return rVar.s(oVar);
        }
        if (oVar.f(rVar)) {
            return ((a) rVar).j();
        }
        throw new v(AbstractC0010a.a("Unsupported field: ", rVar));
    }

    public static t e() {
        return f8937b;
    }

    public static int a(o oVar, r rVar) {
        w wVarN = oVar.n(rVar);
        if (!wVarN.h()) {
            throw new v("Invalid field " + rVar + " for get() method, use getLong() instead");
        }
        long jS = oVar.s(rVar);
        if (wVarN.i(jS)) {
            return (int) jS;
        }
        throw new DateTimeException("Invalid value for " + rVar + " (valid values " + wVarN + "): " + jS);
    }

    public static t i() {
        return f8938c;
    }

    public static t j() {
        return f8940e;
    }

    public static t h() {
        return f8939d;
    }

    public static Object c(o oVar, t tVar) {
        if (tVar == f8936a || tVar == f8937b || tVar == f8938c) {
            return null;
        }
        return tVar.a(oVar);
    }

    public static t f() {
        return f8941f;
    }

    public static t g() {
        return f8942g;
    }

    public static m b(m mVar, long j10, u uVar) {
        long j11;
        if (j10 == Long.MIN_VALUE) {
            mVar = mVar.e(Long.MAX_VALUE, uVar);
            j11 = 1;
        } else {
            j11 = -j10;
        }
        return mVar.e(j11, uVar);
    }
}

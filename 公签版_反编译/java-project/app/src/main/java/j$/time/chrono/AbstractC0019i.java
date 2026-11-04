package j$.time.chrono;

import j$.time.AbstractC0010a;
import j$.util.Objects;

/* renamed from: j$.time.chrono.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract /* synthetic */ class AbstractC0019i {
    public static boolean i(o oVar, j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? rVar == j$.time.temporal.a.ERA : rVar != null && rVar.m(oVar);
    }

    public static n p(j$.time.temporal.o oVar) {
        Objects.requireNonNull(oVar, "temporal");
        Object objRequireNonNull = (n) oVar.v(j$.time.temporal.n.e());
        u uVar = u.f8817d;
        if (objRequireNonNull == null) {
            objRequireNonNull = Objects.requireNonNull(uVar, "defaultObj");
        }
        return (n) objRequireNonNull;
    }

    public static int e(InterfaceC0021k interfaceC0021k, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            int i10 = AbstractC0020j.f8794a[((j$.time.temporal.a) rVar).ordinal()];
            if (i10 == 1) {
                throw new j$.time.temporal.v("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
            }
            if (i10 == 2) {
                return interfaceC0021k.g().I();
            }
            return interfaceC0021k.y().k(rVar);
        }
        return j$.time.temporal.n.a(interfaceC0021k, rVar);
    }

    public static int f(o oVar, j$.time.temporal.a aVar) {
        if (aVar == j$.time.temporal.a.ERA) {
            return oVar.getValue();
        }
        return j$.time.temporal.n.a(oVar, aVar);
    }

    public static long g(o oVar, j$.time.temporal.r rVar) {
        if (rVar == j$.time.temporal.a.ERA) {
            return oVar.getValue();
        }
        if (rVar instanceof j$.time.temporal.a) {
            throw new j$.time.temporal.v(AbstractC0010a.a("Unsupported field: ", rVar));
        }
        return rVar.k(oVar);
    }

    public static Object m(o oVar, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.ERAS;
        }
        return j$.time.temporal.n.c(oVar, tVar);
    }

    public static Object k(InterfaceC0015e interfaceC0015e, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.k() || tVar == j$.time.temporal.n.j() || tVar == j$.time.temporal.n.h()) {
            return null;
        }
        if (tVar == j$.time.temporal.n.g()) {
            return interfaceC0015e.b();
        }
        if (tVar == j$.time.temporal.n.e()) {
            return interfaceC0015e.a();
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        return tVar.a(interfaceC0015e);
    }

    public static boolean h(InterfaceC0012b interfaceC0012b, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            return ((j$.time.temporal.a) rVar).v();
        }
        return rVar != null && rVar.m(interfaceC0012b);
    }

    public static long n(InterfaceC0015e interfaceC0015e, j$.time.x xVar) {
        Objects.requireNonNull(xVar, "offset");
        return ((interfaceC0015e.c().t() * 86400) + interfaceC0015e.b().T()) - xVar.I();
    }

    public static Object l(InterfaceC0021k interfaceC0021k, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.j() || tVar == j$.time.temporal.n.k()) {
            return interfaceC0021k.q();
        }
        if (tVar == j$.time.temporal.n.h()) {
            return interfaceC0021k.g();
        }
        if (tVar == j$.time.temporal.n.g()) {
            return interfaceC0021k.b();
        }
        if (tVar == j$.time.temporal.n.e()) {
            return interfaceC0021k.a();
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.NANOS;
        }
        return tVar.a(interfaceC0021k);
    }

    public static int c(InterfaceC0015e interfaceC0015e, InterfaceC0015e interfaceC0015e2) {
        int iCompareTo = interfaceC0015e.c().compareTo(interfaceC0015e2.c());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int iC = interfaceC0015e.b().compareTo(interfaceC0015e2.b());
        if (iC != 0) {
            return iC;
        }
        return ((AbstractC0011a) interfaceC0015e.a()).i().compareTo(interfaceC0015e2.a().i());
    }

    public static Object j(InterfaceC0012b interfaceC0012b, j$.time.temporal.t tVar) {
        if (tVar == j$.time.temporal.n.k() || tVar == j$.time.temporal.n.j() || tVar == j$.time.temporal.n.h() || tVar == j$.time.temporal.n.g()) {
            return null;
        }
        if (tVar == j$.time.temporal.n.e()) {
            return interfaceC0012b.a();
        }
        if (tVar == j$.time.temporal.n.i()) {
            return j$.time.temporal.b.DAYS;
        }
        return tVar.a(interfaceC0012b);
    }

    public static j$.time.temporal.m a(InterfaceC0012b interfaceC0012b, j$.time.temporal.m mVar) {
        return mVar.d(interfaceC0012b.t(), j$.time.temporal.a.EPOCH_DAY);
    }

    public static long o(InterfaceC0021k interfaceC0021k) {
        return ((interfaceC0021k.c().t() * 86400) + interfaceC0021k.b().T()) - interfaceC0021k.g().I();
    }

    public static int d(InterfaceC0021k interfaceC0021k, InterfaceC0021k interfaceC0021k2) {
        int i10 = (interfaceC0021k.B() > interfaceC0021k2.B() ? 1 : (interfaceC0021k.B() == interfaceC0021k2.B() ? 0 : -1));
        if (i10 != 0) {
            return i10;
        }
        int iH = interfaceC0021k.b().H() - interfaceC0021k2.b().H();
        if (iH != 0) {
            return iH;
        }
        int iX = interfaceC0021k.y().compareTo(interfaceC0021k2.y());
        if (iX != 0) {
            return iX;
        }
        int iCompareTo = interfaceC0021k.q().i().compareTo(interfaceC0021k2.q().i());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        return ((AbstractC0011a) interfaceC0021k.a()).i().compareTo(interfaceC0021k2.a().i());
    }

    public static int b(InterfaceC0012b interfaceC0012b, InterfaceC0012b interfaceC0012b2) {
        int i10 = (interfaceC0012b.t() > interfaceC0012b2.t() ? 1 : (interfaceC0012b.t() == interfaceC0012b2.t() ? 0 : -1));
        if (i10 != 0) {
            return i10;
        }
        return ((AbstractC0011a) interfaceC0012b.a()).i().compareTo(interfaceC0012b2.a().i());
    }
}

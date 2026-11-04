package y1;

import android.util.Pair;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: c, reason: collision with root package name */
    public final z1.e f18772c;

    /* renamed from: d, reason: collision with root package name */
    public final u1.b0 f18773d;

    /* renamed from: e, reason: collision with root package name */
    public final y f18774e;

    /* renamed from: f, reason: collision with root package name */
    public long f18775f;

    /* renamed from: g, reason: collision with root package name */
    public int f18776g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18777h;

    /* renamed from: i, reason: collision with root package name */
    public l0 f18778i;

    /* renamed from: j, reason: collision with root package name */
    public l0 f18779j;

    /* renamed from: k, reason: collision with root package name */
    public l0 f18780k;
    public l0 l;

    /* renamed from: m, reason: collision with root package name */
    public l0 f18781m;

    /* renamed from: n, reason: collision with root package name */
    public int f18782n;

    /* renamed from: o, reason: collision with root package name */
    public Object f18783o;

    /* renamed from: p, reason: collision with root package name */
    public long f18784p;

    /* renamed from: a, reason: collision with root package name */
    public final r1.o0 f18770a = new r1.o0();

    /* renamed from: b, reason: collision with root package name */
    public final r1.p0 f18771b = new r1.p0();

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f18785q = new ArrayList();

    public n0(z1.e eVar, u1.b0 b0Var, y yVar, n nVar) {
        this.f18772c = eVar;
        this.f18773d = b0Var;
        this.f18774e = yVar;
    }

    public static f2.c0 o(r1.q0 q0Var, Object obj, long j10, long j11, r1.p0 p0Var, r1.o0 o0Var) {
        q0Var.g(obj, o0Var);
        q0Var.n(o0Var.f13505c, p0Var);
        q0Var.b(obj);
        int i10 = o0Var.f13509g.f13424a;
        if (i10 != 0) {
            if (i10 == 1) {
                o0Var.f(0);
            }
            o0Var.f13509g.getClass();
            o0Var.g(0);
        }
        q0Var.g(obj, o0Var);
        int iC = o0Var.c(j10);
        return iC == -1 ? new f2.c0(o0Var.b(j10), j11, obj) : new f2.c0(obj, iC, o0Var.e(iC), j11, -1);
    }

    public final l0 a() {
        l0 l0Var = this.f18778i;
        if (l0Var == null) {
            return null;
        }
        if (l0Var == this.f18779j) {
            this.f18779j = l0Var.f18731m;
        }
        if (l0Var == this.f18780k) {
            this.f18780k = l0Var.f18731m;
        }
        l0Var.i();
        int i10 = this.f18782n - 1;
        this.f18782n = i10;
        if (i10 == 0) {
            this.l = null;
            l0 l0Var2 = this.f18778i;
            this.f18783o = l0Var2.f18721b;
            this.f18784p = l0Var2.f18726g.f18758a.f5239d;
        }
        this.f18778i = this.f18778i.f18731m;
        l();
        return this.f18778i;
    }

    public final void b() {
        if (this.f18782n == 0) {
            return;
        }
        l0 l0Var = this.f18778i;
        l0Var.getClass();
        this.f18783o = l0Var.f18721b;
        this.f18784p = l0Var.f18726g.f18758a.f5239d;
        while (l0Var != null) {
            l0Var.i();
            l0Var = l0Var.f18731m;
        }
        this.f18778i = null;
        this.l = null;
        this.f18779j = null;
        this.f18780k = null;
        this.f18782n = 0;
        l();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final m0 c(r1.q0 q0Var, l0 l0Var, long j10) {
        m0 m0VarF;
        boolean z;
        long j11;
        long j12;
        long j13;
        Pair pairJ;
        r1.o0 o0Var;
        long j14;
        long j15;
        long jMax;
        Pair pairJ2;
        m0 m0Var = l0Var.f18726g;
        long j16 = (l0Var.f18734p + m0Var.f18763f) - j10;
        if (!m0Var.f18766i) {
            f2.c0 c0Var = m0Var.f18758a;
            Object obj = c0Var.f5236a;
            r1.o0 o0Var2 = this.f18770a;
            q0Var.g(obj, o0Var2);
            boolean zB = c0Var.b();
            Object obj2 = c0Var.f5236a;
            boolean z4 = m0Var.f18765h;
            if (zB) {
                r1.c cVar = o0Var2.f13509g;
                int i10 = c0Var.f5237b;
                int i11 = cVar.a(i10).f13363a;
                if (i11 != -1) {
                    int iA = o0Var2.f13509g.a(i10).a(c0Var.f5238c);
                    if (iA < i11) {
                        m0VarF = e(q0Var, c0Var.f5236a, i10, iA, m0Var.f18761d, c0Var.f5239d, z4);
                    } else {
                        long jMax2 = -9223372036854775807L;
                        long jLongValue = m0Var.f18761d;
                        if (jLongValue == -9223372036854775807L) {
                            int i12 = o0Var2.f13505c;
                            if (o0Var2.f13506d != -9223372036854775807L) {
                                j13 = 0;
                                long j17 = jMax2;
                                z = z4;
                                j11 = j13;
                                pairJ = q0Var.j(this.f18771b, o0Var2, o0Var2.f13505c, -9223372036854775807L, j17);
                                if (pairJ != null) {
                                    jLongValue = ((Long) pairJ.second).longValue();
                                    j12 = j17;
                                }
                            } else {
                                r1.p0 p0Var = this.f18771b;
                                q0Var.n(i12, p0Var);
                                if (p0Var.f13542h && !p0Var.f13544j) {
                                    j13 = 0;
                                    jMax2 = Math.max(0L, j16);
                                }
                                long j172 = jMax2;
                                z = z4;
                                j11 = j13;
                                pairJ = q0Var.j(this.f18771b, o0Var2, o0Var2.f13505c, -9223372036854775807L, j172);
                                if (pairJ != null) {
                                }
                            }
                        } else {
                            z = z4;
                            j11 = 0;
                            j12 = -9223372036854775807L;
                        }
                        q0Var.g(obj2, o0Var2);
                        int i13 = c0Var.f5237b;
                        o0Var2.d(i13);
                        o0Var2.f13509g.a(i13).getClass();
                        m0VarF = f(q0Var, c0Var.f5236a, Math.max(j11, jLongValue), j12, m0Var.f18761d, c0Var.f5239d, z);
                    }
                }
            } else {
                int i14 = c0Var.f5240e;
                if (i14 != -1) {
                    o0Var2.f(i14);
                }
                int iE = o0Var2.e(i14);
                o0Var2.g(i14);
                if (iE != o0Var2.f13509g.a(i14).f13363a) {
                    m0VarF = e(q0Var, c0Var.f5236a, c0Var.f5240e, iE, m0Var.f18763f, c0Var.f5239d, z4);
                } else {
                    q0Var.g(obj2, o0Var2);
                    o0Var2.d(i14);
                    o0Var2.f13509g.a(i14).getClass();
                    m0VarF = f(q0Var, c0Var.f5236a, 0L, -9223372036854775807L, m0Var.f18763f, c0Var.f5239d, false);
                }
            }
            return m0VarF;
        }
        m0 m0Var2 = l0Var.f18726g;
        f2.c0 c0Var2 = m0Var2.f18758a;
        int iD = q0Var.d(q0Var.b(c0Var2.f5236a), this.f18770a, this.f18771b, this.f18776g, this.f18777h);
        if (iD != -1) {
            r1.o0 o0Var3 = this.f18770a;
            int i15 = q0Var.f(iD, o0Var3, true).f13505c;
            Object obj3 = o0Var3.f13504b;
            obj3.getClass();
            long jQ = c0Var2.f5239d;
            r1.p0 p0Var2 = this.f18771b;
            long j18 = 0;
            if (q0Var.m(i15, p0Var2, 0L).f13546m == iD) {
                o0Var = o0Var3;
                int i16 = o0Var.f13505c;
                if (o0Var.f13506d == -9223372036854775807L) {
                    q0Var.n(i16, p0Var2);
                    if (p0Var2.f13542h && !p0Var2.f13544j) {
                        jMax = Math.max(0L, j16);
                    }
                    pairJ2 = q0Var.j(this.f18771b, this.f18770a, i15, -9223372036854775807L, jMax);
                    if (pairJ2 != null) {
                        obj3 = pairJ2.first;
                        long jLongValue2 = ((Long) pairJ2.second).longValue();
                        l0 l0Var2 = l0Var.f18731m;
                        if (l0Var2 == null || !l0Var2.f18721b.equals(obj3)) {
                            jQ = q(obj3);
                            if (jQ == -1) {
                                jQ = this.f18775f;
                                this.f18775f = 1 + jQ;
                            }
                        } else {
                            jQ = l0Var2.f18726g.f18758a.f5239d;
                        }
                        j14 = jLongValue2;
                        j15 = jMax;
                        j18 = -9223372036854775807L;
                    }
                }
                jMax = -9223372036854775807L;
                pairJ2 = q0Var.j(this.f18771b, this.f18770a, i15, -9223372036854775807L, jMax);
                if (pairJ2 != null) {
                }
            } else {
                o0Var = o0Var3;
                j14 = 0;
                j15 = -9223372036854775807L;
            }
            f2.c0 c0VarO = o(q0Var, obj3, j14, jQ, this.f18771b, this.f18770a);
            if (j18 != -9223372036854775807L && m0Var2.f18761d != -9223372036854775807L) {
                int i17 = q0Var.g(c0Var2.f5236a, o0Var).f13509g.f13424a;
                o0Var.f13509g.getClass();
                if (i17 > 0) {
                    o0Var.g(0);
                }
            }
            return d(q0Var, c0VarO, j18, j14, j15);
        }
        return null;
    }

    public final m0 d(r1.q0 q0Var, f2.c0 c0Var, long j10, long j11, long j12) {
        q0Var.g(c0Var.f5236a, this.f18770a);
        if (c0Var.b()) {
            return e(q0Var, c0Var.f5236a, c0Var.f5237b, c0Var.f5238c, j10, c0Var.f5239d, false);
        }
        return f(q0Var, c0Var.f5236a, j11, j12, j10, c0Var.f5239d, false);
    }

    public final m0 e(r1.q0 q0Var, Object obj, int i10, int i11, long j10, long j11, boolean z) {
        f2.c0 c0Var = new f2.c0(obj, i10, i11, j11, -1);
        r1.o0 o0Var = this.f18770a;
        long jA = q0Var.g(obj, o0Var).a(i10, i11);
        if (i11 == o0Var.e(i10)) {
            o0Var.f13509g.getClass();
        }
        o0Var.g(i10);
        long jMax = 0;
        if (jA != -9223372036854775807L && 0 >= jA) {
            jMax = Math.max(0L, jA - 1);
        }
        return new m0(c0Var, jMax, -9223372036854775807L, j10, -9223372036854775807L, jA, z, false, false, false, false);
    }

    public final m0 f(r1.q0 q0Var, Object obj, long j10, long j11, long j12, long j13, boolean z) {
        long j14;
        r1.o0 o0Var = this.f18770a;
        q0Var.g(obj, o0Var);
        int iB = o0Var.b(j10);
        boolean z4 = false;
        if (iB != -1) {
            o0Var.g(iB);
        } else if (o0Var.f13509g.f13424a > 0) {
            o0Var.g(0);
        }
        f2.c0 c0Var = new f2.c0(iB, j13, obj);
        if (!c0Var.b() && iB == -1) {
            z4 = true;
        }
        boolean zJ = j(q0Var, c0Var);
        boolean zI = i(q0Var, c0Var, z4);
        if (iB != -1) {
            o0Var.g(iB);
        }
        if (iB != -1) {
            o0Var.f(iB);
        }
        if (iB != -1) {
            o0Var.d(iB);
            j14 = 0;
        } else {
            j14 = -9223372036854775807L;
        }
        long j15 = (j14 == -9223372036854775807L || j14 == Long.MIN_VALUE) ? o0Var.f13506d : j14;
        return new m0(c0Var, (j15 == -9223372036854775807L || j10 < j15) ? j10 : Math.max(0L, j15 - 1), j11, j12, j14, j15, z, false, z4, zJ, zI);
    }

    public final l0 g() {
        return this.f18780k;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final m0 h(r1.q0 q0Var, m0 m0Var) {
        long j10;
        long jA;
        long j11;
        f2.c0 c0Var = m0Var.f18758a;
        boolean zB = c0Var.b();
        int i10 = c0Var.f5240e;
        boolean z = !zB && i10 == -1;
        boolean zJ = j(q0Var, c0Var);
        boolean zI = i(q0Var, c0Var, z);
        Object obj = c0Var.f5236a;
        r1.o0 o0Var = this.f18770a;
        q0Var.g(obj, o0Var);
        if (c0Var.b() || i10 == -1) {
            j10 = -9223372036854775807L;
        } else {
            o0Var.d(i10);
            j10 = 0;
        }
        boolean zB2 = c0Var.b();
        int i11 = c0Var.f5237b;
        if (zB2) {
            jA = o0Var.a(i11, c0Var.f5238c);
        } else {
            if (j10 != -9223372036854775807L && j10 != Long.MIN_VALUE) {
                j11 = j10;
                if (!c0Var.b()) {
                    o0Var.g(i11);
                } else if (i10 != -1) {
                    o0Var.g(i10);
                }
                return new m0(c0Var, m0Var.f18759b, m0Var.f18760c, m0Var.f18761d, j10, j11, m0Var.f18764g, false, z, zJ, zI);
            }
            jA = o0Var.f13506d;
        }
        j11 = jA;
        if (!c0Var.b()) {
        }
        return new m0(c0Var, m0Var.f18759b, m0Var.f18760c, m0Var.f18761d, j10, j11, m0Var.f18764g, false, z, zJ, zI);
    }

    public final boolean i(r1.q0 q0Var, f2.c0 c0Var, boolean z) {
        int iB = q0Var.b(c0Var.f5236a);
        if (q0Var.m(q0Var.f(iB, this.f18770a, false).f13505c, this.f18771b, 0L).f13542h) {
            return false;
        }
        return q0Var.d(iB, this.f18770a, this.f18771b, this.f18776g, this.f18777h) == -1 && z;
    }

    public final boolean j(r1.q0 q0Var, f2.c0 c0Var) {
        if (!(!c0Var.b() && c0Var.f5240e == -1)) {
            return false;
        }
        Object obj = c0Var.f5236a;
        return q0Var.m(q0Var.g(obj, this.f18770a).f13505c, this.f18771b, 0L).f13547n == q0Var.b(obj);
    }

    public final void k() {
        l0 l0Var = this.f18781m;
        if (l0Var == null || l0Var.h()) {
            this.f18781m = null;
            for (int i10 = 0; i10 < this.f18785q.size(); i10++) {
                l0 l0Var2 = (l0) this.f18785q.get(i10);
                if (!l0Var2.h()) {
                    this.f18781m = l0Var2;
                    return;
                }
            }
        }
    }

    public final void l() {
        u7.e0 e0Var = u7.g0.f15471b;
        u7.d0 d0Var = new u7.d0();
        for (l0 l0Var = this.f18778i; l0Var != null; l0Var = l0Var.f18731m) {
            d0Var.b(l0Var.f18726g.f18758a);
        }
        l0 l0Var2 = this.f18779j;
        this.f18773d.d(new a2.e0(this, d0Var, l0Var2 == null ? null : l0Var2.f18726g.f18758a, 24));
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [f2.d1, java.lang.Object] */
    public final void m(long j10) {
        l0 l0Var = this.l;
        if (l0Var != null) {
            a9.o.t(l0Var.f18731m == null);
            if (l0Var.f18724e) {
                l0Var.f18720a.r(j10 - l0Var.f18734p);
            }
        }
    }

    public final int n(l0 l0Var) {
        l0Var.getClass();
        int i10 = 0;
        if (l0Var.equals(this.l)) {
            return 0;
        }
        this.l = l0Var;
        while (true) {
            l0Var = l0Var.f18731m;
            if (l0Var == null) {
                break;
            }
            if (l0Var == this.f18779j) {
                l0 l0Var2 = this.f18778i;
                this.f18779j = l0Var2;
                this.f18780k = l0Var2;
                i10 = 3;
            }
            if (l0Var == this.f18780k) {
                this.f18780k = this.f18779j;
                i10 |= 2;
            }
            l0Var.i();
            this.f18782n--;
        }
        l0 l0Var3 = this.l;
        l0Var3.getClass();
        if (l0Var3.f18731m != null) {
            l0Var3.b();
            l0Var3.f18731m = null;
            l0Var3.c();
        }
        l();
        return i10;
    }

    public final f2.c0 p(r1.q0 q0Var, Object obj, long j10) {
        long jQ;
        int iB;
        Object obj2 = obj;
        r1.o0 o0Var = this.f18770a;
        int i10 = q0Var.g(obj2, o0Var).f13505c;
        Object obj3 = this.f18783o;
        if (obj3 == null || (iB = q0Var.b(obj3)) == -1 || q0Var.f(iB, o0Var, false).f13505c != i10) {
            l0 l0Var = this.f18778i;
            while (true) {
                if (l0Var == null) {
                    l0 l0Var2 = this.f18778i;
                    while (true) {
                        if (l0Var2 != null) {
                            int iB2 = q0Var.b(l0Var2.f18721b);
                            if (iB2 != -1 && q0Var.f(iB2, o0Var, false).f13505c == i10) {
                                jQ = l0Var2.f18726g.f18758a.f5239d;
                                break;
                            }
                            l0Var2 = l0Var2.f18731m;
                        } else {
                            jQ = q(obj2);
                            if (jQ == -1) {
                                jQ = this.f18775f;
                                this.f18775f = 1 + jQ;
                                if (this.f18778i == null) {
                                    this.f18783o = obj2;
                                    this.f18784p = jQ;
                                }
                            }
                        }
                    }
                } else {
                    if (l0Var.f18721b.equals(obj2)) {
                        jQ = l0Var.f18726g.f18758a.f5239d;
                        break;
                    }
                    l0Var = l0Var.f18731m;
                }
            }
        } else {
            jQ = this.f18784p;
        }
        long j11 = jQ;
        q0Var.g(obj2, o0Var);
        int i11 = o0Var.f13505c;
        r1.p0 p0Var = this.f18771b;
        q0Var.n(i11, p0Var);
        boolean z = false;
        for (int iB3 = q0Var.b(obj); iB3 >= p0Var.f13546m; iB3--) {
            q0Var.f(iB3, o0Var, true);
            boolean z4 = o0Var.f13509g.f13424a > 0;
            z |= z4;
            if (o0Var.c(o0Var.f13506d) != -1) {
                obj2 = o0Var.f13504b;
                obj2.getClass();
            }
            if (z && (!z4 || o0Var.f13506d != 0)) {
                break;
            }
        }
        return o(q0Var, obj2, j10, j11, this.f18771b, this.f18770a);
    }

    public final long q(Object obj) {
        for (int i10 = 0; i10 < this.f18785q.size(); i10++) {
            l0 l0Var = (l0) this.f18785q.get(i10);
            if (l0Var.f18721b.equals(obj)) {
                return l0Var.f18726g.f18758a.f5239d;
            }
        }
        return -1L;
    }

    public final int r(r1.q0 q0Var) {
        l0 l0Var;
        l0 l0Var2 = this.f18778i;
        if (l0Var2 == null) {
            return 0;
        }
        int iB = q0Var.b(l0Var2.f18721b);
        while (true) {
            iB = q0Var.d(iB, this.f18770a, this.f18771b, this.f18776g, this.f18777h);
            while (true) {
                l0Var2.getClass();
                l0Var = l0Var2.f18731m;
                if (l0Var == null || l0Var2.f18726g.f18766i) {
                    break;
                }
                l0Var2 = l0Var;
            }
            if (iB == -1 || l0Var == null || q0Var.b(l0Var.f18721b) != iB) {
                break;
            }
            l0Var2 = l0Var;
        }
        int iN = n(l0Var2);
        l0Var2.f18726g = h(q0Var, l0Var2.f18726g);
        return iN;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int s(r1.q0 q0Var, long j10, long j11, long j12) {
        m0 m0Var;
        m0 m0VarB;
        m0 m0Var2;
        boolean z;
        l0 l0Var = this.f18778i;
        l0 l0Var2 = null;
        while (l0Var != null) {
            m0 m0Var3 = l0Var.f18726g;
            if (l0Var2 != null) {
                m0 m0VarC = c(q0Var, l0Var2, j10);
                if (m0VarC != null && m0Var3.f18758a.equals(m0VarC.f18758a)) {
                    long j13 = m0VarC.f18759b;
                    long j14 = m0Var3.f18760c;
                    long j15 = m0Var3.f18759b;
                    if (j15 == j13) {
                        m0Var = m0Var3;
                    } else if (j14 != -9223372036854775807L) {
                        m0Var = m0Var3;
                        long j16 = m0VarC.f18760c;
                        if (j16 != -9223372036854775807L) {
                            if (Math.abs((j13 - j16) - (j15 - j14)) >= 5000000) {
                            }
                        }
                    }
                    m0VarB = j15 != j13 ? m0VarC.b(j15, j14) : m0VarC;
                    m0Var2 = m0Var;
                }
                return n(l0Var2);
            }
            m0VarB = h(q0Var, m0Var3);
            m0Var2 = m0Var3;
            l0Var.f18726g = m0VarB.a(m0Var2.f18761d);
            long j17 = m0VarB.f18763f;
            long j18 = m0Var2.f18763f;
            if (j18 != j17) {
                l0Var.k();
                long j19 = j17 == -9223372036854775807L ? Long.MAX_VALUE : j17 + l0Var.f18734p;
                boolean z4 = l0Var == this.f18779j && !l0Var.f18726g.f18765h && (j11 == Long.MIN_VALUE || j11 >= j19);
                boolean z10 = l0Var == this.f18780k && (j12 == Long.MIN_VALUE || j12 >= j19);
                int iN = n(l0Var);
                if (iN != 0) {
                    return iN;
                }
                if (j18 == -9223372036854775807L && m0Var2.f18762e == Long.MIN_VALUE) {
                    long j20 = m0VarB.f18762e;
                    if (j20 != -9223372036854775807L && j20 != Long.MIN_VALUE) {
                        z = true;
                    }
                } else {
                    z = false;
                }
                int i10 = (!z4 || (j18 == -9223372036854775807L && !z)) ? 0 : 1;
                return z10 ? i10 | 2 : i10;
            }
            l0Var2 = l0Var;
            l0Var = l0Var.f18731m;
        }
        return 0;
    }
}

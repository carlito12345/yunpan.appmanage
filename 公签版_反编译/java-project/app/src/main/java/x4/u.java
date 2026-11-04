package x4;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class u extends v {

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f18138c = new ConcurrentHashMap(1000, 0.75f);

    /* renamed from: d, reason: collision with root package name */
    public static final u f18139d;

    /* renamed from: e, reason: collision with root package name */
    public static final u f18140e;

    /* renamed from: f, reason: collision with root package name */
    public static final u f18141f;

    /* renamed from: a, reason: collision with root package name */
    public final y4.c f18142a;

    /* renamed from: b, reason: collision with root package name */
    public t f18143b;

    static {
        u uVar = new u(y4.c.f18959v);
        f18139d = uVar;
        u uVar2 = new u(y4.c.f18962y);
        u uVar3 = new u(y4.c.z);
        u uVar4 = new u(y4.c.A);
        u uVar5 = new u(y4.c.B);
        u uVar6 = new u(y4.c.C);
        u uVar7 = new u(y4.c.E);
        u uVar8 = new u(y4.c.D);
        u uVar9 = new u(y4.c.F);
        u uVar10 = new u(y4.c.G);
        u uVar11 = new u(y4.c.H);
        u uVar12 = new u(y4.c.I);
        u uVar13 = new u(y4.c.K);
        u uVar14 = new u(y4.c.L);
        u uVar15 = new u(y4.c.M);
        u uVar16 = new u(y4.c.O);
        u uVar17 = new u(y4.c.N);
        u uVar18 = new u(y4.c.R);
        u uVar19 = new u(y4.c.f18957s);
        f18140e = uVar19;
        f18141f = new u(y4.c.f18958t);
        f(uVar);
        f(uVar2);
        f(uVar3);
        f(uVar4);
        f(uVar5);
        f(uVar6);
        f(uVar7);
        f(uVar8);
        f(uVar9);
        f(uVar10);
        f(uVar11);
        f(uVar12);
        f(uVar13);
        f(uVar14);
        f(uVar15);
        f(uVar16);
        f(uVar17);
        f(uVar18);
        f(uVar19);
    }

    public u(y4.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("type == null");
        }
        if (cVar == y4.c.f18956q) {
            throw new UnsupportedOperationException("KNOWN_NULL is not representable");
        }
        this.f18142a = cVar;
        this.f18143b = null;
    }

    public static void f(u uVar) {
        if (f18138c.putIfAbsent(uVar.f18142a, uVar) == null) {
            return;
        }
        throw new IllegalStateException("Attempted re-init of " + uVar);
    }

    @Override // b5.h
    public final String a() {
        return this.f18142a.a();
    }

    @Override // x4.a
    public final int c(a aVar) {
        return this.f18142a.f18963a.compareTo(((u) aVar).f18142a.f18963a);
    }

    @Override // x4.a
    public final String d() {
        return "type";
    }

    public final t e() {
        if (this.f18143b == null) {
            this.f18143b = new t(this.f18142a.f18963a);
        }
        return this.f18143b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof u) {
            return this.f18142a == ((u) obj).f18142a;
        }
        return false;
    }

    public final int hashCode() {
        return this.f18142a.f18963a.hashCode();
    }

    public final String toString() {
        return "type{" + this.f18142a.a() + '}';
    }
}

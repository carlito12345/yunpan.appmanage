package w4;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class k implements y4.d, b5.h, Comparable {

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f17464c = new ConcurrentHashMap(10000, 0.75f);

    /* renamed from: d, reason: collision with root package name */
    public static final kh.b f17465d = new kh.b(1);

    /* renamed from: a, reason: collision with root package name */
    public final int f17466a;

    /* renamed from: b, reason: collision with root package name */
    public final y4.c f17467b;

    public k(int i10, y4.c cVar) {
        if (i10 < 0) {
            throw new IllegalArgumentException("reg < 0");
        }
        if (cVar == null) {
            throw new NullPointerException("type == null");
        }
        this.f17466a = i10;
        this.f17467b = cVar;
    }

    public static k d(int i10, y4.c cVar) {
        j jVar = (j) f17465d.get();
        jVar.f17462a = i10;
        jVar.f17463b = cVar;
        ConcurrentHashMap concurrentHashMap = f17464c;
        k kVar = (k) concurrentHashMap.get(jVar);
        if (kVar == null) {
            kVar = new k(jVar.f17462a, jVar.f17463b);
            k kVar2 = (k) concurrentHashMap.putIfAbsent(kVar, kVar);
            if (kVar2 != null) {
                return kVar2;
            }
        }
        return kVar;
    }

    @Override // b5.h
    public final String a() {
        return g(true);
    }

    public final boolean b(int i10, y4.c cVar) {
        return this.f17466a == i10 && this.f17467b.equals(cVar);
    }

    public final int c() {
        y4.c cVar = this.f17467b;
        cVar.getClass();
        return cVar.c();
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        k kVar = (k) obj;
        int i10 = kVar.f17466a;
        int i11 = this.f17466a;
        if (i11 < i10) {
            return -1;
        }
        if (i11 > i10) {
            return 1;
        }
        if (this != kVar) {
            y4.c cVar = this.f17467b;
            cVar.getClass();
            y4.c cVar2 = kVar.f17467b;
            cVar2.getClass();
            int iCompareTo = cVar.f18963a.compareTo(cVar2.f18963a);
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return 0;
    }

    public final boolean e() {
        y4.c cVar = this.f17467b;
        cVar.getClass();
        int i10 = cVar.f18964b;
        return i10 == 4 || i10 == 7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            return b(kVar.f17466a, kVar.f17467b);
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return b(jVar.f17462a, jVar.f17463b);
    }

    public final String f() {
        return "v" + this.f17466a;
    }

    public final String g(boolean z) {
        StringBuilder sb2 = new StringBuilder(40);
        sb2.append(f());
        sb2.append(":");
        y4.c cVar = this.f17467b;
        cVar.getClass();
        sb2.append(cVar);
        return sb2.toString();
    }

    public final int hashCode() {
        return (this.f17467b.f18963a.hashCode() * 31) + this.f17466a;
    }

    public final String toString() {
        return g(false);
    }
}

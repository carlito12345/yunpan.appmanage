package w4;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public int f17462a;

    /* renamed from: b, reason: collision with root package name */
    public y4.c f17463b;

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        int i10 = this.f17462a;
        y4.c cVar = this.f17463b;
        ConcurrentHashMap concurrentHashMap = k.f17464c;
        return ((k) obj).b(i10, cVar);
    }

    public final int hashCode() {
        int i10 = this.f17462a;
        y4.c cVar = this.f17463b;
        ConcurrentHashMap concurrentHashMap = k.f17464c;
        return (cVar.f18963a.hashCode() * 31) + i10;
    }
}

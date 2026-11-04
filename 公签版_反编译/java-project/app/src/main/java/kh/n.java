package kh;

/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10369a;

    /* renamed from: b, reason: collision with root package name */
    public final l f10370b;

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f10371c = true;

    public n(Object obj, l lVar) {
        this.f10369a = obj;
        this.f10370b = lVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f10369a == nVar.f10369a && this.f10370b.equals(nVar.f10370b);
    }

    public final int hashCode() {
        return this.f10370b.f10366f.hashCode() + this.f10369a.hashCode();
    }
}

package x4;

/* loaded from: classes.dex */
public final class r extends a {

    /* renamed from: a, reason: collision with root package name */
    public final t f18133a;

    /* renamed from: b, reason: collision with root package name */
    public final t f18134b;

    static {
        new r(new t("TYPE"), new t("Ljava/lang/Class;"));
    }

    public r(t tVar, t tVar2) {
        this.f18133a = tVar;
        this.f18134b = tVar2;
    }

    @Override // b5.h
    public final String a() {
        return this.f18133a.a() + ':' + this.f18134b.a();
    }

    @Override // x4.a
    public final int c(a aVar) {
        r rVar = (r) aVar;
        int iCompareTo = this.f18133a.compareTo(rVar.f18133a);
        return iCompareTo != 0 ? iCompareTo : this.f18134b.compareTo(rVar.f18134b);
    }

    @Override // x4.a
    public final String d() {
        return "nat";
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f18133a.equals(rVar.f18133a) && this.f18134b.equals(rVar.f18134b);
    }

    public final int hashCode() {
        return (this.f18133a.f18136a.hashCode() * 31) ^ this.f18134b.f18136a.hashCode();
    }

    public final String toString() {
        return "nat{" + a() + '}';
    }
}

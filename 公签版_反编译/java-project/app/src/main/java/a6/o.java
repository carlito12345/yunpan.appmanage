package a6;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public Class f442a;

    /* renamed from: b, reason: collision with root package name */
    public Class f443b;

    /* renamed from: c, reason: collision with root package name */
    public Class f444c;

    public o() {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o.class != obj.getClass()) {
            return false;
        }
        o oVar = (o) obj;
        return this.f442a.equals(oVar.f442a) && this.f443b.equals(oVar.f443b) && q.b(this.f444c, oVar.f444c);
    }

    public final int hashCode() {
        int iHashCode = (this.f443b.hashCode() + (this.f442a.hashCode() * 31)) * 31;
        Class cls = this.f444c;
        return iHashCode + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f442a + ", second=" + this.f443b + '}';
    }

    public o(Class cls, Class cls2, Class cls3) {
        this.f442a = cls;
        this.f443b = cls2;
        this.f444c = cls3;
    }
}

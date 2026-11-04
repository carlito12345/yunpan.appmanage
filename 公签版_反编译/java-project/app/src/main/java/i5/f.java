package i5;

/* loaded from: classes.dex */
public final class f implements i {

    /* renamed from: a, reason: collision with root package name */
    public final b f8614a;

    /* renamed from: b, reason: collision with root package name */
    public int f8615b;

    /* renamed from: c, reason: collision with root package name */
    public Class f8616c;

    public f(b bVar) {
        this.f8614a = bVar;
    }

    @Override // i5.i
    public final void a() {
        this.f8614a.o(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f8615b == fVar.f8615b && this.f8616c == fVar.f8616c;
    }

    public final int hashCode() {
        int i10 = this.f8615b * 31;
        Class cls = this.f8616c;
        return i10 + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.f8615b + "array=" + this.f8616c + '}';
    }
}

package x4;

/* loaded from: classes.dex */
public abstract class p extends v {

    /* renamed from: a, reason: collision with root package name */
    public final u f18129a;

    /* renamed from: b, reason: collision with root package name */
    public final r f18130b;

    public p(u uVar, r rVar) {
        if (uVar == null) {
            throw new NullPointerException("definingClass == null");
        }
        this.f18129a = uVar;
        this.f18130b = rVar;
    }

    @Override // b5.h
    public final String a() {
        return this.f18129a.f18142a.a() + '.' + this.f18130b.a();
    }

    public final boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f18129a.equals(pVar.f18129a) && this.f18130b.equals(pVar.f18130b);
    }

    public final int hashCode() {
        return (this.f18129a.hashCode() * 31) ^ this.f18130b.hashCode();
    }

    public final String toString() {
        return d() + '{' + a() + '}';
    }
}

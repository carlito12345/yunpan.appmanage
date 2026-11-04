package a2;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: d, reason: collision with root package name */
    public static final p f267d = new o().a();

    /* renamed from: a, reason: collision with root package name */
    public final boolean f268a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f269b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f270c;

    public p(o oVar) {
        this.f268a = oVar.f260a;
        this.f269b = oVar.f261b;
        this.f270c = oVar.f262c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f268a == pVar.f268a && this.f269b == pVar.f269b && this.f270c == pVar.f270c;
    }

    public final int hashCode() {
        return ((this.f268a ? 1 : 0) << 2) + ((this.f269b ? 1 : 0) << 1) + (this.f270c ? 1 : 0);
    }
}

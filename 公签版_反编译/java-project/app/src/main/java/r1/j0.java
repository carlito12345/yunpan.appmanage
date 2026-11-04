package r1;

/* loaded from: classes.dex */
public final class j0 {

    /* renamed from: a, reason: collision with root package name */
    public final n f13460a;

    public j0(n nVar) {
        this.f13460a = nVar;
    }

    public final boolean a(int... iArr) {
        n nVar = this.f13460a;
        for (int i10 : iArr) {
            if (nVar.f13479a.get(i10)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j0) {
            return this.f13460a.equals(((j0) obj).f13460a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13460a.hashCode();
    }
}

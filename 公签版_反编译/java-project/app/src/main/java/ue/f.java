package ue;

/* loaded from: classes.dex */
public final class f implements a {

    /* renamed from: a, reason: collision with root package name */
    public final Class f16109a;

    public f(Class cls) {
        this.f16109a = cls;
    }

    @Override // ue.a
    public final Class a() {
        return this.f16109a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (d.a(this.f16109a, ((f) obj).f16109a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f16109a.hashCode();
    }

    public final String toString() {
        return this.f16109a.toString() + " (Kotlin reflection is not available)";
    }
}

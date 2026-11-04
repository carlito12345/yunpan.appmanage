package q4;

import x4.r;
import x4.t;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final j f12989a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12990b;

    /* renamed from: c, reason: collision with root package name */
    public final x4.h f12991c;

    public f(j jVar, j jVar2, String str) {
        if (jVar2 == null) {
            throw null;
        }
        this.f12989a = jVar;
        this.f12990b = str;
        this.f12991c = new x4.h(jVar.f13021c, new r(new t(str), new t(jVar2.f13019a)));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (fVar.f12989a.equals(this.f12989a) && fVar.f12990b.equals(this.f12990b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f12990b.hashCode() * 37) + this.f12989a.f13019a.hashCode();
    }

    public final String toString() {
        return this.f12989a + "." + this.f12990b;
    }
}

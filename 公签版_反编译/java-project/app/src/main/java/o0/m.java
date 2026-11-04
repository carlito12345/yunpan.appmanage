package o0;

import android.content.res.Resources;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f11470a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f11471b;

    public m(Resources resources, Resources.Theme theme) {
        this.f11470a = resources;
        this.f11471b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.f11470a.equals(mVar.f11470a) && qf.c.o(this.f11471b, mVar.f11471b);
    }

    public final int hashCode() {
        return qf.c.E(this.f11470a, this.f11471b);
    }
}

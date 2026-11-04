package hi;

import j$.util.Objects;

/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8207a;

    public a(Object obj) {
        this.f8207a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        return this.f8207a.equals(((a) obj).f8207a);
    }

    public final int hashCode() {
        return Objects.hash(this.f8207a, null);
    }
}

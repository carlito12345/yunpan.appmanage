package ie;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class b implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8683a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8684b;

    public b(Object obj, Object obj2) {
        this.f8683a = obj;
        this.f8684b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return ue.d.a(this.f8683a, bVar.f8683a) && ue.d.a(this.f8684b, bVar.f8684b);
    }

    public final int hashCode() {
        Object obj = this.f8683a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f8684b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f8683a + ", " + this.f8684b + ')';
    }
}

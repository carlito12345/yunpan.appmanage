package u7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class v extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final a2.m f15543a;

    public v(a2.m mVar) {
        this.f15543a = mVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f15543a.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            return this.f15543a.equals(((v) obj).f15543a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15543a.hashCode();
    }

    public final String toString() {
        return this.f15543a.toString();
    }
}

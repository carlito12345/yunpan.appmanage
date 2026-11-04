package t7;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes.dex */
public final class f implements e, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List f14830a;

    public f(List list) {
        this.f14830a = list;
    }

    @Override // t7.e
    public final boolean apply(Object obj) {
        int i10 = 0;
        while (true) {
            List list = this.f14830a;
            if (i10 >= list.size()) {
                return true;
            }
            if (!((e) list.get(i10)).apply(obj)) {
                return false;
            }
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f14830a.equals(((f) obj).f14830a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f14830a.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : this.f14830a) {
            if (!z) {
                sb2.append(',');
            }
            sb2.append(obj);
            z = false;
        }
        sb2.append(')');
        return sb2.toString();
    }
}

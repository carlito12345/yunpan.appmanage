package u7;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class p extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final t7.d f15513a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f15514b;

    public p(t7.d dVar, x0 x0Var) {
        this.f15513a = dVar;
        x0Var.getClass();
        this.f15514b = x0Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        t7.d dVar = this.f15513a;
        return this.f15514b.compare(dVar.apply(obj), dVar.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return this.f15513a.equals(pVar.f15513a) && this.f15514b.equals(pVar.f15514b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15513a, this.f15514b});
    }

    public final String toString() {
        return this.f15514b + ".onResultOf(" + this.f15513a + ")";
    }
}

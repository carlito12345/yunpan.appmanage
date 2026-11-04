package u7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class h1 extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final x0 f15476a;

    public h1(x0 x0Var) {
        this.f15476a = x0Var;
    }

    @Override // u7.x0
    public final x0 a() {
        return this.f15476a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f15476a.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h1) {
            return this.f15476a.equals(((h1) obj).f15476a);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f15476a.hashCode();
    }

    public final String toString() {
        return this.f15476a + ".reverse()";
    }
}

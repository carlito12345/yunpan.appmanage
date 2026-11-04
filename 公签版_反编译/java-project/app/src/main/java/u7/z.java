package u7;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public final class z extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Comparator[] f15552a;

    public z(p pVar, p pVar2) {
        this.f15552a = new Comparator[]{pVar, pVar2};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i10 = 0;
        while (true) {
            Comparator[] comparatorArr = this.f15552a;
            if (i10 >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i10].compare(obj, obj2);
            if (iCompare != 0) {
                return iCompare;
            }
            i10++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof z) {
            return Arrays.equals(this.f15552a, ((z) obj).f15552a);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f15552a);
    }

    public final String toString() {
        return g.b.l(Arrays.toString(this.f15552a), ")", new StringBuilder("Ordering.compound("));
    }
}

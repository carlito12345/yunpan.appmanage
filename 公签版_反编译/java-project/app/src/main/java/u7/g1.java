package u7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class g1 extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final g1 f15472a = new g1();

    @Override // u7.x0
    public final x0 a() {
        return w0.f15544a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}

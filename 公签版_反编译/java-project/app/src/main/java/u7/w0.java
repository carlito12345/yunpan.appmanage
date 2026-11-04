package u7;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class w0 extends x0 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final w0 f15544a = new w0();

    @Override // u7.x0
    public final x0 a() {
        return g1.f15472a;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}

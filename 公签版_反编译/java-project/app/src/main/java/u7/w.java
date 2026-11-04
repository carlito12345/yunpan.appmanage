package u7;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class w extends y {
    public static y f(int i10) {
        return i10 < 0 ? y.f15547b : i10 > 0 ? y.f15548c : y.f15546a;
    }

    @Override // u7.y
    public final y a(int i10, int i11) {
        return f(i10 == i11 ? 0 : i10 < i11 ? -1 : 1);
    }

    @Override // u7.y
    public final y b(Object obj, Object obj2, Comparator comparator) {
        return f(comparator.compare(obj, obj2));
    }

    @Override // u7.y
    public final y c(boolean z, boolean z4) {
        return f(z == z4 ? 0 : z ? 1 : -1);
    }

    @Override // u7.y
    public final y d(boolean z, boolean z4) {
        return f(z4 == z ? 0 : z4 ? 1 : -1);
    }

    @Override // u7.y
    public final int e() {
        return 0;
    }
}

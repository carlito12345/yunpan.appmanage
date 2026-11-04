package d;

import java.lang.reflect.Array;
import java.util.Set;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public e f59a;

    /* renamed from: b, reason: collision with root package name */
    public e f60b;

    /* renamed from: c, reason: collision with root package name */
    public g f61c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f62d;

    public a(b bVar) {
        this.f62d = bVar;
    }

    public static boolean c(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public final Object a(int i, int i2) {
        return this.f62d.f66b[(i << 1) + i2];
    }

    public final void b(int i) {
        this.f62d.h(i);
    }

    public final Object[] d(Object[] objArr, int i) {
        int i2 = this.f62d.f67c;
        if (objArr.length < i2) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i2);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = a(i3, i);
        }
        if (objArr.length > i2) {
            objArr[i2] = null;
        }
        return objArr;
    }
}

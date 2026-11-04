package b8;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class p extends r {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Method f2657b;

    public p(Method method) {
        this.f2657b = method;
    }

    @Override // b8.r
    public final boolean a(Object obj, AccessibleObject accessibleObject) {
        try {
            return ((Boolean) this.f2657b.invoke(accessibleObject, obj)).booleanValue();
        } catch (Exception e7) {
            throw new RuntimeException("Failed invoking canAccess", e7);
        }
    }
}

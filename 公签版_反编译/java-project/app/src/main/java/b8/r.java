package b8;

import java.lang.reflect.AccessibleObject;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final r f2658a;

    static {
        r pVar;
        if (i.f2630a >= 9) {
            try {
                pVar = new p(AccessibleObject.class.getDeclaredMethod("canAccess", Object.class));
            } catch (NoSuchMethodException unused) {
            }
        } else {
            pVar = null;
        }
        if (pVar == null) {
            pVar = new q();
        }
        f2658a = pVar;
    }

    public abstract boolean a(Object obj, AccessibleObject accessibleObject);
}

package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class s0 implements u0 {

    /* renamed from: a, reason: collision with root package name */
    public static final s0 f1809a = new s0();

    /* renamed from: b, reason: collision with root package name */
    public static final s0 f1810b = new s0();

    /* renamed from: c, reason: collision with root package name */
    public static s0 f1811c;

    @Override // androidx.lifecycle.u0
    public r0 b(Class cls) throws IllegalAccessException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        try {
            Object objNewInstance = cls.getDeclaredConstructor(null).newInstance(null);
            ue.d.d(objNewInstance, "{\n                modelC…wInstance()\n            }");
            return (r0) objNewInstance;
        } catch (IllegalAccessException e7) {
            throw new RuntimeException("Cannot create an instance of " + cls, e7);
        } catch (InstantiationException e10) {
            throw new RuntimeException("Cannot create an instance of " + cls, e10);
        } catch (NoSuchMethodException e11) {
            throw new RuntimeException("Cannot create an instance of " + cls, e11);
        }
    }

    @Override // androidx.lifecycle.u0
    public r0 e(Class cls, p1.c cVar) {
        return b(cls);
    }
}

package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final d f1759c = new d();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1760a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1761b = new HashMap();

    public static void b(HashMap map, c cVar, m mVar, Class cls) {
        m mVar2 = (m) map.get(cVar);
        if (mVar2 == null || mVar == mVar2) {
            if (mVar2 == null) {
                map.put(cVar, mVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + cVar.f1758b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + mVar2 + ", new value " + mVar);
    }

    public final b a(Class cls, Method[] methodArr) throws SecurityException {
        int i10;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.f1760a;
        if (superclass != null) {
            b bVarA = (b) map2.get(superclass);
            if (bVarA == null) {
                bVarA = a(superclass, null);
            }
            map.putAll(bVarA.f1756b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            b bVarA2 = (b) map2.get(cls2);
            if (bVarA2 == null) {
                bVarA2 = a(cls2, null);
            }
            for (Map.Entry entry : bVarA2.f1756b.entrySet()) {
                b(map, (c) entry.getKey(), (m) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e7) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e7);
            }
        }
        boolean z = false;
        for (Method method : methodArr) {
            b0 b0Var = (b0) method.getAnnotation(b0.class);
            if (b0Var != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i10 = 0;
                } else {
                    if (!t.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i10 = 1;
                }
                m mVarValue = b0Var.value();
                if (parameterTypes.length > 1) {
                    if (!m.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (mVarValue != m.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i10 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(map, new c(method, i10), mVarValue, cls);
                z = true;
            }
        }
        b bVar = new b(map);
        map2.put(cls, bVar);
        this.f1761b.put(cls, Boolean.valueOf(z));
        return bVar;
    }
}

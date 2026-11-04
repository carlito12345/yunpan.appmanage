package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f1825a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f1826b = new HashMap();

    public static void a(Constructor constructor, s sVar) {
        try {
            ue.d.d(constructor.newInstance(sVar), "{\n            constructo…tance(`object`)\n        }");
            throw new ClassCastException();
        } catch (IllegalAccessException e7) {
            throw new RuntimeException(e7);
        } catch (InstantiationException e10) {
            throw new RuntimeException(e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException(e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0149 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(Class cls) throws NoSuchMethodException, SecurityException {
        Constructor declaredConstructor;
        boolean zBooleanValue;
        int length;
        int i10;
        int i11 = 1;
        HashMap map = f1825a;
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        if (cls.getCanonicalName() != null) {
            ArrayList arrayList = null;
            try {
                Package r4 = cls.getPackage();
                String canonicalName = cls.getCanonicalName();
                String name = r4 != null ? r4.getName() : "";
                ue.d.d(name, "fullPackage");
                if (name.length() != 0) {
                    ue.d.d(canonicalName, "name");
                    canonicalName = canonicalName.substring(name.length() + 1);
                    ue.d.d(canonicalName, "this as java.lang.String).substring(startIndex)");
                }
                ue.d.d(canonicalName, "if (fullPackage.isEmpty(…g(fullPackage.length + 1)");
                String strConcat = bf.h.Q(canonicalName, ".", "_").concat("_LifecycleAdapter");
                if (name.length() != 0) {
                    strConcat = name + '.' + strConcat;
                }
                declaredConstructor = Class.forName(strConcat).getDeclaredConstructor(cls);
                if (!declaredConstructor.isAccessible()) {
                    declaredConstructor.setAccessible(true);
                }
            } catch (ClassNotFoundException unused) {
                declaredConstructor = null;
            } catch (NoSuchMethodException e7) {
                throw new RuntimeException(e7);
            }
            HashMap map2 = f1826b;
            if (declaredConstructor != null) {
                map2.put(cls, qf.c.J(declaredConstructor));
            } else {
                d dVar = d.f1759c;
                HashMap map3 = dVar.f1761b;
                Boolean bool = (Boolean) map3.get(cls);
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else {
                    try {
                        Method[] declaredMethods = cls.getDeclaredMethods();
                        int length2 = declaredMethods.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length2) {
                                map3.put(cls, Boolean.FALSE);
                                zBooleanValue = false;
                                break;
                            }
                            if (((b0) declaredMethods[i12].getAnnotation(b0.class)) != null) {
                                dVar.a(cls, declaredMethods);
                                zBooleanValue = true;
                                break;
                            }
                            i12++;
                        }
                    } catch (NoClassDefFoundError e10) {
                        throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
                    }
                }
                if (!zBooleanValue) {
                    Class superclass = cls.getSuperclass();
                    if (superclass != null && s.class.isAssignableFrom(superclass)) {
                        ue.d.d(superclass, "superclass");
                        if (b(superclass) != 1) {
                            Object obj = map2.get(superclass);
                            ue.d.b(obj);
                            arrayList = new ArrayList((Collection) obj);
                            Class<?>[] interfaces = cls.getInterfaces();
                            ue.d.d(interfaces, "klass.interfaces");
                            length = interfaces.length;
                            i10 = 0;
                            while (true) {
                                if (i10 < length) {
                                    Class<?> cls2 = interfaces[i10];
                                    if (cls2 != null && s.class.isAssignableFrom(cls2)) {
                                        ue.d.d(cls2, "intrface");
                                        if (b(cls2) == 1) {
                                            break;
                                        }
                                        if (arrayList == null) {
                                            arrayList = new ArrayList();
                                        }
                                        Object obj2 = map2.get(cls2);
                                        ue.d.b(obj2);
                                        arrayList.addAll((Collection) obj2);
                                    }
                                    i10++;
                                } else if (arrayList != null) {
                                    map2.put(cls, arrayList);
                                }
                            }
                        }
                    } else {
                        Class<?>[] interfaces2 = cls.getInterfaces();
                        ue.d.d(interfaces2, "klass.interfaces");
                        length = interfaces2.length;
                        i10 = 0;
                        while (true) {
                            if (i10 < length) {
                            }
                            i10++;
                        }
                    }
                }
            }
            i11 = 2;
        }
        map.put(cls, Integer.valueOf(i11));
        return i11;
    }
}

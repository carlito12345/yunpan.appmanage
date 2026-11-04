package j$.util;

import j$.util.Collection;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
public class DesugarCollections {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f9005a;

    /* renamed from: b, reason: collision with root package name */
    private static final Field f9006b;

    /* renamed from: c, reason: collision with root package name */
    private static final Field f9007c;

    /* renamed from: d, reason: collision with root package name */
    private static final Constructor f9008d;

    /* renamed from: e, reason: collision with root package name */
    private static final Constructor f9009e;

    static {
        Field declaredField;
        Field declaredField2;
        Constructor<?> declaredConstructor;
        Class<?> cls = Collections.synchronizedCollection(new ArrayList()).getClass();
        f9005a = cls;
        Collections.synchronizedList(new LinkedList()).getClass();
        Constructor<?> declaredConstructor2 = null;
        try {
            declaredField = cls.getDeclaredField("mutex");
        } catch (NoSuchFieldException unused) {
            declaredField = null;
        }
        f9006b = declaredField;
        if (declaredField != null) {
            declaredField.setAccessible(true);
        }
        try {
            declaredField2 = cls.getDeclaredField("c");
        } catch (NoSuchFieldException unused2) {
            declaredField2 = null;
        }
        f9007c = declaredField2;
        if (declaredField2 != null) {
            declaredField2.setAccessible(true);
        }
        try {
            declaredConstructor = Collections.synchronizedSet(new HashSet()).getClass().getDeclaredConstructor(java.util.Set.class, Object.class);
        } catch (NoSuchMethodException unused3) {
            declaredConstructor = null;
        }
        f9009e = declaredConstructor;
        if (declaredConstructor != null) {
            declaredConstructor.setAccessible(true);
        }
        try {
            declaredConstructor2 = cls.getDeclaredConstructor(java.util.Collection.class, Object.class);
        } catch (NoSuchMethodException unused4) {
        }
        f9008d = declaredConstructor2;
        if (declaredConstructor2 != null) {
            declaredConstructor2.setAccessible(true);
        }
    }

    static boolean c(java.util.Collection collection, Predicate predicate) throws IllegalAccessException, IllegalArgumentException {
        boolean zRemoveIf;
        Field field = f9006b;
        if (field == null) {
            try {
                return Collection.EL.removeIf((java.util.Collection) f9007c.get(collection), predicate);
            } catch (IllegalAccessException e7) {
                throw new Error("Runtime illegal access in synchronized collection removeIf fall-back.", e7);
            }
        }
        try {
            synchronized (field.get(collection)) {
                zRemoveIf = Collection.EL.removeIf((java.util.Collection) f9007c.get(collection), predicate);
            }
            return zRemoveIf;
        } catch (IllegalAccessException e10) {
            throw new Error("Runtime illegal access in synchronized collection removeIf.", e10);
        }
    }

    public static <K, V> java.util.Map<K, V> synchronizedMap(java.util.Map<K, V> map) {
        return new C0030g(map);
    }
}

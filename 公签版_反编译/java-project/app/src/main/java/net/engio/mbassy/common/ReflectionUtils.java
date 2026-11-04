package net.engio.mbassy.common;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class ReflectionUtils {
    public static void collectInterfaces(Class cls, Collection<Class> collection) {
        for (Class<?> cls2 : cls.getInterfaces()) {
            collection.add(cls2);
            collectInterfaces(cls2, collection);
        }
    }

    public static boolean containsOverridingMethod(Method[] methodArr, Method method) {
        for (Method method2 : methodArr) {
            if (isOverriddenBy(method, method2)) {
                return true;
            }
        }
        return false;
    }

    private static <A extends Annotation> A getAnnotation(AnnotatedElement annotatedElement, Class<A> cls, Set<AnnotatedElement> set) {
        if (set.contains(annotatedElement)) {
            return null;
        }
        set.add(annotatedElement);
        A a10 = (A) annotatedElement.getAnnotation(cls);
        if (a10 != null) {
            return a10;
        }
        for (Annotation annotation : annotatedElement.getAnnotations()) {
            A a11 = (A) getAnnotation(annotation.annotationType(), cls, set);
            if (a11 != null) {
                return a11;
            }
        }
        return null;
    }

    public static Method[] getMethods(IPredicate<Method> iPredicate, Class<?> cls) throws SecurityException {
        ArrayList arrayList = new ArrayList();
        getMethods(iPredicate, cls, arrayList);
        Method[] methodArr = new Method[arrayList.size()];
        arrayList.toArray(methodArr);
        return methodArr;
    }

    public static Method getOverridingMethod(Method method, Class cls) {
        while (!cls.equals(method.getDeclaringClass())) {
            try {
                return cls.getDeclaredMethod(method.getName(), method.getParameterTypes());
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        return null;
    }

    public static Class[] getSuperTypes(Class cls) {
        ArrayList arrayList = new ArrayList();
        collectInterfaces(cls, arrayList);
        while (!cls.equals(Object.class) && !cls.isInterface()) {
            arrayList.add(cls.getSuperclass());
            cls = cls.getSuperclass();
            collectInterfaces(cls, arrayList);
        }
        Class[] clsArr = new Class[arrayList.size()];
        arrayList.toArray(clsArr);
        return clsArr;
    }

    private static boolean isOverriddenBy(Method method, Method method2) {
        if (method.getDeclaringClass().equals(method2.getDeclaringClass()) || !method.getDeclaringClass().isAssignableFrom(method2.getDeclaringClass()) || !method.getName().equals(method2.getName())) {
            return false;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        Class<?>[] parameterTypes2 = method2.getParameterTypes();
        for (int i10 = 0; i10 < parameterTypes2.length; i10++) {
            if (!parameterTypes[i10].equals(parameterTypes2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static void getMethods(IPredicate<Method> iPredicate, Class<?> cls, ArrayList<Method> arrayList) throws SecurityException {
        try {
            for (Method method : cls.getDeclaredMethods()) {
                if (iPredicate.apply(method)) {
                    arrayList.add(method);
                }
            }
            for (Class cls2 : getSuperTypes(cls)) {
                if (!cls2.equals(Object.class)) {
                    for (Method method2 : cls2.getDeclaredMethods()) {
                        if (iPredicate.apply(method2)) {
                            arrayList.add(method2);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static <A extends Annotation> A getAnnotation(AnnotatedElement annotatedElement, Class<A> cls) {
        return (A) getAnnotation(annotatedElement, cls, new HashSet());
    }
}

package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class q0 {

    /* renamed from: a, reason: collision with root package name */
    public static final List f1804a;

    /* renamed from: b, reason: collision with root package name */
    public static final List f1805b;

    static {
        List listAsList = Arrays.asList(Application.class, j0.class);
        ue.d.d(listAsList, "asList(...)");
        f1804a = listAsList;
        f1805b = qf.c.J(j0.class);
    }

    public static final Constructor a(Class cls, List list) throws SecurityException {
        ue.d.e(list, "signature");
        Constructor<?>[] constructors = cls.getConstructors();
        ue.d.d(constructors, "modelClass.constructors");
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            ue.d.d(parameterTypes, "constructor.parameterTypes");
            int length = parameterTypes.length;
            List arrayList = length != 0 ? length != 1 ? new ArrayList(new je.g(parameterTypes, false)) : qf.c.J(parameterTypes[0]) : je.r.f9870a;
            if (list.equals(arrayList)) {
                return constructor;
            }
            if (list.size() == arrayList.size() && arrayList.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final r0 b(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (r0) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e7) {
            throw new RuntimeException("Failed to access " + cls, e7);
        } catch (InstantiationException e10) {
            throw new RuntimeException(android.support.v4.media.session.a.r("A ", cls, " cannot be instantiated."), e10);
        } catch (InvocationTargetException e11) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e11.getCause());
        }
    }
}

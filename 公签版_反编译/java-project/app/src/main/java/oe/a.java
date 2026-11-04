package oe;

import java.lang.reflect.Method;
import ue.d;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f11771a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        d.b(methods);
        int length = methods.length;
        int i10 = 0;
        while (true) {
            method = null;
            if (i10 >= length) {
                break;
            }
            Method method2 = methods[i10];
            if (d.a(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                d.d(parameterTypes, "getParameterTypes(...)");
                if (d.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i10++;
        }
        f11771a = method;
        int length2 = methods.length;
        for (int i11 = 0; i11 < length2 && !d.a(methods[i11].getName(), "getSuppressed"); i11++) {
        }
    }
}

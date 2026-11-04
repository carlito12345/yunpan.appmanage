package ua;

import android.content.Context;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.InputEvent;
import android.view.KeyEvent;
import android.view.View;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class m7 {

    /* renamed from: a, reason: collision with root package name */
    public final View f15826a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f15827b;

    /* renamed from: c, reason: collision with root package name */
    public final Method f15828c;

    /* renamed from: d, reason: collision with root package name */
    public final Method f15829d;

    /* renamed from: e, reason: collision with root package name */
    public final Method f15830e;

    /* renamed from: f, reason: collision with root package name */
    public final Method f15831f;

    /* renamed from: g, reason: collision with root package name */
    public final Method f15832g;

    /* renamed from: h, reason: collision with root package name */
    public final Method f15833h;

    /* renamed from: i, reason: collision with root package name */
    public final Object f15834i;

    /* renamed from: j, reason: collision with root package name */
    public final Method f15835j;

    /* renamed from: k, reason: collision with root package name */
    public final Object f15836k;
    public final Method l;

    /* renamed from: m, reason: collision with root package name */
    public final Method f15837m;

    public m7(View view, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, Object obj, Method method8, Object obj2, Method method9, Method method10) {
        this.f15826a = view;
        this.f15827b = method;
        this.f15828c = method2;
        this.f15829d = method3;
        this.f15830e = method4;
        this.f15831f = method5;
        this.f15832g = method6;
        this.f15833h = method7;
        this.f15834i = obj;
        this.f15835j = method8;
        this.f15836k = obj2;
        this.l = method9;
        this.f15837m = method10;
    }

    public static boolean b(Constructor constructor) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        if (parameterTypes.length == 0) {
            return false;
        }
        for (Class<?> cls : parameterTypes) {
            if (!Context.class.isAssignableFrom(cls) && !AttributeSet.class.isAssignableFrom(cls) && cls != Integer.TYPE && cls != Integer.class && cls != Boolean.TYPE && cls != Boolean.class) {
                return false;
            }
        }
        return true;
    }

    public static Object c(Object obj, String str) {
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                return declaredField.get(obj);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static Method d(Class cls, String str) {
        try {
            try {
                return cls.getMethod(str, null);
            } catch (Throwable unused) {
                Method declaredMethod = cls.getDeclaredMethod(str, null);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            }
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static Method e(Class cls, String str, Class cls2) throws SecurityException {
        for (Method method : cls.getMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (method.getName().equals(str) && parameterTypes.length == 1 && parameterTypes[0].isAssignableFrom(cls2)) {
                return method;
            }
        }
        for (Method method2 : cls.getDeclaredMethods()) {
            Class<?>[] parameterTypes2 = method2.getParameterTypes();
            if (method2.getName().equals(str) && parameterTypes2.length == 1 && parameterTypes2[0].isAssignableFrom(cls2)) {
                method2.setAccessible(true);
                return method2;
            }
        }
        return null;
    }

    public final Integer a(Method method) {
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(this.f15826a, null);
            if (objInvoke instanceof Integer) {
                return (Integer) objInvoke;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public final int f() {
        Integer numA = a(this.f15829d);
        if (numA != null) {
            return numA.intValue();
        }
        Integer numA2 = a(this.f15830e);
        if (numA2 != null) {
            return numA2.intValue();
        }
        Integer numA3 = a(this.l);
        if (numA3 == null) {
            return -1;
        }
        return numA3.intValue();
    }

    public final boolean g(KeyEvent keyEvent, boolean z) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        Object obj;
        boolean z4 = true;
        if (z) {
            try {
                IBinder iBinder = (IBinder) Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "input");
                if (iBinder != null && (objInvoke = Class.forName("android.hardware.input.IInputManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, iBinder)) != null) {
                    Object objInvoke2 = objInvoke.getClass().getMethod("injectInputEvent", InputEvent.class, Integer.TYPE).invoke(objInvoke, keyEvent, 2);
                    if (objInvoke2 instanceof Boolean) {
                        if (!((Boolean) objInvoke2).booleanValue()) {
                            z4 = false;
                        }
                    }
                    return z4;
                }
                return false;
            } catch (Throwable unused) {
                return false;
            }
        }
        Method method = this.f15833h;
        if (method != null) {
            Object objInvoke3 = method.invoke(this.f15826a, keyEvent);
            if (!(objInvoke3 instanceof Boolean) || ((Boolean) objInvoke3).booleanValue()) {
                return true;
            }
        }
        Method method2 = this.f15835j;
        if (method2 == null || (obj = this.f15834i) == null) {
            return false;
        }
        Object objInvoke4 = method2.invoke(obj, keyEvent);
        return !(objInvoke4 instanceof Boolean) || ((Boolean) objInvoke4).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z;
        KeyEvent keyEvent;
        Method method;
        boolean z4 = false;
        Method method2 = this.f15832g;
        if (method2 != null) {
            method2.invoke(this.f15826a, null);
            return true;
        }
        int iIntValue = -1;
        Object obj = this.f15836k;
        if (obj != null && (method = this.f15837m) != null) {
            try {
                Object objInvoke = method.invoke(obj, null);
                if (objInvoke instanceof Integer) {
                    iIntValue = ((Integer) objInvoke).intValue();
                }
            } catch (Throwable unused) {
            }
        }
        if (iIntValue < 0) {
            z = false;
        } else {
            try {
                Object objInvoke2 = Class.forName("android.app.ActivityManagerNative").getMethod("getDefault", null).invoke(null, null);
                Method methodE = e(objInvoke2.getClass(), "setFocusedStack", Integer.TYPE);
                if (methodE != null) {
                    methodE.invoke(objInvoke2, Integer.valueOf(iIntValue));
                    z = true;
                }
            } catch (Throwable unused2) {
            }
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        KeyEvent keyEvent2 = new KeyEvent(jUptimeMillis, jUptimeMillis, 0, 4, 0, 0, -1, 0, 8, 257);
        KeyEvent keyEvent3 = new KeyEvent(jUptimeMillis, SystemClock.uptimeMillis(), 1, 4, 0, 0, -1, 0, 8, 257);
        if (g(keyEvent2, false)) {
            keyEvent = keyEvent3;
            if (g(keyEvent, false)) {
                return true;
            }
        } else {
            keyEvent = keyEvent3;
        }
        if (z && g(keyEvent2, true) && g(keyEvent, true)) {
            z4 = true;
        }
        return z4;
    }
}

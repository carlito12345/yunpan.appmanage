package com.hjq.toast;

import android.annotation.SuppressLint;
import android.app.Application;
import android.widget.Toast;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes.dex */
public class NotificationToast extends SystemToast {
    static {
        hookNotificationService();
    }

    public NotificationToast(Application application) {
        super(application);
    }

    @SuppressLint({"DiscouragedPrivateApi", "PrivateApi"})
    private static void hookNotificationService() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        try {
            Method declaredMethod = Toast.class.getDeclaredMethod("getService", null);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke == null) {
                return;
            }
            if (Proxy.isProxyClass(objInvoke.getClass()) && (Proxy.getInvocationHandler(objInvoke) instanceof NotificationServiceProxy)) {
                return;
            }
            ClassLoader classLoader = objInvoke.getClass().getClassLoader();
            Object objNewProxyInstance = Proxy.newProxyInstance(classLoader, new Class[]{Class.forName("android.app.INotificationManager", false, classLoader)}, new NotificationServiceProxy(objInvoke));
            Field declaredField = Toast.class.getDeclaredField("sService");
            declaredField.setAccessible(true);
            declaredField.set(null, objNewProxyInstance);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }
}

package com.hjq.toast;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class NotificationServiceProxy implements InvocationHandler {
    private final Object mRealObject;

    public NotificationServiceProxy(Object obj) {
        this.mRealObject = obj;
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        name.getClass();
        switch (name) {
            case "cancelToast":
            case "enqueueToastEx":
            case "enqueueToast":
                if (objArr != null && objArr.length > 0 && (objArr[0] instanceof String)) {
                    objArr[0] = "android";
                    break;
                }
                break;
        }
        return method.invoke(this.mRealObject, objArr);
    }
}

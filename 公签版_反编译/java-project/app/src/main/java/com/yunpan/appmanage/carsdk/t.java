package com.yunpan.appmanage.carsdk;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class t implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3891a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x f3892b;

    public /* synthetic */ t(x xVar, int i10) {
        this.f3891a = i10;
        this.f3892b = xVar;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        Object obj3;
        switch (this.f3891a) {
            case 0:
                Class<?> declaringClass = method.getDeclaringClass();
                x xVar = this.f3892b;
                if (declaringClass == Object.class) {
                    return x.c(xVar, obj, method, objArr, "hardKey");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj2 = objArr[0]) != null) {
                        x.b(xVar, obj2);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th2) {
                    x.d(xVar, "hardKeyCallback", th2);
                }
                return null;
            default:
                Class<?> declaringClass2 = method.getDeclaringClass();
                x xVar2 = this.f3892b;
                if (declaringClass2 == Object.class) {
                    return x.c(xVar2, obj, method, objArr, "body");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj3 = objArr[0]) != null) {
                        x.a(xVar2, obj3);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th3) {
                    x.d(xVar2, "bodyCallback", th3);
                }
                return null;
        }
    }
}

package com.yunpan.appmanage.carsdk;

import com.yunpan.appmanage.ui.ActivityTextFlyOS12;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Arrays;
import ua.i1;

/* loaded from: classes.dex */
public final class n implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3859a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f3860b;

    public /* synthetic */ n(r rVar, int i10) {
        this.f3859a = i10;
        this.f3860b = rVar;
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, Object[] objArr) {
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        Object obj12;
        Object obj13;
        switch (this.f3859a) {
            case 0:
                Class<?> declaringClass = method.getDeclaringClass();
                r rVar = this.f3860b;
                if (declaringClass == Object.class) {
                    return r.l(rVar, obj, method, objArr, "trunk");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj2 = objArr[0]) != null) {
                        r.m(rVar, obj2);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th2) {
                    rVar.s("trunkCallback", th2);
                }
                return null;
            case 1:
                Class<?> declaringClass2 = method.getDeclaringClass();
                r rVar2 = this.f3860b;
                if (declaringClass2 == Object.class) {
                    return r.l(rVar2, obj, method, objArr, "headLamp");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj3 = objArr[0]) != null) {
                        r.j(rVar2, obj3);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th3) {
                    rVar2.s("headLampCallback", th3);
                }
                return null;
            case 2:
                Class<?> declaringClass3 = method.getDeclaringClass();
                r rVar3 = this.f3860b;
                if (declaringClass3 == Object.class) {
                    return r.l(rVar3, obj, method, objArr, "turnSignal");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj4 = objArr[0]) != null) {
                        r.n(rVar3, obj4);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th4) {
                    rVar3.s("turnSignalCallback", th4);
                }
                return null;
            case 3:
                Class<?> declaringClass4 = method.getDeclaringClass();
                r rVar4 = this.f3860b;
                if (declaringClass4 == Object.class) {
                    return r.l(rVar4, obj, method, objArr, "ignitionState");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj5 = objArr[0]) != null) {
                        r.k(rVar4, obj5);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th5) {
                    rVar4.s("ignitionStateCallback", th5);
                }
                return null;
            case 4:
                Class<?> declaringClass5 = method.getDeclaringClass();
                r rVar5 = this.f3860b;
                if (declaringClass5 == Object.class) {
                    return r.l(rVar5, obj, method, objArr, "doorLock");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj6 = objArr[0]) != null) {
                        r.e(rVar5, obj6);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th6) {
                    rVar5.s("doorLockCallback", th6);
                }
                return null;
            case 5:
                Class<?> declaringClass6 = method.getDeclaringClass();
                r rVar6 = this.f3860b;
                if (declaringClass6 == Object.class) {
                    return r.l(rVar6, obj, method, objArr, "vehicleSpeed");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj7 = objArr[0]) != null) {
                        r.o(rVar6, obj7);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th7) {
                    rVar6.s("vehicleSpeedCallback", th7);
                }
                return null;
            case 6:
                Class<?> declaringClass7 = method.getDeclaringClass();
                r rVar7 = this.f3860b;
                if (declaringClass7 == Object.class) {
                    return r.l(rVar7, obj, method, objArr, "engineRpm");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj8 = objArr[0]) != null) {
                        r.f(rVar7, obj8);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th8) {
                    rVar7.s("engineRpmCallback", th8);
                }
                return null;
            case 7:
                Class<?> declaringClass8 = method.getDeclaringClass();
                r rVar8 = this.f3860b;
                if (declaringClass8 == Object.class) {
                    return r.l(rVar8, obj, method, objArr, "fuelTankCap");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj9 = objArr[0]) != null) {
                        r.g(rVar8, obj9);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th9) {
                    rVar8.s("fuelTankCapCallback", th9);
                }
                return null;
            case 8:
                Class<?> declaringClass9 = method.getDeclaringClass();
                r rVar9 = this.f3860b;
                if (declaringClass9 == Object.class) {
                    return r.l(rVar9, obj, method, objArr, "apPowerStateReq");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj10 = objArr[0]) != null) {
                        r.d(rVar9, obj10);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th10) {
                    rVar9.s("apPowerStateReqCallback", th10);
                }
                return null;
            case 9:
                Class<?> declaringClass10 = method.getDeclaringClass();
                r rVar10 = this.f3860b;
                if (declaringClass10 == Object.class) {
                    return r.l(rVar10, obj, method, objArr, "apPowerStateReport");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj11 = objArr[0]) != null) {
                        r.c(rVar10, obj11);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th11) {
                    rVar10.s("apPowerStateReportCallback", th11);
                }
                return null;
            case 10:
                Class<?> declaringClass11 = method.getDeclaringClass();
                r rVar11 = this.f3860b;
                if (declaringClass11 == Object.class) {
                    return r.l(rVar11, obj, method, objArr, "carPowerStateListener");
                }
                try {
                    if ("onStateChanged".equals(method.getName()) && objArr != null && objArr.length > 0) {
                        Object obj14 = objArr[0];
                        if (obj14 instanceof Integer) {
                            int iIntValue = ((Integer) obj14).intValue();
                            i1 i1Var = rVar11.f3867b;
                            if (i1Var != null) {
                                ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, "电源状态变化回调 powState=" + iIntValue);
                            }
                        }
                    }
                } catch (Throwable th12) {
                    rVar11.s("carPowerStateListener", th12);
                }
                return null;
            case 11:
                Class<?> declaringClass12 = method.getDeclaringClass();
                r rVar12 = this.f3860b;
                if (declaringClass12 == Object.class) {
                    return r.l(rVar12, obj, method, objArr, "hardKey");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj12 = objArr[0]) != null) {
                        r.i(rVar12, obj12);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th13) {
                    rVar12.s("hardKeyCallback", th13);
                }
                return null;
            default:
                Class<?> declaringClass13 = method.getDeclaringClass();
                r rVar13 = this.f3860b;
                if (declaringClass13 == Object.class) {
                    return r.l(rVar13, obj, method, objArr, "gear");
                }
                try {
                    if ("onChangeEvent".equals(method.getName()) && objArr != null && objArr.length > 0 && (obj13 = objArr[0]) != null) {
                        r.h(rVar13, obj13);
                    } else if ("onErrorEvent".equals(method.getName())) {
                        Arrays.toString(objArr);
                    }
                } catch (Throwable th14) {
                    rVar13.s("gearCallback", th14);
                }
                return null;
        }
    }
}

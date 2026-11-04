package com.yunpan.appmanage.carsdk;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import com.yunpan.appmanage.ui.ActivityTextFlyOS12;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import ua.i1;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3866a;

    /* renamed from: b, reason: collision with root package name */
    public final i1 f3867b;

    /* renamed from: c, reason: collision with root package name */
    public final HandlerThread f3868c;

    /* renamed from: d, reason: collision with root package name */
    public final Handler f3869d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f3870e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f3871f;

    /* renamed from: g, reason: collision with root package name */
    public volatile Object f3872g;

    /* renamed from: h, reason: collision with root package name */
    public volatile Object f3873h;

    /* renamed from: i, reason: collision with root package name */
    public volatile Object f3874i;

    /* renamed from: j, reason: collision with root package name */
    public volatile Object f3875j;

    /* renamed from: k, reason: collision with root package name */
    public volatile Object f3876k;
    public volatile Object l;

    /* renamed from: m, reason: collision with root package name */
    public volatile Object f3877m;

    /* renamed from: n, reason: collision with root package name */
    public volatile Object f3878n;

    /* renamed from: o, reason: collision with root package name */
    public volatile Object f3879o;

    /* renamed from: p, reason: collision with root package name */
    public volatile Object f3880p;

    /* renamed from: q, reason: collision with root package name */
    public volatile Object f3881q;
    public volatile Object r;

    /* renamed from: s, reason: collision with root package name */
    public volatile Object f3882s;

    /* renamed from: t, reason: collision with root package name */
    public volatile Object f3883t;

    /* renamed from: u, reason: collision with root package name */
    public volatile Object f3884u;

    /* renamed from: v, reason: collision with root package name */
    public volatile Object f3885v;

    /* renamed from: w, reason: collision with root package name */
    public final o f3886w = new o(this);

    /* renamed from: x, reason: collision with root package name */
    public final ConcurrentHashMap f3887x = new ConcurrentHashMap();

    /* renamed from: y, reason: collision with root package name */
    public final ConcurrentHashMap f3888y = new ConcurrentHashMap();
    public final ConcurrentHashMap z = new ConcurrentHashMap();
    public final ConcurrentHashMap A = new ConcurrentHashMap();
    public final f B = new f(1, this);

    public r(Context context, i1 i1Var) {
        this.f3866a = context.getApplicationContext();
        this.f3867b = i1Var;
        HandlerThread handlerThread = new HandlerThread("reflect-car-input-monitor");
        this.f3868c = handlerThread;
        handlerThread.start();
        this.f3869d = new Handler(handlerThread.getLooper());
    }

    public static void a(r rVar) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        if (rVar.f3871f != null) {
            return;
        }
        Class<?> cls = Class.forName("android.car.Car");
        try {
            objInvoke = cls.getMethod("createCar", Context.class, ServiceConnection.class, Handler.class).invoke(null, rVar.f3866a, rVar.B, rVar.f3869d);
        } catch (NoSuchMethodException unused) {
            objInvoke = null;
        }
        if (objInvoke == null) {
            try {
                objInvoke = cls.getMethod("createCar", Context.class, ServiceConnection.class).invoke(null, rVar.f3866a, rVar.B);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (objInvoke == null) {
            try {
                objInvoke = cls.getMethod("createCar", Context.class).invoke(null, rVar.f3866a);
            } catch (NoSuchMethodException unused3) {
            }
        }
        if (objInvoke == null) {
            throw new NoSuchMethodException("No compatible android.car.Car#createCar found");
        }
        rVar.f3871f = objInvoke;
        r(rVar.f3871f, "connect", new Object[0]);
    }

    public static void b(r rVar) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (rVar.f3874i != null) {
            return;
        }
        Object objInvoke = Class.forName("com.ecarx.xui.adaptapi.car.Car").getMethod("createWrapper", Context.class).invoke(null, rVar.f3866a);
        if (objInvoke == null) {
            throw new IllegalStateException("AdapterAPI createWrapper returned null");
        }
        rVar.f3874i = objInvoke;
        rVar.f3874i.getClass();
    }

    public static void c(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "AP 电源上报状态变化回调 propertyId=", ", powerStateReport=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void d(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "AP 电源请求状态变化回调 propertyId=", ", powerStateReq=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void e(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "门锁 propertyId=", ", doorLockState=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void f(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        float fFloatValue = objR instanceof Number ? ((Number) objR).floatValue() : Float.NaN;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, "转速 propertyId=" + iIntValue + ", rpmValue=" + fFloatValue + ", rawValue=" + objR);
        }
    }

    public static void g(r rVar, Object obj) {
        boolean z = false;
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        if ((objR instanceof Boolean) && ((Boolean) objR).booleanValue()) {
            z = true;
        }
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, "油箱 propertyId=" + iIntValue + ", isOpen=" + z + ", rawValue=" + objR);
        }
    }

    public static void h(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "档位 propertyId=", ", gearValue=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void i(r rVar, Object obj) {
        int i10;
        int i11 = 0;
        rVar.getClass();
        Integer num = (Integer) r(obj, "getPropertyId", new Object[0]);
        int iIntValue = num.intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        ConcurrentHashMap concurrentHashMap = rVar.f3887x;
        int iIntValue2 = concurrentHashMap.containsKey(num) ? ((Integer) concurrentHashMap.get(num)).intValue() : -1;
        int iIntValue3 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        if (iIntValue3 == 0 || iIntValue3 == 1 || iIntValue3 == 2 || iIntValue3 == 3 || iIntValue3 == 4) {
            i11 = iIntValue3;
        } else if (iIntValue3 != 1090650369) {
            i11 = iIntValue3 == 1090650370 ? 1 : iIntValue3 == 1090650371 ? 2 : iIntValue3 == 1090650372 ? 3 : iIntValue3 == 1090650373 ? 4 : Integer.MIN_VALUE;
        }
        if (iIntValue2 != 554767360 || iIntValue3 <= 0) {
            i10 = i11;
        } else {
            i10 = i11 != Integer.MIN_VALUE ? i11 : 3;
            iIntValue2 = iIntValue3;
        }
        ConcurrentHashMap concurrentHashMap2 = rVar.A;
        if (!(concurrentHashMap2.containsKey(num) && Boolean.TRUE.equals(concurrentHashMap2.get(num))) && i10 == 0) {
            return;
        }
        if (i10 != Integer.MIN_VALUE && i10 != 0) {
            concurrentHashMap2.put(num, Boolean.TRUE);
        }
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue2, iIntValue, "按键 wrappedId=", ", propertyId=", ", state=");
            sbO.append(i10);
            sbO.append(", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void j(r rVar, Object obj) {
        int iIntValue;
        rVar.getClass();
        Integer num = (Integer) r(obj, "getPropertyId", new Object[0]);
        int iIntValue2 = num.intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        ConcurrentHashMap concurrentHashMap = rVar.z;
        int iIntValue3 = -1;
        try {
            iIntValue = concurrentHashMap.containsKey(num) ? ((Integer) concurrentHashMap.get(num)).intValue() : -1;
            try {
                iIntValue3 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
            iIntValue = -1;
        }
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "大灯 wrappedId=", ", propertyId=", ", headLampState=");
            sbO.append(iIntValue3);
            sbO.append(", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void k(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "发动机 propertyId=", ", ignitionState=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static Object l(r rVar, Object obj, Method method, Object[] objArr, String str) {
        rVar.getClass();
        String name = method.getName();
        if ("hashCode".equals(name)) {
            return Integer.valueOf(System.identityHashCode(obj));
        }
        Object obj2 = null;
        if ("equals".equals(name)) {
            if (objArr != null && objArr.length > 0) {
                obj2 = objArr[0];
            }
            return Boolean.valueOf(obj == obj2);
        }
        if (!"toString".equals(name)) {
            return null;
        }
        StringBuilder sbD = da.b.d("FlyOSProxy(", str, ")@");
        sbD.append(Integer.toHexString(System.identityHashCode(obj)));
        return sbD.toString();
    }

    public static void m(r rVar, Object obj) {
        rVar.getClass();
        Integer num = (Integer) r(obj, "getPropertyId", new Object[0]);
        int iIntValue = num.intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        ConcurrentHashMap concurrentHashMap = rVar.f3888y;
        int iIntValue2 = concurrentHashMap.containsKey(num) ? ((Integer) concurrentHashMap.get(num)).intValue() : -1;
        int iIntValue3 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue2, iIntValue, "车门 wrappedId=", ", propertyId=", ", trunkState=");
            sbO.append(iIntValue3);
            sbO.append(", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void n(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        int iIntValue2 = objR instanceof Integer ? ((Integer) objR).intValue() : Integer.MIN_VALUE;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            StringBuilder sbO = ta.q.o(iIntValue, iIntValue2, "转向灯 propertyId=", ", turnSignalState=", ", rawValue=");
            sbO.append(objR);
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, sbO.toString());
        }
    }

    public static void o(r rVar, Object obj) {
        rVar.getClass();
        int iIntValue = ((Integer) r(obj, "getPropertyId", new Object[0])).intValue();
        Object objR = r(obj, "getValue", new Object[0]);
        float fFloatValue = objR instanceof Number ? ((Number) objR).floatValue() : Float.NaN;
        i1 i1Var = rVar.f3867b;
        if (i1Var != null) {
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, "速度 propertyId=" + iIntValue + ", speedValue=" + fFloatValue + ", rawValue=" + objR);
        }
    }

    public static void p(r rVar) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (rVar.f3872g == null) {
            return;
        }
        Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
        try {
            try {
                Method method = rVar.f3872g.getClass().getMethod("unregisterCallback", cls);
                if (rVar.f3875j != null) {
                    method.invoke(rVar.f3872g, rVar.f3875j);
                }
                if (rVar.f3876k != null) {
                    method.invoke(rVar.f3872g, rVar.f3876k);
                }
                if (rVar.l != null) {
                    method.invoke(rVar.f3872g, rVar.l);
                }
                if (rVar.f3877m != null) {
                    method.invoke(rVar.f3872g, rVar.f3877m);
                }
                if (rVar.f3878n != null) {
                    method.invoke(rVar.f3872g, rVar.f3878n);
                }
                if (rVar.f3879o != null) {
                    method.invoke(rVar.f3872g, rVar.f3879o);
                }
                if (rVar.f3880p != null) {
                    method.invoke(rVar.f3872g, rVar.f3880p);
                }
                if (rVar.f3881q != null) {
                    method.invoke(rVar.f3872g, rVar.f3881q);
                }
                if (rVar.r != null) {
                    method.invoke(rVar.f3872g, rVar.r);
                }
                if (rVar.f3882s != null) {
                    method.invoke(rVar.f3872g, rVar.f3882s);
                }
                if (rVar.f3883t != null) {
                    method.invoke(rVar.f3872g, rVar.f3883t);
                }
                if (rVar.f3884u != null) {
                    method.invoke(rVar.f3872g, rVar.f3884u);
                }
            } catch (NoSuchMethodException unused) {
                Method method2 = rVar.f3872g.getClass().getMethod("unregisterCallback", cls, Integer.TYPE);
                if (rVar.f3875j != null) {
                    Iterator it = rVar.f3887x.keySet().iterator();
                    while (it.hasNext()) {
                        method2.invoke(rVar.f3872g, rVar.f3875j, (Integer) it.next());
                    }
                }
                if (rVar.f3876k != null) {
                    method2.invoke(rVar.f3872g, rVar.f3876k, 289408001);
                }
                if (rVar.l != null) {
                    Iterator it2 = rVar.f3888y.keySet().iterator();
                    while (it2.hasNext()) {
                        method2.invoke(rVar.f3872g, rVar.l, (Integer) it2.next());
                    }
                }
                if (rVar.f3877m != null) {
                    Iterator it3 = rVar.z.keySet().iterator();
                    while (it3.hasNext()) {
                        method2.invoke(rVar.f3872g, rVar.f3877m, (Integer) it3.next());
                    }
                }
                if (rVar.f3878n != null) {
                    method2.invoke(rVar.f3872g, rVar.f3878n, 289408008);
                }
                if (rVar.f3879o != null) {
                    method2.invoke(rVar.f3872g, rVar.f3879o, 289408009);
                }
                if (rVar.f3880p != null) {
                    method2.invoke(rVar.f3872g, rVar.f3880p, 371198722);
                }
                if (rVar.f3881q != null) {
                    method2.invoke(rVar.f3872g, rVar.f3881q, 291504647);
                }
                if (rVar.r != null) {
                    method2.invoke(rVar.f3872g, rVar.r, 291504901);
                }
                if (rVar.f3882s != null) {
                    method2.invoke(rVar.f3872g, rVar.f3882s, 287310600);
                }
                if (rVar.f3883t != null) {
                    method2.invoke(rVar.f3872g, rVar.f3883t, 289475072);
                }
                if (rVar.f3884u != null) {
                    method2.invoke(rVar.f3872g, rVar.f3884u, 289475073);
                }
            }
        } catch (NoSuchMethodException unused2) {
        }
    }

    public static Object r(Object obj, String str, Object... objArr) {
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            Object obj2 = objArr[i10];
            if (obj2 instanceof Integer) {
                clsArr[i10] = Integer.TYPE;
            } else if (obj2 instanceof Float) {
                clsArr[i10] = Float.TYPE;
            } else if (obj2 instanceof Boolean) {
                clsArr[i10] = Boolean.TYPE;
            } else if (obj2 instanceof Long) {
                clsArr[i10] = Long.TYPE;
            } else if (obj2 instanceof Double) {
                clsArr[i10] = Double.TYPE;
            } else {
                clsArr[i10] = obj2.getClass();
            }
        }
        return obj.getClass().getMethod(str, clsArr).invoke(obj, objArr);
    }

    public final Object q(int i10) {
        return r(this.f3874i, "getWrappedPropertyId", 2, Integer.valueOf(i10));
    }

    public final void s(String str, Throwable th2) {
        Throwable targetException = th2;
        while (targetException instanceof InvocationTargetException) {
            InvocationTargetException invocationTargetException = (InvocationTargetException) targetException;
            if (invocationTargetException.getTargetException() == null || invocationTargetException.getTargetException() == targetException) {
                break;
            } else {
                targetException = invocationTargetException.getTargetException();
            }
        }
        if (targetException != null) {
            th2 = targetException;
        }
        th2.getMessage();
        i1 i1Var = this.f3867b;
        if (i1Var != null) {
            ActivityTextFlyOS12.x((ActivityTextFlyOS12) i1Var.f15727b, "Error where=" + str + ", error=" + th2);
        }
    }

    public final void t(int i10, Object obj) {
        Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
        try {
            try {
                this.f3872g.getClass().getMethod("registerCallback", cls, Integer.TYPE, Float.TYPE).invoke(this.f3872g, obj, Integer.valueOf(i10), Float.valueOf(0.0f));
            } catch (NoSuchMethodException unused) {
                Class<?> cls2 = this.f3872g.getClass();
                Class<?> cls3 = Integer.TYPE;
                cls2.getMethod("registerCallback", cls, cls3, cls3).invoke(this.f3872g, obj, Integer.valueOf(i10), 0);
            }
        } catch (NoSuchMethodException unused2) {
            throw new NoSuchMethodException("No compatible CarPropertyManager.registerCallback found");
        }
    }
}

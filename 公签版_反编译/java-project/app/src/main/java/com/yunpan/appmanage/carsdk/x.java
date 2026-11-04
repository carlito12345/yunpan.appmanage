package com.yunpan.appmanage.carsdk;

import a2.g1;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.os.Looper;
import com.yunpan.appmanage.service.AccService;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f3900s = {1090651136, 1090650368, 1090650624, 1090650880, 1090652160, 1090651392};

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f3901a;

    /* renamed from: b, reason: collision with root package name */
    public final ContextWrapper f3902b;

    /* renamed from: c, reason: collision with root package name */
    public final v f3903c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Object f3904d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Object f3905e;

    /* renamed from: f, reason: collision with root package name */
    public volatile Object f3906f;

    /* renamed from: g, reason: collision with root package name */
    public final ConcurrentHashMap f3907g;

    /* renamed from: h, reason: collision with root package name */
    public final ConcurrentHashMap f3908h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3909i;

    /* renamed from: j, reason: collision with root package name */
    public final u f3910j;

    /* renamed from: k, reason: collision with root package name */
    public final z7.s f3911k;
    public final HashMap l;

    /* renamed from: m, reason: collision with root package name */
    public final ConcurrentHashMap f3912m;

    /* renamed from: n, reason: collision with root package name */
    public final HashMap f3913n;

    /* renamed from: o, reason: collision with root package name */
    public final HashMap f3914o;

    /* renamed from: p, reason: collision with root package name */
    public int f3915p;

    /* renamed from: q, reason: collision with root package name */
    public final int f3916q;
    public final int r;

    public x(da.g gVar, boolean z, v vVar) throws Exception {
        this.f3901a = new HashSet();
        this.f3907g = new ConcurrentHashMap();
        this.f3908h = new ConcurrentHashMap();
        this.f3909i = false;
        this.f3910j = new u(this, Looper.getMainLooper(), 0);
        this.l = new HashMap();
        this.f3912m = new ConcurrentHashMap();
        this.f3913n = new HashMap();
        this.f3914o = new HashMap();
        this.f3915p = 0;
        this.f3916q = 600;
        this.r = 333;
        k0 k0Var = j0.f3843a;
        if (k0Var.f3847c == null) {
            throw new Exception("car未连接");
        }
        this.f3909i = z;
        this.f3902b = gVar;
        this.f3903c = vVar;
        e();
        vVar.q();
        k();
        j();
        k0Var.f3852h = new s(this, 0);
    }

    public static void a(x xVar, Object obj) {
        xVar.getClass();
        int iIntValue = ((Integer) g(obj, "getPropertyId", new Object[0])).intValue();
        int iIntValue2 = ((Integer) g(obj, "getAreaId", new Object[0])).intValue();
        int iIntValue3 = ((Integer) g(obj, "getStatus", new Object[0])).intValue();
        xVar.f3903c.F(g(obj, "getValue", new Object[0]), iIntValue, iIntValue2, iIntValue3);
    }

    public static void b(x xVar, Object obj) {
        int i10 = 0;
        xVar.getClass();
        Integer num = (Integer) g(obj, "getPropertyId", new Object[0]);
        int iIntValue = num.intValue();
        Object objG = g(obj, "getValue", new Object[0]);
        ConcurrentHashMap concurrentHashMap = xVar.f3907g;
        int iIntValue2 = concurrentHashMap.containsKey(num) ? ((Integer) concurrentHashMap.get(num)).intValue() : -1;
        int iIntValue3 = objG instanceof Integer ? ((Integer) objG).intValue() : Integer.MIN_VALUE;
        if (iIntValue3 == 0 || iIntValue3 == 1 || iIntValue3 == 2 || iIntValue3 == 3 || iIntValue3 == 4 || iIntValue3 == 5 || iIntValue3 == 6) {
            i10 = iIntValue3;
        } else if (iIntValue3 != 1090650369) {
            i10 = iIntValue3 == 1090650370 ? 1 : iIntValue3 == 1090650371 ? 2 : iIntValue3 == 1090650372 ? 3 : iIntValue3 == 1090650373 ? 4 : Integer.MIN_VALUE;
        }
        ConcurrentHashMap concurrentHashMap2 = xVar.f3908h;
        if (!(concurrentHashMap2.containsKey(num) && Boolean.TRUE.equals(concurrentHashMap2.get(num))) && i10 == 0) {
            return;
        }
        if (i10 != Integer.MIN_VALUE && i10 != 0) {
            concurrentHashMap2.put(num, Boolean.TRUE);
        }
        v vVar = xVar.f3903c;
        if (vVar != null) {
            vVar.J(objG, iIntValue2, iIntValue, i10);
        }
    }

    public static Object c(x xVar, Object obj, Method method, Object[] objArr, String str) {
        xVar.getClass();
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
        StringBuilder sbD = da.b.d("FlyOS18Proxy(", str, ")@");
        sbD.append(Integer.toHexString(System.identityHashCode(obj)));
        return sbD.toString();
    }

    public static void d(x xVar, String str, Throwable th2) {
        xVar.getClass();
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
        v vVar = xVar.f3903c;
        if (vVar != null) {
            vVar.v(str, th2);
        }
    }

    public static ArrayList f() throws Exception {
        Integer[] numArr;
        k0 k0Var = j0.f3843a;
        Integer[] numArr2 = null;
        List list = (List) k0Var.f3847c.getClass().getMethod("getPropertyList", null).invoke(k0Var.f3847c, null);
        if (list == null || list.isEmpty()) {
            throw new Exception("列表为空");
        }
        Class<?> cls = list.get(0).getClass();
        Method method = cls.getMethod("getPropertyId", null);
        Method method2 = cls.getMethod("getAccess", null);
        Method method3 = cls.getMethod("getAreaIds", null);
        Method method4 = cls.getMethod("getChangeMode", null);
        Method method5 = cls.getMethod("getAreaType", null);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            int iIntValue = ((Integer) method.invoke(obj, numArr2)).intValue();
            int iIntValue2 = ((Integer) method2.invoke(obj, numArr2)).intValue();
            int[] iArr = (int[]) method3.invoke(obj, numArr2);
            int iIntValue3 = ((Integer) method4.invoke(obj, numArr2)).intValue();
            int iIntValue4 = ((Integer) method5.invoke(obj, numArr2)).intValue();
            if (iArr == null) {
                numArr = numArr2;
            } else if (iArr.length == 0) {
                numArr = zg.a.f19572a;
            } else {
                Integer[] numArr3 = new Integer[iArr.length];
                Arrays.setAll(numArr3, new com.hierynomus.smbfs.a(1, iArr));
                numArr = numArr3;
            }
            arrayList.add(new w(iIntValue, iIntValue2, Arrays.asList(numArr), iIntValue3, iIntValue4));
            numArr2 = null;
        }
        return arrayList;
    }

    public static Object g(Object obj, String str, Object... objArr) {
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

    public static boolean h(Context context) throws PackageManager.NameNotFoundException {
        try {
            context.getPackageManager().getApplicationInfo("com.flyme.auto.keyserver", 0);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean i(Context context) {
        z7.s sVarR;
        try {
            if (h(context) && (sVarR = q4.a.r(context)) != null && sVarR.o("isOn").b()) {
                return !sVarR.p("maps").f19478a.isEmpty();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void l(int i10, Object obj) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
        try {
            try {
                k0 k0Var = j0.f3843a;
                k0Var.f3847c.getClass().getMethod("registerCallback", cls, Integer.TYPE, Float.TYPE).invoke(k0Var.f3847c, obj, Integer.valueOf(i10), Float.valueOf(0.0f));
            } catch (NoSuchMethodException unused) {
                k0 k0Var2 = j0.f3843a;
                Class<?> cls2 = k0Var2.f3847c.getClass();
                Class<?> cls3 = Integer.TYPE;
                cls2.getMethod("registerCallback", cls, cls3, cls3).invoke(k0Var2.f3847c, obj, Integer.valueOf(i10), 0);
            }
        } catch (NoSuchMethodException unused2) {
            throw new NoSuchMethodException("No compatible CarPropertyManager.registerCallback found");
        }
    }

    public final void e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f3904d != null) {
            return;
        }
        Object objInvoke = Class.forName("com.ecarx.xui.adaptapi.car.Car").getMethod("createWrapper", Context.class).invoke(null, this.f3902b);
        if (objInvoke == null) {
            throw new IllegalStateException("AdaptAPI createWrapper returned null");
        }
        this.f3904d = objInvoke;
    }

    public final void j() throws ClassNotFoundException {
        if (j0.f3843a.f3847c == null) {
            throw new IllegalStateException("carPropertyManager is null, call start() and wait for connection first");
        }
        if (this.f3906f == null) {
            Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
            this.f3906f = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new t(this, 1));
        }
        if (this.f3909i) {
            Iterator it = f().iterator();
            while (it.hasNext()) {
                w wVar = (w) it.next();
                if (wVar.f3898d == 0) {
                    this.f3901a.add(Integer.valueOf(wVar.f3895a));
                }
            }
        } else {
            this.f3901a.add(289408001);
        }
        Iterator it2 = this.f3901a.iterator();
        while (it2.hasNext()) {
            try {
                l(((Integer) it2.next()).intValue(), this.f3906f);
            } catch (Exception unused) {
            }
        }
    }

    public final void k() throws ClassNotFoundException {
        if (j0.f3843a.f3847c == null) {
            throw new IllegalStateException("carPropertyManager is null, call start() and wait for connection first");
        }
        if (this.f3905e == null) {
            Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
            this.f3905e = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new t(this, 0));
        }
        this.f3907g.clear();
        this.f3908h.clear();
        int[] iArr = f3900s;
        for (int i10 = 0; i10 < 6; i10++) {
            int i11 = iArr[i10];
            try {
                Object objG = g(this.f3904d, "getWrappedPropertyId", 2, Integer.valueOf(i11));
                if (objG != null) {
                    Integer num = (Integer) g(objG, "getPropertyId", new Object[0]);
                    int iIntValue = num.intValue();
                    this.f3907g.put(num, Integer.valueOf(i11));
                    l(iIntValue, this.f3905e);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void m() {
        j0.f3843a.f3852h = null;
        u uVar = this.f3910j;
        if (uVar != null) {
            uVar.removeCallbacksAndMessages(null);
        }
        try {
            o();
        } catch (Throwable unused) {
        }
        try {
            n();
        } catch (Throwable unused2) {
        }
        try {
            this.f3907g.clear();
            this.f3908h.clear();
        } catch (Exception unused3) {
        }
        this.f3905e = null;
        this.f3906f = null;
        this.f3904d = null;
    }

    public final void n() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f3906f == null) {
            return;
        }
        Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
        try {
            try {
                k0 k0Var = j0.f3843a;
                k0Var.f3847c.getClass().getMethod("unregisterCallback", cls).invoke(k0Var.f3847c, this.f3906f);
            } catch (NoSuchMethodException unused) {
                Method method = j0.f3843a.f3847c.getClass().getMethod("unregisterCallback", cls, Integer.TYPE);
                Iterator it = this.f3901a.iterator();
                while (it.hasNext()) {
                    Integer num = (Integer) it.next();
                    num.getClass();
                    method.invoke(j0.f3843a.f3847c, this.f3906f, num);
                }
            }
        } catch (NoSuchMethodException unused2) {
        }
    }

    public final void o() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f3905e == null) {
            return;
        }
        Class<?> cls = Class.forName("android.car.hardware.property.CarPropertyManager$CarPropertyEventCallback");
        try {
            try {
                k0 k0Var = j0.f3843a;
                k0Var.f3847c.getClass().getMethod("unregisterCallback", cls).invoke(k0Var.f3847c, this.f3905e);
            } catch (NoSuchMethodException unused) {
                Method method = j0.f3843a.f3847c.getClass().getMethod("unregisterCallback", cls, Integer.TYPE);
                Iterator it = this.f3907g.keySet().iterator();
                while (it.hasNext()) {
                    method.invoke(j0.f3843a.f3847c, this.f3905e, (Integer) it.next());
                }
            }
        } catch (NoSuchMethodException unused2) {
        }
    }

    public x(AccService accService) throws Exception {
        this.f3901a = new HashSet();
        this.f3907g = new ConcurrentHashMap();
        this.f3908h = new ConcurrentHashMap();
        this.f3909i = false;
        this.f3910j = new u(this, Looper.getMainLooper(), 0);
        this.l = new HashMap();
        this.f3912m = new ConcurrentHashMap();
        this.f3913n = new HashMap();
        this.f3914o = new HashMap();
        this.f3915p = 0;
        this.f3916q = 600;
        this.r = 333;
        this.f3902b = accService;
        if (j0.f3843a.f3847c != null) {
            z7.s sVarR = q4.a.r(accService);
            this.f3911k = sVarR;
            if (sVarR != null) {
                z7.o oVarP = sVarR.p("maps");
                if (sVarR.o("isOn").b() && !oVarP.f19478a.isEmpty()) {
                    for (int i10 = 0; i10 < oVarP.f19478a.size(); i10++) {
                        z7.s sVarG = oVarP.l(i10).g();
                        if (sVarG.o("isOpen").b()) {
                            if (!sVarG.p("click").f19478a.isEmpty()) {
                                this.l.put(Integer.valueOf(sVarG.o("type").e()), sVarG.p("click"));
                            }
                            b8.n nVar = sVarG.f19480a;
                            if (nVar.containsKey("longClick") && !sVarG.p("longClick").f19478a.isEmpty()) {
                                this.f3914o.put(Integer.valueOf(sVarG.o("type").e()), sVarG.p("longClick"));
                            }
                            if (nVar.containsKey("doubleClick") && !sVarG.p("doubleClick").f19478a.isEmpty()) {
                                this.f3913n.put(Integer.valueOf(sVarG.o("type").e()), sVarG.p("doubleClick"));
                            }
                        }
                    }
                }
                if (this.f3911k.f19480a.containsKey("triggerTime_double")) {
                    this.f3916q = this.f3911k.o("triggerTime_double").e();
                }
                if (this.f3911k.f19480a.containsKey("triggerTime_long")) {
                    this.r = this.f3911k.o("triggerTime_long").e();
                }
                this.f3903c = new g1(10, this, accService, false);
                e();
                k();
                j();
                j0.f3843a.f3852h = new s(this, 1);
                return;
            }
            throw new Exception();
        }
        throw new Exception("car 未连接");
    }
}

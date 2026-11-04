package com.yunpan.appmanage.carsdk;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import com.yunpan.appmanage.base.AppStart;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3845a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3846b;

    /* renamed from: c, reason: collision with root package name */
    public Object f3847c;

    /* renamed from: d, reason: collision with root package name */
    public Object f3848d;

    /* renamed from: e, reason: collision with root package name */
    public Object f3849e;

    /* renamed from: f, reason: collision with root package name */
    public Object f3850f;

    /* renamed from: g, reason: collision with root package name */
    public Object f3851g;

    /* renamed from: h, reason: collision with root package name */
    public Object f3852h;

    /* renamed from: i, reason: collision with root package name */
    public Object f3853i;

    public k0(int i10) {
        switch (i10) {
            case 1:
                break;
            default:
                this.f3846b = null;
                this.f3847c = null;
                this.f3848d = null;
                this.f3845a = false;
                this.f3852h = null;
                this.f3853i = new f(2, this);
                break;
        }
    }

    public static k0 b() {
        return j0.f3843a;
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

    public void a() throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, IllegalArgumentException, InvocationTargetException {
        Object objInvoke;
        f fVar = (f) this.f3853i;
        if (this.f3846b == null && Build.VERSION.SDK_INT >= 26) {
            try {
                AppStart appStart = AppStart.f3772h;
                if (appStart.f3775c.checkPermission("android.permission.DEVICE_POWER", appStart.getPackageName()) != 0) {
                    return;
                }
                this.f3845a = false;
                Class<?> cls = Class.forName("android.car.Car");
                try {
                    objInvoke = cls.getMethod("createCar", Context.class, ServiceConnection.class, Handler.class).invoke(null, (Context) this.f3851g, fVar, (Handler) this.f3849e);
                } catch (NoSuchMethodException e7) {
                    e7.printStackTrace();
                    objInvoke = null;
                }
                if (objInvoke == null) {
                    try {
                        objInvoke = cls.getMethod("createCar", Context.class, ServiceConnection.class).invoke(null, (Context) this.f3851g, fVar);
                    } catch (NoSuchMethodException e10) {
                        e10.printStackTrace();
                    }
                }
                if (objInvoke == null) {
                    try {
                        objInvoke = cls.getMethod("createCar", Context.class).invoke(null, (Context) this.f3851g);
                    } catch (NoSuchMethodException e11) {
                        e11.printStackTrace();
                    }
                }
                if (objInvoke == null) {
                    throw new NoSuchMethodException("连接Car失败");
                }
                this.f3846b = objInvoke;
                g(objInvoke, "connect", new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    public int c(int i10) {
        Object obj = this.f3848d;
        return obj == null ? i10 : ((Integer) g(obj, "getVolumeGroupIdForUsage", Integer.valueOf(i10))).intValue();
    }

    public int d(int i10) {
        if (this.f3848d == null) {
            return 0;
        }
        try {
            int iC = c(i10);
            try {
                Class<?> cls = this.f3848d.getClass();
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod("getGroupMaxVolume", cls2, cls2).invoke(this.f3848d, 0, Integer.valueOf(iC))).intValue();
            } catch (Exception e7) {
                e7.printStackTrace();
                try {
                    return ((Integer) this.f3848d.getClass().getMethod("getGroupMaxVolume", Integer.TYPE).invoke(this.f3848d, Integer.valueOf(iC))).intValue();
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return 0;
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    public int e(int i10) {
        if (this.f3848d == null) {
            return 0;
        }
        try {
            int iC = c(i10);
            try {
                Class<?> cls = this.f3848d.getClass();
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod("getGroupMinVolume", cls2, cls2).invoke(this.f3848d, 0, Integer.valueOf(iC))).intValue();
            } catch (Exception unused) {
                return ((Integer) this.f3848d.getClass().getMethod("getGroupMinVolume", Integer.TYPE).invoke(this.f3848d, Integer.valueOf(iC))).intValue();
            }
        } catch (Exception unused2) {
            return 0;
        }
    }

    public int f(int i10) {
        if (this.f3848d == null) {
            return 0;
        }
        try {
            int iC = c(i10);
            try {
                Class<?> cls = this.f3848d.getClass();
                Class<?> cls2 = Integer.TYPE;
                return ((Integer) cls.getMethod("getGroupVolume", cls2, cls2).invoke(this.f3848d, 0, Integer.valueOf(iC))).intValue();
            } catch (Exception unused) {
                return ((Integer) this.f3848d.getClass().getMethod("getGroupVolume", Integer.TYPE).invoke(this.f3848d, Integer.valueOf(iC))).intValue();
            }
        } catch (Exception unused2) {
            return 0;
        }
    }

    public void h(int i10, int i11) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (this.f3848d == null) {
            return;
        }
        try {
            int iC = c(i10);
            try {
                Class<?> cls = this.f3848d.getClass();
                Class<?> cls2 = Integer.TYPE;
                cls.getMethod("setGroupVolume", cls2, cls2, cls2, cls2).invoke(this.f3848d, 0, Integer.valueOf(iC), Integer.valueOf(i11), 0);
            } catch (Throwable unused) {
                Class<?> cls3 = this.f3848d.getClass();
                Class<?> cls4 = Integer.TYPE;
                cls3.getMethod("setGroupVolume", cls4, cls4, cls4).invoke(this.f3848d, Integer.valueOf(iC), Integer.valueOf(i11), 0);
            }
        } catch (Exception unused2) {
        }
    }
}

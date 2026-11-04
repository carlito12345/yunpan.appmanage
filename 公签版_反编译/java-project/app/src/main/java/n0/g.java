package n0;

import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import m0.d0;
import m0.i0;
import o0.l;
import o0.m;
import o0.o;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f11241a = null;

    public static int a(Context context, String str) {
        boolean zA = true;
        if (str == null) {
            throw new NullPointerException("permission must be non-null");
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33 || !TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        i0 i0Var = new i0(context);
        if (i10 >= 24) {
            zA = d0.a(i0Var.f10764b);
        } else if (i10 >= 19) {
            AppOpsManager appOpsManagerG = m0.h.g(context.getSystemService("appops"));
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            String packageName = context.getApplicationContext().getPackageName();
            int i11 = applicationInfo.uid;
            try {
                Class<?> cls = Class.forName(com.hierynomus.security.jce.a.e().getName());
                Class<?> cls2 = Integer.TYPE;
                Method method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
                Integer num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
                num.getClass();
                if (((Integer) method.invoke(appOpsManagerG, num, Integer.valueOf(i11), packageName)).intValue() != 0) {
                    zA = false;
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
            }
        }
        return zA ? 0 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int b(Context context, String str) {
        int iA;
        int iMyPid = Process.myPid();
        int iMyUid = Process.myUid();
        String packageName = context.getPackageName();
        if (context.checkPermission(str, iMyPid, iMyUid) == -1) {
            return -1;
        }
        int i10 = Build.VERSION.SDK_INT;
        String strD = i10 >= 23 ? m0.i.d(str) : null;
        if (strD != null) {
            if (packageName == null) {
                String[] packagesForUid = context.getPackageManager().getPackagesForUid(iMyUid);
                if (packagesForUid == null || packagesForUid.length <= 0) {
                    return -1;
                }
                packageName = packagesForUid[0];
            }
            int iMyUid2 = Process.myUid();
            String packageName2 = context.getPackageName();
            int iC = 1;
            if (iMyUid2 == iMyUid && qf.c.o(packageName2, packageName)) {
                if (i10 >= 29) {
                    AppOpsManager appOpsManagerC = m0.j.c(context);
                    iA = m0.j.a(appOpsManagerC, strD, Binder.getCallingUid(), packageName);
                    if (iA == 0) {
                        iA = m0.j.a(appOpsManagerC, strD, iMyUid, m0.j.b(context));
                    }
                    if (iA != 0) {
                        return -2;
                    }
                } else if (i10 >= 23) {
                    iC = m0.i.c(m0.h.g(m0.i.a(context, com.hierynomus.security.jce.a.e())), strD, packageName);
                }
            } else if (i10 >= 23) {
                iC = m0.i.c(m0.h.g(m0.i.a(context, com.hierynomus.security.jce.a.e())), strD, packageName);
            }
            iA = iC;
            if (iA != 0) {
            }
        }
        return 0;
    }

    public static int c(Context context, int i10) {
        return Build.VERSION.SDK_INT >= 23 ? d.a(context, i10) : context.getResources().getColor(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
    
        if (r5.f11469c == r8.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList d(Context context, int i10) throws Resources.NotFoundException {
        ColorStateList colorStateListA;
        ColorStateList colorStateList;
        l lVar;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        m mVar = new m(resources, theme);
        synchronized (o.f11474c) {
            try {
                SparseArray sparseArray = (SparseArray) o.f11473b.get(mVar);
                colorStateListA = null;
                if (sparseArray == null || sparseArray.size() <= 0 || (lVar = (l) sparseArray.get(i10)) == null) {
                    colorStateList = null;
                } else {
                    if (lVar.f11468b.equals(resources.getConfiguration())) {
                        if (theme != null || lVar.f11469c != 0) {
                            if (theme != null) {
                            }
                        }
                        colorStateList = lVar.f11467a;
                    }
                    sparseArray.remove(i10);
                    colorStateList = null;
                }
            } finally {
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        ThreadLocal threadLocal = o.f11472a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i10, typedValue, true);
        int i11 = typedValue.type;
        if (i11 < 28 || i11 > 31) {
            try {
                colorStateListA = o0.c.a(resources, resources.getXml(i10), theme);
            } catch (Exception unused) {
            }
        }
        if (colorStateListA == null) {
            return Build.VERSION.SDK_INT >= 23 ? o0.k.b(resources, i10, theme) : resources.getColorStateList(i10);
        }
        o.a(mVar, i10, colorStateListA, theme);
        return colorStateListA;
    }

    public static Drawable e(Context context, int i10) {
        return Build.VERSION.SDK_INT >= 21 ? c.b(context, i10) : context.getResources().getDrawable(i10);
    }
}

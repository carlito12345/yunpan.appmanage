package u;

import android.view.InflateException;
import android.view.MenuItem;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class g implements MenuItem.OnMenuItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public static final Class[] f15119c = {MenuItem.class};

    /* renamed from: a, reason: collision with root package name */
    public final Object f15120a;

    /* renamed from: b, reason: collision with root package name */
    public final Method f15121b;

    public g(Object obj, String str) {
        this.f15120a = obj;
        Class<?> cls = obj.getClass();
        try {
            this.f15121b = cls.getMethod(str, f15119c);
        } catch (Exception e7) {
            StringBuilder sbD = da.b.d("Couldn't resolve menu item onClick handler ", str, " in class ");
            sbD.append(cls.getName());
            InflateException inflateException = new InflateException(sbD.toString());
            inflateException.initCause(e7);
            throw inflateException;
        }
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method = this.f15121b;
        try {
            Class<?> returnType = method.getReturnType();
            Class<?> cls = Boolean.TYPE;
            Object obj = this.f15120a;
            if (returnType == cls) {
                return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
            }
            method.invoke(obj, menuItem);
            return true;
        } catch (Exception e7) {
            throw new RuntimeException(e7);
        }
    }
}

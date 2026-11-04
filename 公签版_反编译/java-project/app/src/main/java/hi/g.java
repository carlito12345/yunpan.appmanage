package hi;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f8228a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final Method f8229b;

    static {
        new HashMap();
        try {
            f8229b = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
        } catch (ClassNotFoundException | NoSuchMethodException e7) {
            Log.getStackTraceString(e7);
        }
    }

    public static IBinder a(String str) {
        HashMap map = f8228a;
        IBinder iBinder = (IBinder) map.get(str);
        if (iBinder == null) {
            try {
                iBinder = (IBinder) f8229b.invoke(null, str);
            } catch (IllegalAccessException | InvocationTargetException e7) {
                Log.getStackTraceString(e7);
            }
            map.put(str, iBinder);
        }
        return iBinder;
    }
}

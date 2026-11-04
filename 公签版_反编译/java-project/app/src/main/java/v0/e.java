package v0;

import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Method f16311a;

    /* renamed from: b, reason: collision with root package name */
    public static final Method f16312b;

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 21) {
            if (i10 < 24) {
                try {
                    f16312b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                    return;
                } catch (Exception e7) {
                    throw new IllegalStateException(e7);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            f16311a = cls.getMethod("getScript", String.class);
            f16312b = cls.getMethod("addLikelySubtags", String.class);
        } catch (Exception unused) {
            f16311a = null;
            f16312b = null;
        }
    }

    public static String a(Locale locale) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            return d.c(d.a(d.b(locale)));
        }
        Method method = f16312b;
        if (i10 >= 21) {
            try {
                return c.a((Locale) method.invoke(null, locale));
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return c.a(locale);
            }
        }
        String string = locale.toString();
        if (method != null) {
            try {
                string = (String) method.invoke(null, string);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        if (string == null) {
            return null;
        }
        try {
            Method method2 = f16311a;
            if (method2 != null) {
                return (String) method2.invoke(null, string);
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }
}

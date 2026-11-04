package vc;

import java.util.Properties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f16785a = LoggerFactory.getLogger((Class<?>) e.class);

    public static boolean a(Properties properties, String str, boolean z) {
        String property = properties.getProperty(str);
        return property != null ? property.toLowerCase().equals("true") : z;
    }

    public static int b(Properties properties, String str, int i10) {
        String property = properties.getProperty(str);
        if (property == null) {
            return i10;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException e7) {
            f16785a.error("Not a number", (Throwable) e7);
            return i10;
        }
    }
}

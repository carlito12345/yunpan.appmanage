package xc;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import vc.c;

/* loaded from: classes.dex */
public final class b extends a {

    /* renamed from: j, reason: collision with root package name */
    public static final Logger f18438j = LoggerFactory.getLogger((Class<?>) b.class);

    /* renamed from: k, reason: collision with root package name */
    public static b f18439k;

    public b(Properties properties) {
        super(new wc.a(properties));
    }

    public static final synchronized void c() {
        if (f18439k != null) {
            throw new c("Singleton context is already initialized");
        }
        Properties properties = new Properties();
        try {
            String property = System.getProperty("jcifs.properties");
            if (property != null && property.length() > 1) {
                FileInputStream fileInputStream = new FileInputStream(property);
                try {
                    properties.load(fileInputStream);
                    fileInputStream.close();
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        try {
                            Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th2, th3);
                        } catch (Exception unused) {
                        }
                    }
                    throw th2;
                }
            }
        } catch (IOException e7) {
            f18438j.error("Failed to load config", (Throwable) e7);
        }
        properties.putAll(System.getProperties());
        f18439k = new b(properties);
    }
}

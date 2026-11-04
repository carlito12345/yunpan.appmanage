package dh;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a, reason: collision with root package name */
    public static final Properties f4652a;

    static {
        Properties properties;
        InputStream resourceAsStream = e.class.getResourceAsStream("/systemType.properties");
        if (resourceAsStream != null) {
            properties = new Properties();
            try {
                properties.load(resourceAsStream);
            } catch (IOException unused) {
            } catch (Throwable th2) {
                try {
                    resourceAsStream.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
            try {
                resourceAsStream.close();
            } catch (IOException unused3) {
            }
        } else {
            properties = null;
        }
        f4652a = properties;
    }
}

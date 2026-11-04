package wd;

import de.d;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Properties;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final Properties f17870a;

    /* renamed from: b, reason: collision with root package name */
    public static final d f17871b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f17872c;

    static {
        Properties properties = new Properties();
        f17870a = properties;
        f17872c = "Cp850";
        f17871b = d.r();
        try {
            String property = System.getProperty("jcifs_smb1.properties");
            FileInputStream fileInputStream = (property == null || property.length() <= 1) ? null : new FileInputStream(property);
            if (fileInputStream != null) {
                properties.load(fileInputStream);
            }
            try {
                properties.putAll((Map) System.getProperties().clone());
            } catch (SecurityException unused) {
                if (d.f4630b > 1) {
                    f17871b.getClass();
                }
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
        } catch (IOException e7) {
            if (d.f4630b > 0) {
                e7.printStackTrace(f17871b);
            }
        }
        int iC = c(-1, "jcifs.smb1.util.loglevel");
        if (iC != -1) {
            d.f4630b = iC;
        }
        try {
            "".getBytes(f17872c);
        } catch (UnsupportedEncodingException unused2) {
            if (d.f4630b >= 2) {
                f17871b.getClass();
            }
            f17872c = "US-ASCII";
        }
        if (d.f4630b >= 4) {
            try {
                f17870a.store(f17871b, "JCIFS PROPERTIES");
            } catch (IOException unused3) {
            }
        }
    }

    public static boolean a(String str, boolean z) {
        String property = f17870a.getProperty(str);
        return property != null ? property.toLowerCase().equals("true") : z;
    }

    public static InetAddress b(String str, InetAddress inetAddress) {
        String property = f17870a.getProperty(str);
        if (property == null) {
            return inetAddress;
        }
        try {
            return InetAddress.getByName(property);
        } catch (UnknownHostException e7) {
            if (d.f4630b <= 0) {
                return inetAddress;
            }
            d dVar = f17871b;
            dVar.getClass();
            e7.printStackTrace(dVar);
            return inetAddress;
        }
    }

    public static int c(int i10, String str) {
        String property = f17870a.getProperty(str);
        if (property == null) {
            return i10;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException e7) {
            if (d.f4630b <= 0) {
                return i10;
            }
            e7.printStackTrace(f17871b);
            return i10;
        }
    }

    public static void d(String str) {
        f17870a.getProperty(str, null);
    }
}

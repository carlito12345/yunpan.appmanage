package org.simpleframework.xml.stream;

import com.burgstaller.okhttp.digest.fromhttpclient.HTTP;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Properties;
import tc.a;
import tc.b;
import tc.d;
import tc.e;

/* loaded from: classes3.dex */
class StreamProvider implements Provider {
    private final e factory;

    /* JADX WARN: Removed duplicated region for block: B:31:0x0062 A[Catch: SecurityException -> 0x006f, TRY_LEAVE, TryCatch #3 {SecurityException -> 0x006f, blocks: (B:29:0x005c, B:31:0x0062), top: B:69:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StreamProvider() throws IOException {
        ClassLoader classLoader;
        Object objB;
        InputStream systemResourceAsStream;
        File file;
        String property;
        Class<b> cls = b.class;
        try {
            try {
                Class<b> cls2 = b.f15064b;
                if (cls2 == null) {
                    b.f15064b = cls;
                    cls2 = cls;
                }
                if (Class.forName(cls2.getName().concat("$ClassLoaderFinderConcrete")).newInstance() == null) {
                    throw null;
                }
                throw new ClassCastException();
            } catch (Exception e7) {
                throw new a(e7.toString(), e7);
            }
        } catch (ClassNotFoundException unused) {
            Class<b> cls3 = b.f15064b;
            if (cls3 == null) {
                b.f15064b = cls;
            } else {
                cls = cls3;
            }
            classLoader = cls.getClassLoader();
            boolean z = b.f15063a;
            try {
                property = System.getProperty("javax.xml.stream.XMLInputFactory");
            } catch (SecurityException unused2) {
            }
            if (property == null) {
                b.a("found system property".concat(property));
                objB = b.b(classLoader, property);
            } else {
                try {
                    String property2 = System.getProperty("java.home");
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(property2);
                    String str = File.separator;
                    stringBuffer.append(str);
                    stringBuffer.append("lib");
                    stringBuffer.append(str);
                    stringBuffer.append("jaxp.properties");
                    file = new File(stringBuffer.toString());
                } catch (Exception e10) {
                    if (z) {
                        e10.printStackTrace();
                    }
                }
                if (file.exists()) {
                    Properties properties = new Properties();
                    properties.load(new FileInputStream(file));
                    String property3 = properties.getProperty("javax.xml.stream.XMLInputFactory");
                    if (property3 == null || property3.length() <= 0) {
                        try {
                            systemResourceAsStream = classLoader == null ? ClassLoader.getSystemResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory") : classLoader.getResourceAsStream("META-INF/services/javax.xml.stream.XMLInputFactory");
                        } catch (Exception e11) {
                            if (z) {
                                e11.printStackTrace();
                            }
                        }
                        if (systemResourceAsStream != null) {
                            b.a("found META-INF/services/javax.xml.stream.XMLInputFactory");
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(systemResourceAsStream, HTTP.UTF_8));
                            String line = bufferedReader.readLine();
                            bufferedReader.close();
                            if (line == null || "".equals(line)) {
                                b.a("loaded from fallback value: ".concat("com.bea.xml.stream.MXParserFactory"));
                                objB = b.b(classLoader, "com.bea.xml.stream.MXParserFactory");
                            } else {
                                b.a("loaded from services: ".concat(line));
                                objB = b.b(classLoader, line);
                            }
                        }
                    } else {
                        b.a("found java.home property ".concat(property3));
                        objB = b.b(classLoader, property3);
                    }
                }
            }
            if (objB == null) {
                throw new ClassCastException();
            }
        } catch (LinkageError unused3) {
            Class<b> cls4 = b.f15064b;
            if (cls4 == null) {
                b.f15064b = cls;
            } else {
                cls = cls4;
            }
            classLoader = cls.getClassLoader();
            boolean z4 = b.f15063a;
            property = System.getProperty("javax.xml.stream.XMLInputFactory");
            if (property == null) {
            }
            if (objB == null) {
            }
        }
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(InputStream inputStream) {
        throw null;
    }

    @Override // org.simpleframework.xml.stream.Provider
    public EventReader provide(Reader reader) {
        throw null;
    }

    private EventReader provide(d dVar) {
        return new StreamReader(dVar);
    }
}

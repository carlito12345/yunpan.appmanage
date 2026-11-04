package tc;

import java.io.PrintStream;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f15063a;

    /* renamed from: b, reason: collision with root package name */
    public static /* synthetic */ Class f15064b;

    static {
        try {
            f15063a = System.getProperty("xml.stream.debug") != null;
        } catch (Exception unused) {
        }
    }

    public static void a(String str) {
        if (f15063a) {
            PrintStream printStream = System.err;
            new StringBuffer("STREAM: ").append(str);
            printStream.getClass();
        }
    }

    public static Object b(ClassLoader classLoader, String str) {
        try {
            return (classLoader == null ? Class.forName(str) : classLoader.loadClass(str)).newInstance();
        } catch (ClassNotFoundException e7) {
            StringBuffer stringBuffer = new StringBuffer("Provider ");
            stringBuffer.append(str);
            stringBuffer.append(" not found");
            throw new a(stringBuffer.toString(), e7);
        } catch (Exception e10) {
            StringBuffer stringBuffer2 = new StringBuffer("Provider ");
            stringBuffer2.append(str);
            stringBuffer2.append(" could not be instantiated: ");
            stringBuffer2.append(e10);
            throw new a(stringBuffer2.toString(), e10);
        }
    }
}

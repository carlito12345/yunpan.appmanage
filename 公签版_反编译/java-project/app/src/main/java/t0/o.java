package t0;

import android.os.Build;

/* loaded from: classes.dex */
public abstract class o {
    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 18 || i10 >= 29) {
            return;
        }
        try {
            b1.o.A().getField("TRACE_TAG_APP").getLong(null);
            Class clsA = b1.o.A();
            Class<?> cls = Long.TYPE;
            clsA.getMethod("isTagEnabled", cls);
            Class clsA2 = b1.o.A();
            Class<?> cls2 = Integer.TYPE;
            clsA2.getMethod("asyncTraceBegin", cls, String.class, cls2);
            b1.o.A().getMethod("asyncTraceEnd", cls, String.class, cls2);
            b1.o.A().getMethod("traceCounter", cls, String.class, cls2);
        } catch (Exception unused) {
        }
    }

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            n.a(str);
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            n.b();
        }
    }
}

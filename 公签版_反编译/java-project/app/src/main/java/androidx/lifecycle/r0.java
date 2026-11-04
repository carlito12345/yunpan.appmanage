package androidx.lifecycle;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class r0 {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f1806a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f1807b = new LinkedHashSet();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f1808c = false;

    public static void a(Object obj) throws IOException {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e7) {
                throw new RuntimeException(e7);
            }
        }
    }

    public void b() {
    }
}

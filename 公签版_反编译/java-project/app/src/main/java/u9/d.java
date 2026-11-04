package u9;

import java.io.Closeable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import v9.e;

/* loaded from: classes.dex */
public abstract class d implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final ExecutorService f15554a = Executors.newCachedThreadPool();

    /* renamed from: b, reason: collision with root package name */
    public static boolean f15555b = false;

    public static void A(v9.a aVar) {
        synchronized (v9.c.class) {
            if (v9.c.f16685c || v9.c.b() != null) {
                throw new IllegalStateException("The main shell was already created");
            }
            v9.c.f16686d = aVar;
        }
    }

    public static e r(String... strArr) {
        e eVar = new e();
        if (strArr.length > 0) {
            eVar.f16692b.add(new v9.b(strArr));
        }
        return eVar;
    }
}

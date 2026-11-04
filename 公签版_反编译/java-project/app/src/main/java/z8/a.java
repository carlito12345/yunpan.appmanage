package z8;

import com.yunpan.appmanage.base.AppStart;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import xh.k;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f19486a = new AtomicBoolean();

    public static void a(AppStart appStart) {
        if (f19486a.getAndSet(true)) {
            return;
        }
        b bVar = new b(appStart);
        if (k.f18513a.get()) {
            throw new IllegalStateException("Already initialized");
        }
        AtomicReference atomicReference = k.f18514b;
        while (!atomicReference.compareAndSet(null, bVar)) {
            if (atomicReference.get() != null) {
                throw new IllegalStateException("Initializer was already set, possibly with a default during initialization");
            }
        }
    }
}

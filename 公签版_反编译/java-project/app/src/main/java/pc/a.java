package pc;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class a extends AtomicReference {
    public final boolean a(Throwable th2) {
        b bVar = c.f12667a;
        while (true) {
            Throwable th3 = (Throwable) get();
            if (th3 == c.f12667a) {
                return false;
            }
            Throwable bVar2 = th3 == null ? th2 : new hc.b(th3, th2);
            while (!compareAndSet(th3, bVar2)) {
                if (get() != th3) {
                    break;
                }
            }
            return true;
        }
    }

    public final Throwable b() {
        b bVar = c.f12667a;
        Throwable th2 = (Throwable) get();
        b bVar2 = c.f12667a;
        return th2 != bVar2 ? (Throwable) getAndSet(bVar2) : th2;
    }
}

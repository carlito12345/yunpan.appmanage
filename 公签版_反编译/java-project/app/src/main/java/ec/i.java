package ec;

import java.util.concurrent.TimeUnit;
import mc.l;

/* loaded from: classes.dex */
public abstract class i implements gc.b {
    public static long b(TimeUnit timeUnit) {
        return !j.f4920a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract gc.b d(Runnable runnable, long j10, TimeUnit timeUnit);

    public void e(l lVar) {
        d(lVar, 0L, TimeUnit.NANOSECONDS);
    }

    public final gc.b f(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        gc.c cVar = new gc.c();
        gc.c cVar2 = new gc.c(cVar);
        long nanos = timeUnit.toNanos(j11);
        long jB = b(TimeUnit.NANOSECONDS);
        gc.b bVarD = d(new h(this, timeUnit.toNanos(j10) + jB, runnable, jB, cVar2, nanos), j10, timeUnit);
        if (bVarD == ic.b.INSTANCE) {
            return bVarD;
        }
        cVar.b(bVarD);
        return cVar2;
    }
}

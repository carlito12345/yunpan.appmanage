package ec;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f4920a = Boolean.getBoolean("rx2.scheduler.use-nanotime");

    /* renamed from: b, reason: collision with root package name */
    public static final long f4921b = TimeUnit.MINUTES.toNanos(Long.getLong("rx2.scheduler.drift-tolerance", 15).longValue());

    public abstract i a();

    public gc.b b(y7.b bVar, TimeUnit timeUnit) {
        i iVarA = a();
        f fVar = new f(bVar, iVarA);
        iVarA.d(fVar, 0L, timeUnit);
        return fVar;
    }

    public gc.b c(mc.i iVar, long j10, long j11, TimeUnit timeUnit) {
        i iVarA = a();
        g gVar = new g(iVar, iVarA);
        gc.b bVarF = iVarA.f(gVar, j10, j11, timeUnit);
        return bVarF == ic.b.INSTANCE ? bVarF : gVar;
    }
}

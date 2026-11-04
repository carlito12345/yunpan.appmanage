package oc;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class l extends ec.i {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f11736a;

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f11737b;

    public l(m mVar) {
        boolean z = q.f11746a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, mVar);
        if (q.f11746a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            q.f11749d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.f11736a = scheduledExecutorServiceNewScheduledThreadPool;
    }

    @Override // gc.b
    public final void c() {
        if (this.f11737b) {
            return;
        }
        this.f11737b = true;
        this.f11736a.shutdownNow();
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f11737b ? ic.b.INSTANCE : g(runnable, j10, timeUnit, null);
    }

    @Override // ec.i
    public final void e(mc.l lVar) {
        d(lVar, 0L, null);
    }

    public final p g(Runnable runnable, long j10, TimeUnit timeUnit, gc.a aVar) {
        p pVar = new p(runnable, aVar);
        if (aVar != null && !aVar.b(pVar)) {
            return pVar;
        }
        ScheduledExecutorService scheduledExecutorService = this.f11736a;
        try {
            pVar.b(j10 <= 0 ? scheduledExecutorService.submit((Callable) pVar) : scheduledExecutorService.schedule((Callable) pVar, j10, timeUnit));
        } catch (RejectedExecutionException e7) {
            if (aVar != null) {
                aVar.h(pVar);
            }
            qf.c.P(e7);
        }
        return pVar;
    }
}

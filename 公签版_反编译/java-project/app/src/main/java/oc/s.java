package oc;

import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class s extends ec.j {

    /* renamed from: d, reason: collision with root package name */
    public static final m f11753d;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f11754c;

    static {
        Executors.newScheduledThreadPool(0).shutdown();
        f11753d = new m("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);
    }

    public s() {
        AtomicReference atomicReference = new AtomicReference();
        this.f11754c = atomicReference;
        boolean z = q.f11746a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f11753d);
        if (q.f11746a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            q.f11749d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override // ec.j
    public final ec.i a() {
        return new r((ScheduledExecutorService) this.f11754c.get());
    }

    @Override // ec.j
    public final gc.b b(y7.b bVar, TimeUnit timeUnit) {
        o oVar = new o(bVar);
        try {
            oVar.b(((ScheduledExecutorService) this.f11754c.get()).submit(oVar));
            return oVar;
        } catch (RejectedExecutionException e7) {
            qf.c.P(e7);
            return ic.b.INSTANCE;
        }
    }

    @Override // ec.j
    public final gc.b c(mc.i iVar, long j10, long j11, TimeUnit timeUnit) {
        ic.b bVar = ic.b.INSTANCE;
        AtomicReference atomicReference = this.f11754c;
        if (j11 > 0) {
            n nVar = new n(iVar);
            try {
                nVar.b(((ScheduledExecutorService) atomicReference.get()).scheduleAtFixedRate(nVar, j10, j11, timeUnit));
                return nVar;
            } catch (RejectedExecutionException e7) {
                qf.c.P(e7);
                return bVar;
            }
        }
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
        f fVar = new f(iVar, scheduledExecutorService);
        try {
            fVar.b(j10 <= 0 ? scheduledExecutorService.submit(fVar) : scheduledExecutorService.schedule(fVar, j10, timeUnit));
            return fVar;
        } catch (RejectedExecutionException e10) {
            qf.c.P(e10);
            return bVar;
        }
    }
}

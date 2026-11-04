package oc;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class j extends ec.j {

    /* renamed from: d, reason: collision with root package name */
    public static final m f11726d;

    /* renamed from: e, reason: collision with root package name */
    public static final m f11727e;

    /* renamed from: h, reason: collision with root package name */
    public static final i f11730h;

    /* renamed from: i, reason: collision with root package name */
    public static final boolean f11731i;

    /* renamed from: j, reason: collision with root package name */
    public static final g f11732j;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f11733c;

    /* renamed from: g, reason: collision with root package name */
    public static final TimeUnit f11729g = TimeUnit.SECONDS;

    /* renamed from: f, reason: collision with root package name */
    public static final long f11728f = Long.getLong("rx2.io-keep-alive-time", 60).longValue();

    static {
        i iVar = new i(new m("RxCachedThreadSchedulerShutdown"));
        f11730h = iVar;
        iVar.c();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx2.io-priority", 5).intValue()));
        m mVar = new m("RxCachedThreadScheduler", iMax, false);
        f11726d = mVar;
        f11727e = new m("RxCachedWorkerPoolEvictor", iMax, false);
        f11731i = Boolean.getBoolean("rx2.io-scheduled-release");
        g gVar = new g(0L, null, mVar);
        f11732j = gVar;
        gVar.f11717c.c();
        ScheduledFuture scheduledFuture = gVar.f11719e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = gVar.f11718d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public j() {
        AtomicReference atomicReference;
        m mVar = f11726d;
        g gVar = f11732j;
        this.f11733c = new AtomicReference(gVar);
        g gVar2 = new g(f11728f, f11729g, mVar);
        do {
            atomicReference = this.f11733c;
            if (atomicReference.compareAndSet(gVar, gVar2)) {
                return;
            }
        } while (atomicReference.get() == gVar);
        gVar2.f11717c.c();
        ScheduledFuture scheduledFuture = gVar2.f11719e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = gVar2.f11718d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    @Override // ec.j
    public final ec.i a() {
        return new h((g) this.f11733c.get());
    }
}

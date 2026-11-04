package oc;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final long f11715a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentLinkedQueue f11716b;

    /* renamed from: c, reason: collision with root package name */
    public final gc.a f11717c;

    /* renamed from: d, reason: collision with root package name */
    public final ScheduledExecutorService f11718d;

    /* renamed from: e, reason: collision with root package name */
    public final ScheduledFuture f11719e;

    /* renamed from: f, reason: collision with root package name */
    public final m f11720f;

    public g(long j10, TimeUnit timeUnit, m mVar) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
        ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
        long nanos = timeUnit != null ? timeUnit.toNanos(j10) : 0L;
        this.f11715a = nanos;
        this.f11716b = new ConcurrentLinkedQueue();
        this.f11717c = new gc.a(0);
        this.f11720f = mVar;
        if (timeUnit != null) {
            scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, j.f11727e);
            scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(this, nanos, nanos, TimeUnit.NANOSECONDS);
        } else {
            scheduledExecutorServiceNewScheduledThreadPool = null;
            scheduledFutureScheduleWithFixedDelay = null;
        }
        this.f11718d = scheduledExecutorServiceNewScheduledThreadPool;
        this.f11719e = scheduledFutureScheduleWithFixedDelay;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConcurrentLinkedQueue concurrentLinkedQueue = this.f11716b;
        if (concurrentLinkedQueue.isEmpty()) {
            return;
        }
        long jNanoTime = System.nanoTime();
        Iterator it = concurrentLinkedQueue.iterator();
        while (it.hasNext()) {
            i iVar = (i) it.next();
            if (iVar.f11725c > jNanoTime) {
                return;
            }
            if (concurrentLinkedQueue.remove(iVar)) {
                this.f11717c.h(iVar);
            }
        }
    }
}

package oc;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class v extends ec.i {

    /* renamed from: a, reason: collision with root package name */
    public final PriorityBlockingQueue f11762a = new PriorityBlockingQueue();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicInteger f11763b = new AtomicInteger();

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f11764c = new AtomicInteger();

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f11765d;

    @Override // gc.b
    public final void c() {
        this.f11765d = true;
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        long millis = timeUnit.toMillis(j10) + ec.i.b(TimeUnit.MILLISECONDS);
        return g(new t(runnable, this, millis), millis);
    }

    @Override // ec.i
    public final void e(mc.l lVar) {
        g(lVar, ec.i.b(TimeUnit.MILLISECONDS));
    }

    public final gc.b g(Runnable runnable, long j10) {
        boolean z = this.f11765d;
        ic.b bVar = ic.b.INSTANCE;
        if (z) {
            return bVar;
        }
        u uVar = new u(runnable, Long.valueOf(j10), this.f11764c.incrementAndGet());
        this.f11762a.add(uVar);
        if (this.f11763b.getAndIncrement() != 0) {
            return new gc.c(new y7.b(19, this, uVar, false));
        }
        int iAddAndGet = 1;
        while (!this.f11765d) {
            u uVar2 = (u) this.f11762a.poll();
            if (uVar2 == null) {
                iAddAndGet = this.f11763b.addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return bVar;
                }
            } else if (!uVar2.f11761d) {
                uVar2.f11758a.run();
            }
        }
        this.f11762a.clear();
        return bVar;
    }
}

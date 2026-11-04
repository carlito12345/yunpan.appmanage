package oc;

import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class r extends ec.i {

    /* renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f11750a;

    /* renamed from: b, reason: collision with root package name */
    public final gc.a f11751b = new gc.a(0);

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f11752c;

    public r(ScheduledExecutorService scheduledExecutorService) {
        this.f11750a = scheduledExecutorService;
    }

    @Override // gc.b
    public final void c() {
        if (this.f11752c) {
            return;
        }
        this.f11752c = true;
        this.f11751b.c();
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        boolean z = this.f11752c;
        ic.b bVar = ic.b.INSTANCE;
        if (z) {
            return bVar;
        }
        p pVar = new p(runnable, this.f11751b);
        this.f11751b.b(pVar);
        try {
            pVar.b(j10 <= 0 ? this.f11750a.submit((Callable) pVar) : this.f11750a.schedule((Callable) pVar, j10, timeUnit));
            return pVar;
        } catch (RejectedExecutionException e7) {
            c();
            qf.c.P(e7);
            return bVar;
        }
    }
}

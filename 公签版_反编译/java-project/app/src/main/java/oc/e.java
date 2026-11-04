package oc;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class e extends ec.j {

    /* renamed from: d, reason: collision with root package name */
    public static final c f11704d;

    /* renamed from: e, reason: collision with root package name */
    public static final m f11705e;

    /* renamed from: f, reason: collision with root package name */
    public static final int f11706f;

    /* renamed from: g, reason: collision with root package name */
    public static final d f11707g;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f11708c;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        f11706f = iAvailableProcessors;
        d dVar = new d(new m("RxComputationShutdown"));
        f11707g = dVar;
        dVar.c();
        m mVar = new m("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx2.computation-priority", 5).intValue())), true);
        f11705e = mVar;
        c cVar = new c(0, mVar);
        f11704d = cVar;
        for (d dVar2 : cVar.f11702b) {
            dVar2.c();
        }
    }

    public e() {
        AtomicReference atomicReference;
        m mVar = f11705e;
        c cVar = f11704d;
        this.f11708c = new AtomicReference(cVar);
        c cVar2 = new c(f11706f, mVar);
        do {
            atomicReference = this.f11708c;
            if (atomicReference.compareAndSet(cVar, cVar2)) {
                return;
            }
        } while (atomicReference.get() == cVar);
        for (d dVar : cVar2.f11702b) {
            dVar.c();
        }
    }

    @Override // ec.j
    public final ec.i a() {
        return new b(((c) this.f11708c.get()).a());
    }

    @Override // ec.j
    public final gc.b b(y7.b bVar, TimeUnit timeUnit) {
        d dVarA = ((c) this.f11708c.get()).a();
        dVarA.getClass();
        o oVar = new o(bVar);
        try {
            oVar.b(dVarA.f11736a.submit(oVar));
            return oVar;
        } catch (RejectedExecutionException e7) {
            qf.c.P(e7);
            return ic.b.INSTANCE;
        }
    }

    @Override // ec.j
    public final gc.b c(mc.i iVar, long j10, long j11, TimeUnit timeUnit) {
        d dVarA = ((c) this.f11708c.get()).a();
        dVarA.getClass();
        ic.b bVar = ic.b.INSTANCE;
        if (j11 > 0) {
            n nVar = new n(iVar);
            try {
                nVar.b(dVarA.f11736a.scheduleAtFixedRate(nVar, j10, j11, timeUnit));
                return nVar;
            } catch (RejectedExecutionException e7) {
                qf.c.P(e7);
                return bVar;
            }
        }
        ScheduledExecutorService scheduledExecutorService = dVarA.f11736a;
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

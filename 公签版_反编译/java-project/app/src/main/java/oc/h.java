package oc;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class h extends ec.i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final g f11722b;

    /* renamed from: c, reason: collision with root package name */
    public final i f11723c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f11724d = new AtomicBoolean();

    /* renamed from: a, reason: collision with root package name */
    public final gc.a f11721a = new gc.a(0);

    public h(g gVar) {
        i iVar;
        i iVar2;
        this.f11722b = gVar;
        if (gVar.f11717c.f6127b) {
            iVar2 = j.f11730h;
        } else {
            while (true) {
                if (gVar.f11716b.isEmpty()) {
                    iVar = new i(gVar.f11720f);
                    gVar.f11717c.b(iVar);
                    break;
                } else {
                    iVar = (i) gVar.f11716b.poll();
                    if (iVar != null) {
                        break;
                    }
                }
            }
            iVar2 = iVar;
        }
        this.f11723c = iVar2;
    }

    @Override // gc.b
    public final void c() {
        if (this.f11724d.compareAndSet(false, true)) {
            this.f11721a.c();
            if (j.f11731i) {
                this.f11723c.g(this, 0L, TimeUnit.NANOSECONDS, null);
                return;
            }
            g gVar = this.f11722b;
            gVar.getClass();
            long jNanoTime = System.nanoTime() + gVar.f11715a;
            i iVar = this.f11723c;
            iVar.f11725c = jNanoTime;
            gVar.f11716b.offer(iVar);
        }
    }

    @Override // ec.i
    public final gc.b d(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f11721a.f6127b ? ic.b.INSTANCE : this.f11723c.g(runnable, j10, timeUnit, this.f11721a);
    }

    @Override // java.lang.Runnable
    public final void run() {
        g gVar = this.f11722b;
        gVar.getClass();
        long jNanoTime = System.nanoTime() + gVar.f11715a;
        i iVar = this.f11723c;
        iVar.f11725c = jNanoTime;
        gVar.f11716b.offer(iVar);
    }
}

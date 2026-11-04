package oc;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class f implements Callable, gc.b {

    /* renamed from: f, reason: collision with root package name */
    public static final FutureTask f11709f = new FutureTask(jc.a.f9850a, null);

    /* renamed from: a, reason: collision with root package name */
    public final mc.i f11710a;

    /* renamed from: d, reason: collision with root package name */
    public final ScheduledExecutorService f11713d;

    /* renamed from: e, reason: collision with root package name */
    public Thread f11714e;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f11712c = new AtomicReference();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReference f11711b = new AtomicReference();

    public f(mc.i iVar, ScheduledExecutorService scheduledExecutorService) {
        this.f11710a = iVar;
        this.f11713d = scheduledExecutorService;
    }

    public final void b(Future future) {
        while (true) {
            AtomicReference atomicReference = this.f11712c;
            Future future2 = (Future) atomicReference.get();
            if (future2 == f11709f) {
                future.cancel(this.f11714e != Thread.currentThread());
                return;
            }
            while (!atomicReference.compareAndSet(future2, future)) {
                if (atomicReference.get() != future2) {
                    break;
                }
            }
            return;
        }
    }

    @Override // gc.b
    public final void c() {
        AtomicReference atomicReference = this.f11712c;
        FutureTask futureTask = f11709f;
        Future future = (Future) atomicReference.getAndSet(futureTask);
        if (future != null && future != futureTask) {
            future.cancel(this.f11714e != Thread.currentThread());
        }
        Future future2 = (Future) this.f11711b.getAndSet(futureTask);
        if (future2 == null || future2 == futureTask) {
            return;
        }
        future2.cancel(this.f11714e != Thread.currentThread());
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        this.f11714e = Thread.currentThread();
        try {
            this.f11710a.run();
            Future futureSubmit = this.f11713d.submit(this);
            loop0: while (true) {
                AtomicReference atomicReference = this.f11711b;
                Future future = (Future) atomicReference.get();
                if (future != f11709f) {
                    while (!atomicReference.compareAndSet(future, futureSubmit)) {
                        if (atomicReference.get() != future) {
                            break;
                        }
                    }
                    break loop0;
                }
                futureSubmit.cancel(this.f11714e != Thread.currentThread());
            }
            this.f11714e = null;
        } catch (Throwable th2) {
            this.f11714e = null;
            qf.c.P(th2);
        }
        return null;
    }
}

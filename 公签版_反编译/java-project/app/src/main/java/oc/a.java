package oc;

import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class a extends AtomicReference implements gc.b {

    /* renamed from: c, reason: collision with root package name */
    public static final FutureTask f11692c;

    /* renamed from: d, reason: collision with root package name */
    public static final FutureTask f11693d;

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f11694a;

    /* renamed from: b, reason: collision with root package name */
    public Thread f11695b;

    static {
        androidx.emoji2.text.o oVar = jc.a.f9850a;
        f11692c = new FutureTask(oVar, null);
        f11693d = new FutureTask(oVar, null);
    }

    public a(Runnable runnable) {
        this.f11694a = runnable;
    }

    public final void b(Future future) {
        Future future2;
        do {
            future2 = (Future) get();
            if (future2 == f11692c) {
                return;
            }
            if (future2 == f11693d) {
                future.cancel(this.f11695b != Thread.currentThread());
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // gc.b
    public final void c() {
        FutureTask futureTask;
        Future future = (Future) get();
        if (future == f11692c || future == (futureTask = f11693d) || !compareAndSet(future, futureTask) || future == null) {
            return;
        }
        future.cancel(this.f11695b != Thread.currentThread());
    }
}

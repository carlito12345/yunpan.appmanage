package oc;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes.dex */
public final class p extends AtomicReferenceArray implements Runnable, Callable, gc.b {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f11741b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11742c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public static final Object f11743d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public static final Object f11744e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f11745a;

    public p(Runnable runnable, gc.a aVar) {
        super(3);
        this.f11745a = runnable;
        lazySet(0, aVar);
    }

    public final void b(Future future) {
        Object obj;
        do {
            obj = get(1);
            if (obj == f11744e) {
                return;
            }
            if (obj == f11742c) {
                future.cancel(false);
                return;
            } else if (obj == f11743d) {
                future.cancel(true);
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }

    @Override // gc.b
    public final void c() {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        Object obj5;
        while (true) {
            Object obj6 = get(1);
            obj = f11744e;
            if (obj6 == obj || obj6 == (obj4 = f11742c) || obj6 == (obj5 = f11743d)) {
                break;
            }
            boolean z = get(2) != Thread.currentThread();
            if (z) {
                obj4 = obj5;
            }
            if (compareAndSet(1, obj6, obj4)) {
                if (obj6 != null) {
                    ((Future) obj6).cancel(z);
                }
            }
        }
        do {
            obj2 = get(0);
            if (obj2 == obj || obj2 == (obj3 = f11741b) || obj2 == null) {
                return;
            }
        } while (!compareAndSet(0, obj2, obj3));
        ((gc.a) obj2).e(this);
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        run();
        return null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean zCompareAndSet;
        Object obj2;
        Object obj3;
        Object obj4 = f11743d;
        Object obj5 = f11742c;
        Object obj6 = f11741b;
        Object obj7 = f11744e;
        lazySet(2, Thread.currentThread());
        try {
            this.f11745a.run();
        } finally {
            try {
                lazySet(2, null);
                obj2 = get(0);
                if (obj2 != obj6) {
                    ((gc.a) obj2).e(this);
                }
                do {
                    obj3 = get(1);
                    if (obj3 != obj5) {
                        return;
                    } else {
                        return;
                    }
                } while (!compareAndSet(1, obj3, obj7));
            } catch (Throwable th2) {
                do {
                    if (obj == obj5 || obj == obj4) {
                        break;
                    }
                } while (!zCompareAndSet);
            }
        }
        lazySet(2, null);
        obj2 = get(0);
        if (obj2 != obj6 && compareAndSet(0, obj2, obj7) && obj2 != null) {
            ((gc.a) obj2).e(this);
        }
        do {
            obj3 = get(1);
            if (obj3 != obj5 || obj3 == obj4) {
                return;
            }
        } while (!compareAndSet(1, obj3, obj7));
    }
}

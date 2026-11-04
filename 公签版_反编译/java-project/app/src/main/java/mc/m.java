package mc;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class m extends AtomicInteger implements kc.a, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final ec.e f11185a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11186b;

    public m(ec.e eVar, Object obj) {
        this.f11185a = eVar;
        this.f11186b = obj;
    }

    @Override // kc.a
    public final int a() {
        lazySet(1);
        return 1;
    }

    @Override // gc.b
    public final void c() {
        set(3);
    }

    @Override // kc.d
    public final void clear() {
        lazySet(3);
    }

    @Override // kc.d
    public final boolean isEmpty() {
        return get() != 1;
    }

    @Override // kc.d
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // kc.d
    public final Object poll() {
        if (get() != 1) {
            return null;
        }
        lazySet(3);
        return this.f11186b;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (get() == 0 && compareAndSet(0, 2)) {
            Object obj = this.f11186b;
            ec.e eVar = this.f11185a;
            eVar.E(obj);
            if (get() == 2) {
                lazySet(3);
                eVar.onComplete();
            }
        }
    }
}

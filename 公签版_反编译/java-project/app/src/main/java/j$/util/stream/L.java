package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
final class L extends AbstractC0052c {

    /* renamed from: j, reason: collision with root package name */
    private final F f9266j;

    /* renamed from: k, reason: collision with root package name */
    private final boolean f9267k;

    L(F f10, boolean z, AbstractC0047b abstractC0047b, Spliterator spliterator) {
        super(abstractC0047b, spliterator);
        this.f9267k = z;
        this.f9266j = f10;
    }

    L(L l, Spliterator spliterator) {
        super(l, spliterator);
        this.f9267k = l.f9267k;
        this.f9266j = l.f9266j;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new L(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0052c
    protected final Object j() {
        return this.f9266j.f9218b;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        AbstractC0167z0 abstractC0167z0 = this.f9421a;
        P3 p32 = (P3) this.f9266j.f9220d.get();
        abstractC0167z0.H0(this.f9422b, p32);
        Object obj = p32.get();
        if (!this.f9267k) {
            if (obj != null) {
                AtomicReference atomicReference = this.f9406h;
                while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
                }
            }
            return null;
        }
        if (obj == null) {
            return null;
        }
        AbstractC0062e abstractC0062e = this;
        while (true) {
            if (abstractC0062e != null) {
                AbstractC0062e abstractC0062e2 = (AbstractC0062e) abstractC0062e.getCompleter();
                if (abstractC0062e2 != null && abstractC0062e2.f9424d != abstractC0062e) {
                    i();
                    break;
                }
                abstractC0062e = abstractC0062e2;
            } else {
                AtomicReference atomicReference2 = this.f9406h;
                while (!atomicReference2.compareAndSet(null, obj) && atomicReference2.get() == null) {
                }
            }
        }
        return obj;
    }

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        if (this.f9267k) {
            L l = (L) this.f9424d;
            L l8 = null;
            while (true) {
                if (l != l8) {
                    Object objC = l.c();
                    if (objC != null && this.f9266j.f9219c.test(objC)) {
                        f(objC);
                        AbstractC0062e abstractC0062e = this;
                        while (true) {
                            if (abstractC0062e != null) {
                                AbstractC0062e abstractC0062e2 = (AbstractC0062e) abstractC0062e.getCompleter();
                                if (abstractC0062e2 != null && abstractC0062e2.f9424d != abstractC0062e) {
                                    i();
                                    break;
                                }
                                abstractC0062e = abstractC0062e2;
                            } else {
                                AtomicReference atomicReference = this.f9406h;
                                while (!atomicReference.compareAndSet(null, objC) && atomicReference.get() == null) {
                                }
                            }
                        }
                    } else {
                        l8 = l;
                        l = (L) this.f9425e;
                    }
                } else {
                    break;
                }
            }
        }
        super.onCompletion(countedCompleter);
    }
}

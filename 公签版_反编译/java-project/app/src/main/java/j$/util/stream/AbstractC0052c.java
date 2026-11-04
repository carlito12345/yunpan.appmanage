package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0052c extends AbstractC0062e {

    /* renamed from: h, reason: collision with root package name */
    protected final AtomicReference f9406h;

    /* renamed from: i, reason: collision with root package name */
    protected volatile boolean f9407i;

    protected abstract Object j();

    protected AbstractC0052c(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        super(abstractC0167z0, spliterator);
        this.f9406h = new AtomicReference(null);
    }

    protected AbstractC0052c(AbstractC0052c abstractC0052c, Spliterator spliterator) {
        super(abstractC0052c, spliterator);
        this.f9406h = abstractC0052c.f9406h;
    }

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter
    public final void compute() {
        Object objJ;
        Spliterator spliteratorTrySplit;
        Spliterator spliterator = this.f9422b;
        long jEstimateSize = spliterator.estimateSize();
        long jG = this.f9423c;
        if (jG == 0) {
            jG = AbstractC0062e.g(jEstimateSize);
            this.f9423c = jG;
        }
        AtomicReference atomicReference = this.f9406h;
        boolean z = false;
        AbstractC0052c abstractC0052c = this;
        while (true) {
            objJ = atomicReference.get();
            if (objJ != null) {
                break;
            }
            boolean z4 = abstractC0052c.f9407i;
            if (!z4) {
                CountedCompleter<?> completer = abstractC0052c.getCompleter();
                while (true) {
                    AbstractC0052c abstractC0052c2 = (AbstractC0052c) ((AbstractC0062e) completer);
                    if (z4 || abstractC0052c2 == null) {
                        break;
                    }
                    z4 = abstractC0052c2.f9407i;
                    completer = abstractC0052c2.getCompleter();
                }
            }
            if (z4) {
                objJ = abstractC0052c.j();
                break;
            }
            if (jEstimateSize <= jG || (spliteratorTrySplit = spliterator.trySplit()) == null) {
                break;
            }
            AbstractC0052c abstractC0052c3 = (AbstractC0052c) abstractC0052c.e(spliteratorTrySplit);
            abstractC0052c.f9424d = abstractC0052c3;
            AbstractC0052c abstractC0052c4 = (AbstractC0052c) abstractC0052c.e(spliterator);
            abstractC0052c.f9425e = abstractC0052c4;
            abstractC0052c.setPendingCount(1);
            if (z) {
                spliterator = spliteratorTrySplit;
                abstractC0052c = abstractC0052c3;
                abstractC0052c3 = abstractC0052c4;
            } else {
                abstractC0052c = abstractC0052c4;
            }
            z = !z;
            abstractC0052c3.fork();
            jEstimateSize = spliterator.estimateSize();
        }
        objJ = abstractC0052c.a();
        abstractC0052c.f(objJ);
        abstractC0052c.tryComplete();
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final void f(Object obj) {
        if (!d()) {
            super.f(obj);
        } else if (obj != null) {
            AtomicReference atomicReference = this.f9406h;
            while (!atomicReference.compareAndSet(null, obj) && atomicReference.get() == null) {
            }
        }
    }

    @Override // j$.util.stream.AbstractC0062e, java.util.concurrent.CountedCompleter, java.util.concurrent.ForkJoinTask
    public final Object getRawResult() {
        return c();
    }

    @Override // j$.util.stream.AbstractC0062e
    public final Object c() {
        if (d()) {
            Object obj = this.f9406h.get();
            return obj == null ? j() : obj;
        }
        return super.c();
    }

    protected void h() {
        this.f9407i = true;
    }

    protected final void i() {
        AbstractC0052c abstractC0052c = this;
        for (AbstractC0052c abstractC0052c2 = (AbstractC0052c) ((AbstractC0062e) getCompleter()); abstractC0052c2 != null; abstractC0052c2 = (AbstractC0052c) ((AbstractC0062e) abstractC0052c2.getCompleter())) {
            if (abstractC0052c2.f9424d == abstractC0052c) {
                AbstractC0052c abstractC0052c3 = (AbstractC0052c) abstractC0052c2.f9425e;
                if (!abstractC0052c3.f9407i) {
                    abstractC0052c3.h();
                }
            }
            abstractC0052c = abstractC0052c2;
        }
    }
}

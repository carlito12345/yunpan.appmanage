package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: j$.util.stream.y0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0162y0 extends AbstractC0052c {

    /* renamed from: j, reason: collision with root package name */
    private final C0157x0 f9595j;

    C0162y0(C0157x0 c0157x0, AbstractC0047b abstractC0047b, Spliterator spliterator) {
        super(abstractC0047b, spliterator);
        this.f9595j = c0157x0;
    }

    C0162y0(C0162y0 c0162y0, Spliterator spliterator) {
        super(c0162y0, spliterator);
        this.f9595j = c0162y0.f9595j;
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final AbstractC0062e e(Spliterator spliterator) {
        return new C0162y0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0062e
    protected final Object a() {
        AbstractC0167z0 abstractC0167z0 = this.f9421a;
        AbstractC0147v0 abstractC0147v0 = (AbstractC0147v0) this.f9595j.f9584b.get();
        abstractC0167z0.H0(this.f9422b, abstractC0147v0);
        boolean z = abstractC0147v0.f9567b;
        if (z == this.f9595j.f9583a.f9577b) {
            Boolean boolValueOf = Boolean.valueOf(z);
            AtomicReference atomicReference = this.f9406h;
            while (!atomicReference.compareAndSet(null, boolValueOf) && atomicReference.get() == null) {
            }
        }
        return null;
    }

    @Override // j$.util.stream.AbstractC0052c
    protected final Object j() {
        return Boolean.valueOf(!this.f9595j.f9583a.f9577b);
    }
}

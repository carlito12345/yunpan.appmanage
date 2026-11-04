package j$.util;

import j$.util.function.IntConsumer$CC;
import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class S implements InterfaceC0173v, IntConsumer, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    boolean f9023a = false;

    /* renamed from: b, reason: collision with root package name */
    int f9024b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ I f9025c;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.A
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        while (hasNext()) {
            intConsumer.accept(nextInt());
        }
    }

    @Override // java.util.Iterator
    public final Integer next() {
        if (f0.f9141a) {
            f0.a(S.class, "{0} calling PrimitiveIterator.OfInt.nextInt()");
            throw null;
        }
        return Integer.valueOf(nextInt());
    }

    @Override // j$.util.InterfaceC0173v, java.util.Iterator, j$.util.InterfaceC0033j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof IntConsumer) {
            forEachRemaining((IntConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (f0.f9141a) {
            f0.a(S.class, "{0} calling PrimitiveIterator.OfInt.forEachRemainingInt(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((IntConsumer) new C0041s(consumer));
    }

    S(I i10) {
        this.f9025c = i10;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i10) {
        this.f9023a = true;
        this.f9024b = i10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f9023a) {
            this.f9025c.tryAdvance((IntConsumer) this);
        }
        return this.f9023a;
    }

    @Override // j$.util.InterfaceC0173v
    public final int nextInt() {
        if (!this.f9023a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f9023a = false;
        return this.f9024b;
    }
}

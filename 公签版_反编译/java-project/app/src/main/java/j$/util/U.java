package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class U implements r, DoubleConsumer, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    boolean f9034a = false;

    /* renamed from: b, reason: collision with root package name */
    double f9035b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ F f9036c;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.A
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        Objects.requireNonNull(doubleConsumer);
        while (hasNext()) {
            doubleConsumer.accept(nextDouble());
        }
    }

    @Override // java.util.Iterator
    public final Double next() {
        if (f0.f9141a) {
            f0.a(U.class, "{0} calling PrimitiveIterator.OfDouble.nextLong()");
            throw null;
        }
        return Double.valueOf(nextDouble());
    }

    @Override // j$.util.r, java.util.Iterator, j$.util.InterfaceC0033j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof DoubleConsumer) {
            forEachRemaining((DoubleConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (f0.f9141a) {
            f0.a(U.class, "{0} calling PrimitiveIterator.OfDouble.forEachRemainingDouble(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((DoubleConsumer) new C0038o(consumer));
    }

    U(F f10) {
        this.f9036c = f10;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d10) {
        this.f9034a = true;
        this.f9035b = d10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f9034a) {
            this.f9036c.tryAdvance((DoubleConsumer) this);
        }
        return this.f9034a;
    }

    @Override // j$.util.r
    public final double nextDouble() {
        if (!this.f9034a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f9034a = false;
        return this.f9035b;
    }
}

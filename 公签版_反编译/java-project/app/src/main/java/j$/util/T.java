package j$.util;

import java.util.NoSuchElementException;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class T implements InterfaceC0177z, LongConsumer, InterfaceC0033j {

    /* renamed from: a, reason: collision with root package name */
    boolean f9031a = false;

    /* renamed from: b, reason: collision with root package name */
    long f9032b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ L f9033c;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.A
    public final void forEachRemaining(LongConsumer longConsumer) {
        Objects.requireNonNull(longConsumer);
        while (hasNext()) {
            longConsumer.accept(nextLong());
        }
    }

    @Override // java.util.Iterator
    public final Long next() {
        if (f0.f9141a) {
            f0.a(T.class, "{0} calling PrimitiveIterator.OfLong.nextLong()");
            throw null;
        }
        return Long.valueOf(nextLong());
    }

    @Override // j$.util.InterfaceC0177z, java.util.Iterator, j$.util.InterfaceC0033j
    public final void forEachRemaining(Consumer consumer) {
        if (consumer instanceof LongConsumer) {
            forEachRemaining((LongConsumer) consumer);
            return;
        }
        Objects.requireNonNull(consumer);
        if (f0.f9141a) {
            f0.a(T.class, "{0} calling PrimitiveIterator.OfLong.forEachRemainingLong(action::accept)");
            throw null;
        }
        Objects.requireNonNull(consumer);
        forEachRemaining((LongConsumer) new C0174w(consumer));
    }

    T(L l) {
        this.f9033c = l;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9031a = true;
        this.f9032b = j10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (!this.f9031a) {
            this.f9033c.tryAdvance((LongConsumer) this);
        }
        return this.f9031a;
    }

    @Override // j$.util.InterfaceC0177z
    public final long nextLong() {
        if (!this.f9031a && !hasNext()) {
            throw new NoSuchElementException();
        }
        this.f9031a = false;
        return this.f9032b;
    }
}

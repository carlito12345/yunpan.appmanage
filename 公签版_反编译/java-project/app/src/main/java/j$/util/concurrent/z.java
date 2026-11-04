package j$.util.concurrent;

import j$.util.B;
import j$.util.I;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class z implements I {

    /* renamed from: a, reason: collision with root package name */
    long f9132a;

    /* renamed from: b, reason: collision with root package name */
    final long f9133b;

    /* renamed from: c, reason: collision with root package name */
    final int f9134c;

    /* renamed from: d, reason: collision with root package name */
    final int f9135d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return B.h(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    z(long j10, long j11, int i10, int i11) {
        this.f9132a = j10;
        this.f9133b = j11;
        this.f9134c = i10;
        this.f9135d = i11;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final z trySplit() {
        long j10 = this.f9132a;
        long j11 = (this.f9133b + j10) >>> 1;
        if (j11 <= j10) {
            return null;
        }
        this.f9132a = j11;
        return new z(j10, j11, this.f9134c, this.f9135d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9133b - this.f9132a;
    }

    @Override // j$.util.O
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j10 = this.f9132a;
        if (j10 >= this.f9133b) {
            return false;
        }
        intConsumer.accept(ThreadLocalRandom.current().d(this.f9134c, this.f9135d));
        this.f9132a = j10 + 1;
        return true;
    }

    @Override // j$.util.O
    public final void forEachRemaining(IntConsumer intConsumer) {
        intConsumer.getClass();
        long j10 = this.f9132a;
        long j11 = this.f9133b;
        if (j10 < j11) {
            this.f9132a = j11;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                intConsumer.accept(threadLocalRandomCurrent.d(this.f9134c, this.f9135d));
                j10++;
            } while (j10 < j11);
        }
    }
}

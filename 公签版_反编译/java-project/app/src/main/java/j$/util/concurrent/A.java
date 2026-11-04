package j$.util.concurrent;

import j$.util.B;
import j$.util.L;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class A implements L {

    /* renamed from: a, reason: collision with root package name */
    long f9062a;

    /* renamed from: b, reason: collision with root package name */
    final long f9063b;

    /* renamed from: c, reason: collision with root package name */
    final long f9064c;

    /* renamed from: d, reason: collision with root package name */
    final long f9065d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        B.c(this, consumer);
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
        return B.i(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    A(long j10, long j11, long j12, long j13) {
        this.f9062a = j10;
        this.f9063b = j11;
        this.f9064c = j12;
        this.f9065d = j13;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final A trySplit() {
        long j10 = this.f9062a;
        long j11 = (this.f9063b + j10) >>> 1;
        if (j11 <= j10) {
            return null;
        }
        this.f9062a = j11;
        return new A(j10, j11, this.f9064c, this.f9065d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9063b - this.f9062a;
    }

    @Override // j$.util.O
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j10 = this.f9062a;
        if (j10 >= this.f9063b) {
            return false;
        }
        longConsumer.accept(ThreadLocalRandom.current().e(this.f9064c, this.f9065d));
        this.f9062a = j10 + 1;
        return true;
    }

    @Override // j$.util.O
    public final void forEachRemaining(LongConsumer longConsumer) {
        longConsumer.getClass();
        long j10 = this.f9062a;
        long j11 = this.f9063b;
        if (j10 < j11) {
            this.f9062a = j11;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                longConsumer.accept(threadLocalRandomCurrent.e(this.f9064c, this.f9065d));
                j10++;
            } while (j10 < j11);
        }
    }
}

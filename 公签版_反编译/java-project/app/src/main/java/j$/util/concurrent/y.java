package j$.util.concurrent;

import j$.util.B;
import j$.util.F;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class y implements F {

    /* renamed from: a, reason: collision with root package name */
    long f9128a;

    /* renamed from: b, reason: collision with root package name */
    final long f9129b;

    /* renamed from: c, reason: collision with root package name */
    final double f9130c;

    /* renamed from: d, reason: collision with root package name */
    final double f9131d;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17728;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        B.a(this, consumer);
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
        return B.g(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    y(long j10, long j11, double d10, double d11) {
        this.f9128a = j10;
        this.f9129b = j11;
        this.f9130c = d10;
        this.f9131d = d11;
    }

    @Override // j$.util.Spliterator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final y trySplit() {
        long j10 = this.f9128a;
        long j11 = (this.f9129b + j10) >>> 1;
        if (j11 <= j10) {
            return null;
        }
        this.f9128a = j11;
        return new y(j10, j11, this.f9130c, this.f9131d);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9129b - this.f9128a;
    }

    @Override // j$.util.O
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j10 = this.f9128a;
        if (j10 >= this.f9129b) {
            return false;
        }
        doubleConsumer.accept(ThreadLocalRandom.current().c(this.f9130c, this.f9131d));
        this.f9128a = j10 + 1;
        return true;
    }

    @Override // j$.util.O
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        long j10 = this.f9128a;
        long j11 = this.f9129b;
        if (j10 < j11) {
            this.f9128a = j11;
            ThreadLocalRandom threadLocalRandomCurrent = ThreadLocalRandom.current();
            do {
                doubleConsumer.accept(threadLocalRandomCurrent.c(this.f9130c, this.f9131d));
                j10++;
            } while (j10 < j11);
        }
    }
}

package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class M3 implements j$.util.I {

    /* renamed from: a, reason: collision with root package name */
    private int f9284a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9285b;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 17749;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        j$.util.B.b(this, consumer);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        return null;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return j$.util.B.h(this, consumer);
    }

    M3(int i10, int i11) {
        this(i10, i11, 0);
    }

    private M3(int i10, int i11, int i12) {
        this.f9284a = i10;
        this.f9285b = i11;
    }

    @Override // j$.util.O
    public final boolean tryAdvance(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i10 = this.f9284a;
        if (i10 >= this.f9285b) {
            return false;
        }
        this.f9284a = i10 + 1;
        intConsumer.accept(i10);
        return true;
    }

    @Override // j$.util.O
    public final void forEachRemaining(IntConsumer intConsumer) {
        Objects.requireNonNull(intConsumer);
        int i10 = this.f9285b;
        this.f9284a = i10;
        for (int i11 = this.f9284a; i11 < i10; i11++) {
            intConsumer.accept(i11);
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return (this.f9285b - this.f9284a) + 0;
    }

    @Override // j$.util.Spliterator
    public final j$.util.I trySplit() {
        long jEstimateSize = estimateSize();
        if (jEstimateSize <= 1) {
            return null;
        }
        int i10 = this.f9284a;
        int i11 = ((int) (jEstimateSize / (jEstimateSize < 16777216 ? 2 : 8))) + i10;
        this.f9284a = i11;
        return new M3(i10, i11, 0);
    }
}

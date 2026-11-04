package j$.util.stream;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class L3 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    protected final Spliterator f9273a;

    /* renamed from: b, reason: collision with root package name */
    protected final Spliterator f9274b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9275c = true;

    /* renamed from: d, reason: collision with root package name */
    final boolean f9276d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    L3(Spliterator spliterator, Spliterator spliterator2) {
        this.f9273a = spliterator;
        this.f9274b = spliterator2;
        this.f9276d = spliterator2.estimateSize() + spliterator.estimateSize() < 0;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        Spliterator spliteratorTrySplit = this.f9275c ? this.f9273a : this.f9274b.trySplit();
        this.f9275c = false;
        return spliteratorTrySplit;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        boolean z = this.f9275c;
        Spliterator spliterator = this.f9274b;
        if (z) {
            boolean zTryAdvance = this.f9273a.tryAdvance(consumer);
            if (zTryAdvance) {
                return zTryAdvance;
            }
            this.f9275c = false;
            return spliterator.tryAdvance(consumer);
        }
        return spliterator.tryAdvance(consumer);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        if (this.f9275c) {
            this.f9273a.forEachRemaining(consumer);
        }
        this.f9274b.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        boolean z = this.f9275c;
        Spliterator spliterator = this.f9274b;
        if (z) {
            long jEstimateSize = spliterator.estimateSize() + this.f9273a.estimateSize();
            if (jEstimateSize >= 0) {
                return jEstimateSize;
            }
            return Long.MAX_VALUE;
        }
        return spliterator.estimateSize();
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        boolean z = this.f9275c;
        Spliterator spliterator = this.f9274b;
        if (z) {
            return this.f9273a.characteristics() & spliterator.characteristics() & (((this.f9276d ? 16448 : 0) | 5) ^ (-1));
        }
        return spliterator.characteristics();
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (this.f9275c) {
            throw new IllegalStateException();
        }
        return this.f9274b.getComparator();
    }
}

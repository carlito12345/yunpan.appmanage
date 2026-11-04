package j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class J implements L {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfLong f9013a;

    private /* synthetic */ J(Spliterator.OfLong ofLong) {
        this.f9013a = ofLong;
    }

    public static /* synthetic */ L a(Spliterator.OfLong ofLong) {
        if (ofLong == null) {
            return null;
        }
        return ofLong instanceof K ? ((K) ofLong).f9014a : new J(ofLong);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f9013a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfLong ofLong = this.f9013a;
        if (obj instanceof J) {
            obj = ((J) obj).f9013a;
        }
        return ofLong.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f9013a.estimateSize();
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9013a.forEachRemaining((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9013a.forEachRemaining((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.L
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f9013a.forEachRemaining(longConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f9013a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f9013a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return this.f9013a.hasCharacteristics(i10);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9013a.hashCode();
    }

    @Override // j$.util.O
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f9013a.tryAdvance((Spliterator.OfLong) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f9013a.tryAdvance((Consumer<? super Long>) consumer);
    }

    @Override // j$.util.L
    public final /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return this.f9013a.tryAdvance(longConsumer);
    }

    @Override // j$.util.L, j$.util.O, j$.util.Spliterator
    public final /* synthetic */ L trySplit() {
        return a(this.f9013a.trySplit());
    }

    @Override // j$.util.O, j$.util.Spliterator
    public final /* synthetic */ O trySplit() {
        return M.a(this.f9013a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return P.a(this.f9013a.trySplit());
    }
}

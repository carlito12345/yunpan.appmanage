package j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class D implements F {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfDouble f9004a;

    private /* synthetic */ D(Spliterator.OfDouble ofDouble) {
        this.f9004a = ofDouble;
    }

    public static /* synthetic */ F a(Spliterator.OfDouble ofDouble) {
        if (ofDouble == null) {
            return null;
        }
        return ofDouble instanceof E ? ((E) ofDouble).f9010a : new D(ofDouble);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f9004a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfDouble ofDouble = this.f9004a;
        if (obj instanceof D) {
            obj = ((D) obj).f9004a;
        }
        return ofDouble.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f9004a.estimateSize();
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9004a.forEachRemaining((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9004a.forEachRemaining((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.F
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f9004a.forEachRemaining(doubleConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f9004a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f9004a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return this.f9004a.hasCharacteristics(i10);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9004a.hashCode();
    }

    @Override // j$.util.O
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f9004a.tryAdvance((Spliterator.OfDouble) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f9004a.tryAdvance((Consumer<? super Double>) consumer);
    }

    @Override // j$.util.F
    public final /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return this.f9004a.tryAdvance(doubleConsumer);
    }

    @Override // j$.util.F, j$.util.O, j$.util.Spliterator
    public final /* synthetic */ F trySplit() {
        return a(this.f9004a.trySplit());
    }

    @Override // j$.util.O, j$.util.Spliterator
    public final /* synthetic */ O trySplit() {
        return M.a(this.f9004a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return P.a(this.f9004a.trySplit());
    }
}

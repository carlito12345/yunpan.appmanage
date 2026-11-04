package j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class G implements I {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfInt f9011a;

    private /* synthetic */ G(Spliterator.OfInt ofInt) {
        this.f9011a = ofInt;
    }

    public static /* synthetic */ I a(Spliterator.OfInt ofInt) {
        if (ofInt == null) {
            return null;
        }
        return ofInt instanceof H ? ((H) ofInt).f9012a : new G(ofInt);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f9011a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfInt ofInt = this.f9011a;
        if (obj instanceof G) {
            obj = ((G) obj).f9011a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f9011a.estimateSize();
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9011a.forEachRemaining((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9011a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.I
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f9011a.forEachRemaining(intConsumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f9011a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f9011a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return this.f9011a.hasCharacteristics(i10);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9011a.hashCode();
    }

    @Override // j$.util.O
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f9011a.tryAdvance((Spliterator.OfInt) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f9011a.tryAdvance((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.I
    public final /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return this.f9011a.tryAdvance(intConsumer);
    }

    @Override // j$.util.I, j$.util.O, j$.util.Spliterator
    public final /* synthetic */ I trySplit() {
        return a(this.f9011a.trySplit());
    }

    @Override // j$.util.O, j$.util.Spliterator
    public final /* synthetic */ O trySplit() {
        return M.a(this.f9011a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return P.a(this.f9011a.trySplit());
    }
}

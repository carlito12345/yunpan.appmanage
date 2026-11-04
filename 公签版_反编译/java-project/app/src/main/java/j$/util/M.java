package j$.util;

import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class M implements O {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spliterator.OfPrimitive f9015a;

    private /* synthetic */ M(Spliterator.OfPrimitive ofPrimitive) {
        this.f9015a = ofPrimitive;
    }

    public static /* synthetic */ O a(Spliterator.OfPrimitive ofPrimitive) {
        if (ofPrimitive == null) {
            return null;
        }
        return ofPrimitive instanceof N ? ((N) ofPrimitive).f9016a : ofPrimitive instanceof Spliterator.OfDouble ? D.a((Spliterator.OfDouble) ofPrimitive) : ofPrimitive instanceof Spliterator.OfInt ? G.a((Spliterator.OfInt) ofPrimitive) : ofPrimitive instanceof Spliterator.OfLong ? J.a((Spliterator.OfLong) ofPrimitive) : new M(ofPrimitive);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f9015a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        Spliterator.OfPrimitive ofPrimitive = this.f9015a;
        if (obj instanceof M) {
            obj = ((M) obj).f9015a;
        }
        return ofPrimitive.equals(obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f9015a.estimateSize();
    }

    @Override // j$.util.O
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9015a.forEachRemaining((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9015a.forEachRemaining(consumer);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f9015a.getComparator();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f9015a.getExactSizeIfKnown();
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return this.f9015a.hasCharacteristics(i10);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9015a.hashCode();
    }

    @Override // j$.util.O
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f9015a.tryAdvance((Spliterator.OfPrimitive) obj);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f9015a.tryAdvance(consumer);
    }

    @Override // j$.util.O, j$.util.Spliterator
    public final /* synthetic */ O trySplit() {
        return a(this.f9015a.trySplit());
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ Spliterator trySplit() {
        return P.a(this.f9015a.trySplit());
    }
}

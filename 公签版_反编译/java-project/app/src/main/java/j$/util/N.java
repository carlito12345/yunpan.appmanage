package j$.util;

import j$.util.Spliterator;
import java.util.Comparator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class N implements Spliterator.OfPrimitive {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ O f9016a;

    private /* synthetic */ N(O o10) {
        this.f9016a = o10;
    }

    public static /* synthetic */ Spliterator.OfPrimitive a(O o10) {
        if (o10 == null) {
            return null;
        }
        return o10 instanceof M ? ((M) o10).f9015a : o10 instanceof F ? E.a((F) o10) : o10 instanceof I ? H.a((I) o10) : o10 instanceof L ? K.a((L) o10) : new N(o10);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ int characteristics() {
        return this.f9016a.characteristics();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        O o10 = this.f9016a;
        if (obj instanceof N) {
            obj = ((N) obj).f9016a;
        }
        return o10.equals(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long estimateSize() {
        return this.f9016a.estimateSize();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f9016a.forEachRemaining(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f9016a.forEachRemaining(consumer);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ Comparator getComparator() {
        return this.f9016a.getComparator();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return this.f9016a.getExactSizeIfKnown();
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return this.f9016a.hasCharacteristics(i10);
    }

    public final /* synthetic */ int hashCode() {
        return this.f9016a.hashCode();
    }

    @Override // java.util.Spliterator.OfPrimitive
    public final /* synthetic */ boolean tryAdvance(Object obj) {
        return this.f9016a.tryAdvance(obj);
    }

    @Override // java.util.Spliterator
    public final /* synthetic */ boolean tryAdvance(Consumer consumer) {
        return this.f9016a.tryAdvance(consumer);
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ Spliterator.OfPrimitive trySplit() {
        return a(this.f9016a.trySplit());
    }

    @Override // java.util.Spliterator.OfPrimitive, java.util.Spliterator
    public final /* synthetic */ java.util.Spliterator trySplit() {
        return Spliterator.Wrapper.convert(this.f9016a.trySplit());
    }
}

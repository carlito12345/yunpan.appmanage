package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class b0 implements I {

    /* renamed from: a, reason: collision with root package name */
    private final int[] f9050a;

    /* renamed from: b, reason: collision with root package name */
    private int f9051b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9052c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9053d;

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

    public b0(int[] iArr, int i10, int i11, int i12) {
        this.f9050a = iArr;
        this.f9051b = i10;
        this.f9052c = i11;
        this.f9053d = i12 | 16448;
    }

    @Override // j$.util.Spliterator
    public final I trySplit() {
        int i10 = this.f9051b;
        int i11 = (this.f9052c + i10) >>> 1;
        if (i10 >= i11) {
            return null;
        }
        this.f9051b = i11;
        return new b0(this.f9050a, i10, i11, this.f9053d);
    }

    @Override // j$.util.O
    public final void forEachRemaining(IntConsumer intConsumer) {
        int i10;
        intConsumer.getClass();
        int[] iArr = this.f9050a;
        int length = iArr.length;
        int i11 = this.f9052c;
        if (length < i11 || (i10 = this.f9051b) < 0) {
            return;
        }
        this.f9051b = i11;
        if (i10 < i11) {
            do {
                intConsumer.accept(iArr[i10]);
                i10++;
            } while (i10 < i11);
        }
    }

    @Override // j$.util.O
    public final boolean tryAdvance(IntConsumer intConsumer) {
        intConsumer.getClass();
        int i10 = this.f9051b;
        if (i10 < 0 || i10 >= this.f9052c) {
            return false;
        }
        this.f9051b = i10 + 1;
        intConsumer.accept(this.f9050a[i10]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9052c - this.f9051b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9053d;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}

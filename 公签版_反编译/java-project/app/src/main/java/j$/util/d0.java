package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class d0 implements L {

    /* renamed from: a, reason: collision with root package name */
    private final long[] f9136a;

    /* renamed from: b, reason: collision with root package name */
    private int f9137b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9138c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9139d;

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

    public d0(long[] jArr, int i10, int i11, int i12) {
        this.f9136a = jArr;
        this.f9137b = i10;
        this.f9138c = i11;
        this.f9139d = i12 | 16448;
    }

    @Override // j$.util.Spliterator
    public final L trySplit() {
        int i10 = this.f9137b;
        int i11 = (this.f9138c + i10) >>> 1;
        if (i10 >= i11) {
            return null;
        }
        this.f9137b = i11;
        return new d0(this.f9136a, i10, i11, this.f9139d);
    }

    @Override // j$.util.O
    public final void forEachRemaining(LongConsumer longConsumer) {
        int i10;
        longConsumer.getClass();
        long[] jArr = this.f9136a;
        int length = jArr.length;
        int i11 = this.f9138c;
        if (length < i11 || (i10 = this.f9137b) < 0) {
            return;
        }
        this.f9137b = i11;
        if (i10 < i11) {
            do {
                longConsumer.accept(jArr[i10]);
                i10++;
            } while (i10 < i11);
        }
    }

    @Override // j$.util.O
    public final boolean tryAdvance(LongConsumer longConsumer) {
        longConsumer.getClass();
        int i10 = this.f9137b;
        if (i10 < 0 || i10 >= this.f9138c) {
            return false;
        }
        this.f9137b = i10 + 1;
        longConsumer.accept(this.f9136a[i10]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9138c - this.f9137b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9139d;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}

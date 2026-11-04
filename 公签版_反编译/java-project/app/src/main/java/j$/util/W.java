package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class W implements F {

    /* renamed from: a, reason: collision with root package name */
    private final double[] f9041a;

    /* renamed from: b, reason: collision with root package name */
    private int f9042b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9043c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9044d;

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

    public W(double[] dArr, int i10, int i11, int i12) {
        this.f9041a = dArr;
        this.f9042b = i10;
        this.f9043c = i11;
        this.f9044d = i12 | 16448;
    }

    @Override // j$.util.Spliterator
    public final F trySplit() {
        int i10 = this.f9042b;
        int i11 = (this.f9043c + i10) >>> 1;
        if (i10 >= i11) {
            return null;
        }
        this.f9042b = i11;
        return new W(this.f9041a, i10, i11, this.f9044d);
    }

    @Override // j$.util.O
    public final void forEachRemaining(DoubleConsumer doubleConsumer) {
        int i10;
        doubleConsumer.getClass();
        double[] dArr = this.f9041a;
        int length = dArr.length;
        int i11 = this.f9043c;
        if (length < i11 || (i10 = this.f9042b) < 0) {
            return;
        }
        this.f9042b = i11;
        if (i10 < i11) {
            do {
                doubleConsumer.accept(dArr[i10]);
                i10++;
            } while (i10 < i11);
        }
    }

    @Override // j$.util.O
    public final boolean tryAdvance(DoubleConsumer doubleConsumer) {
        doubleConsumer.getClass();
        int i10 = this.f9042b;
        if (i10 < 0 || i10 >= this.f9043c) {
            return false;
        }
        this.f9042b = i10 + 1;
        doubleConsumer.accept(this.f9041a[i10]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9043c - this.f9042b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9044d;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}

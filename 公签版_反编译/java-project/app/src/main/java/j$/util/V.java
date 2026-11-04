package j$.util;

import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class V implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    private final Object[] f9037a;

    /* renamed from: b, reason: collision with root package name */
    private int f9038b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9039c;

    /* renamed from: d, reason: collision with root package name */
    private final int f9040d;

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return B.e(this, i10);
    }

    public V(Object[] objArr, int i10, int i11, int i12) {
        this.f9037a = objArr;
        this.f9038b = i10;
        this.f9039c = i11;
        this.f9040d = i12 | 16448;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i10 = this.f9038b;
        int i11 = (this.f9039c + i10) >>> 1;
        if (i10 >= i11) {
            return null;
        }
        this.f9038b = i11;
        return new V(this.f9037a, i10, i11, this.f9040d);
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        int i10;
        consumer.getClass();
        Object[] objArr = this.f9037a;
        int length = objArr.length;
        int i11 = this.f9039c;
        if (length < i11 || (i10 = this.f9038b) < 0) {
            return;
        }
        this.f9038b = i11;
        if (i10 < i11) {
            do {
                consumer.accept(objArr[i10]);
                i10++;
            } while (i10 < i11);
        }
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int i10 = this.f9038b;
        if (i10 < 0 || i10 >= this.f9039c) {
            return false;
        }
        this.f9038b = i10 + 1;
        consumer.accept(this.f9037a[i10]);
        return true;
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return this.f9039c - this.f9038b;
    }

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return this.f9040d;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        if (B.e(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }
}

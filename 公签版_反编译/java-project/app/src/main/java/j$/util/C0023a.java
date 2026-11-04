package j$.util;

import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.function.Consumer;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0023a implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    private final java.util.List f9045a;

    /* renamed from: b, reason: collision with root package name */
    private int f9046b;

    /* renamed from: c, reason: collision with root package name */
    private int f9047c;

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
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
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    C0023a(java.util.List list) {
        this.f9045a = list;
        this.f9046b = 0;
        this.f9047c = -1;
    }

    private C0023a(C0023a c0023a, int i10, int i11) {
        this.f9045a = c0023a.f9045a;
        this.f9046b = i10;
        this.f9047c = i11;
    }

    private int a() {
        int i10 = this.f9047c;
        if (i10 >= 0) {
            return i10;
        }
        int size = this.f9045a.size();
        this.f9047c = size;
        return size;
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int iA = a();
        int i10 = this.f9046b;
        int i11 = (iA + i10) >>> 1;
        if (i10 >= i11) {
            return null;
        }
        this.f9046b = i11;
        return new C0023a(this, i10, i11);
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        consumer.getClass();
        int iA = a();
        int i10 = this.f9046b;
        if (i10 >= iA) {
            return false;
        }
        this.f9046b = i10 + 1;
        try {
            consumer.accept(this.f9045a.get(i10));
            return true;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int iA = a();
        this.f9046b = iA;
        for (int i10 = this.f9046b; i10 < iA; i10++) {
            try {
                consumer.accept(this.f9045a.get(i10));
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        return a() - this.f9046b;
    }
}

package j$.util.stream;

import j$.util.Objects;
import java.util.Comparator;
import java.util.function.DoubleConsumer;
import java.util.function.IntConsumer;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
abstract class Y2 implements j$.util.O {

    /* renamed from: a, reason: collision with root package name */
    int f9377a;

    /* renamed from: b, reason: collision with root package name */
    final int f9378b;

    /* renamed from: c, reason: collision with root package name */
    int f9379c;

    /* renamed from: d, reason: collision with root package name */
    final int f9380d;

    /* renamed from: e, reason: collision with root package name */
    Object f9381e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ Z2 f9382f;

    abstract void a(int i10, Object obj, Object obj2);

    abstract j$.util.O b(Object obj, int i10, int i11);

    abstract j$.util.O c(int i10, int i11, int i12, int i13);

    @Override // j$.util.Spliterator
    public final int characteristics() {
        return 16464;
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ long getExactSizeIfKnown() {
        return j$.util.B.d(this);
    }

    @Override // j$.util.Spliterator
    public final /* synthetic */ boolean hasCharacteristics(int i10) {
        return j$.util.B.e(this, i10);
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }

    Y2(Z2 z22, int i10, int i11, int i12, int i13) {
        this.f9382f = z22;
        this.f9377a = i10;
        this.f9378b = i11;
        this.f9379c = i12;
        this.f9380d = i13;
        Object[] objArr = z22.f9387f;
        this.f9381e = objArr == null ? z22.f9386e : objArr[i10];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i10 = this.f9377a;
        int i11 = this.f9380d;
        int i12 = this.f9378b;
        if (i10 == i12) {
            return i11 - this.f9379c;
        }
        long[] jArr = this.f9382f.f9412d;
        return ((jArr[i12] + i11) - jArr[i10]) - this.f9379c;
    }

    @Override // j$.util.O
    public final boolean tryAdvance(Object obj) {
        Objects.requireNonNull(obj);
        int i10 = this.f9377a;
        int i11 = this.f9378b;
        if (i10 >= i11 && (i10 != i11 || this.f9379c >= this.f9380d)) {
            return false;
        }
        Object obj2 = this.f9381e;
        int i12 = this.f9379c;
        this.f9379c = i12 + 1;
        a(i12, obj2, obj);
        int i13 = this.f9379c;
        Object obj3 = this.f9381e;
        Z2 z22 = this.f9382f;
        if (i13 == z22.t(obj3)) {
            this.f9379c = 0;
            int i14 = this.f9377a + 1;
            this.f9377a = i14;
            Object[] objArr = z22.f9387f;
            if (objArr != null && i14 <= i11) {
                this.f9381e = objArr[i14];
            }
        }
        return true;
    }

    @Override // j$.util.O
    public final void forEachRemaining(Object obj) {
        Z2 z22;
        Objects.requireNonNull(obj);
        int i10 = this.f9377a;
        int i11 = this.f9380d;
        int i12 = this.f9378b;
        if (i10 < i12 || (i10 == i12 && this.f9379c < i11)) {
            int i13 = this.f9379c;
            while (true) {
                z22 = this.f9382f;
                if (i10 >= i12) {
                    break;
                }
                Object obj2 = z22.f9387f[i10];
                z22.s(obj2, i13, z22.t(obj2), obj);
                i10++;
                i13 = 0;
            }
            z22.s(this.f9377a == i12 ? this.f9381e : z22.f9387f[i12], i13, i11, obj);
            this.f9377a = i12;
            this.f9379c = i11;
        }
    }

    @Override // j$.util.Spliterator
    public final j$.util.O trySplit() {
        int i10 = this.f9377a;
        int i11 = this.f9378b;
        if (i10 < i11) {
            int i12 = i11 - 1;
            int i13 = this.f9379c;
            Z2 z22 = this.f9382f;
            j$.util.O oC = c(i10, i12, i13, z22.t(z22.f9387f[i12]));
            this.f9377a = i11;
            this.f9379c = 0;
            this.f9381e = z22.f9387f[i11];
            return oC;
        }
        if (i10 != i11) {
            return null;
        }
        int i14 = this.f9379c;
        int i15 = (this.f9380d - i14) / 2;
        if (i15 == 0) {
            return null;
        }
        j$.util.O oB = b(this.f9381e, i14, i15);
        this.f9379c += i15;
        return oB;
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        forEachRemaining((Object) intConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(IntConsumer intConsumer) {
        return tryAdvance((Object) intConsumer);
    }

    @Override // j$.util.O, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.I trySplit() {
        return (j$.util.I) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        forEachRemaining((Object) longConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(LongConsumer longConsumer) {
        return tryAdvance((Object) longConsumer);
    }

    @Override // j$.util.O, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.L trySplit() {
        return (j$.util.L) trySplit();
    }

    public /* bridge */ /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        forEachRemaining((Object) doubleConsumer);
    }

    public /* bridge */ /* synthetic */ boolean tryAdvance(DoubleConsumer doubleConsumer) {
        return tryAdvance((Object) doubleConsumer);
    }

    @Override // j$.util.O, j$.util.Spliterator
    public /* bridge */ /* synthetic */ j$.util.F trySplit() {
        return (j$.util.F) trySplit();
    }
}

package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Comparator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class R2 implements Spliterator {

    /* renamed from: a, reason: collision with root package name */
    int f9323a;

    /* renamed from: b, reason: collision with root package name */
    final int f9324b;

    /* renamed from: c, reason: collision with root package name */
    int f9325c;

    /* renamed from: d, reason: collision with root package name */
    final int f9326d;

    /* renamed from: e, reason: collision with root package name */
    Object[] f9327e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ C0046a3 f9328f;

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

    R2(C0046a3 c0046a3, int i10, int i11, int i12, int i13) {
        this.f9328f = c0046a3;
        this.f9323a = i10;
        this.f9324b = i11;
        this.f9325c = i12;
        this.f9326d = i13;
        Object[][] objArr = c0046a3.f9393f;
        this.f9327e = objArr == null ? c0046a3.f9392e : objArr[i10];
    }

    @Override // j$.util.Spliterator
    public final long estimateSize() {
        int i10 = this.f9323a;
        int i11 = this.f9326d;
        int i12 = this.f9324b;
        if (i10 == i12) {
            return i11 - this.f9325c;
        }
        long[] jArr = this.f9328f.f9412d;
        return ((jArr[i12] + i11) - jArr[i10]) - this.f9325c;
    }

    @Override // j$.util.Spliterator
    public final boolean tryAdvance(Consumer consumer) {
        Objects.requireNonNull(consumer);
        int i10 = this.f9323a;
        int i11 = this.f9324b;
        if (i10 >= i11 && (i10 != i11 || this.f9325c >= this.f9326d)) {
            return false;
        }
        Object[] objArr = this.f9327e;
        int i12 = this.f9325c;
        this.f9325c = i12 + 1;
        consumer.accept(objArr[i12]);
        if (this.f9325c == this.f9327e.length) {
            this.f9325c = 0;
            int i13 = this.f9323a + 1;
            this.f9323a = i13;
            Object[][] objArr2 = this.f9328f.f9393f;
            if (objArr2 != null && i13 <= i11) {
                this.f9327e = objArr2[i13];
            }
        }
        return true;
    }

    @Override // j$.util.Spliterator
    public final void forEachRemaining(Consumer consumer) {
        C0046a3 c0046a3;
        Objects.requireNonNull(consumer);
        int i10 = this.f9323a;
        int i11 = this.f9326d;
        int i12 = this.f9324b;
        if (i10 < i12 || (i10 == i12 && this.f9325c < i11)) {
            int i13 = this.f9325c;
            while (true) {
                c0046a3 = this.f9328f;
                if (i10 >= i12) {
                    break;
                }
                Object[] objArr = c0046a3.f9393f[i10];
                while (i13 < objArr.length) {
                    consumer.accept(objArr[i13]);
                    i13++;
                }
                i10++;
                i13 = 0;
            }
            Object[] objArr2 = this.f9323a == i12 ? this.f9327e : c0046a3.f9393f[i12];
            while (i13 < i11) {
                consumer.accept(objArr2[i13]);
                i13++;
            }
            this.f9323a = i12;
            this.f9325c = i11;
        }
    }

    @Override // j$.util.Spliterator
    public final Spliterator trySplit() {
        int i10 = this.f9323a;
        int i11 = this.f9324b;
        if (i10 < i11) {
            int i12 = i11 - 1;
            int i13 = this.f9325c;
            C0046a3 c0046a3 = this.f9328f;
            R2 r22 = new R2(c0046a3, i10, i12, i13, c0046a3.f9393f[i12].length);
            this.f9323a = i11;
            this.f9325c = 0;
            this.f9327e = c0046a3.f9393f[i11];
            return r22;
        }
        if (i10 != i11) {
            return null;
        }
        int i14 = this.f9325c;
        int i15 = (this.f9326d - i14) / 2;
        if (i15 == 0) {
            return null;
        }
        Spliterator spliteratorM = Spliterators.m(this.f9327e, i14, i14 + i15);
        this.f9325c += i15;
        return spliteratorM;
    }

    @Override // j$.util.Spliterator
    public final Comparator getComparator() {
        throw new IllegalStateException();
    }
}

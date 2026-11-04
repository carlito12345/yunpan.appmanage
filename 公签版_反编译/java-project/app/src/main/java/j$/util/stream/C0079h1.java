package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.h1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0079h1 implements H0 {

    /* renamed from: a, reason: collision with root package name */
    final int[] f9457a;

    /* renamed from: b, reason: collision with root package name */
    int f9458b;

    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.P(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.S(this, j10, j11);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ Object[] l(IntFunction intFunction) {
        return AbstractC0167z0.K(this, intFunction);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public final /* bridge */ /* synthetic */ L0 b(int i10) {
        b(i10);
        throw null;
    }

    @Override // j$.util.stream.K0, j$.util.stream.L0
    public final K0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.M(this, (Integer[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final void d(Object obj, int i10) {
        int i11 = this.f9458b;
        System.arraycopy(this.f9457a, 0, (int[]) obj, i10, i11);
    }

    @Override // j$.util.stream.K0
    public final void f(Object obj) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i10 = 0; i10 < this.f9458b; i10++) {
            intConsumer.accept(this.f9457a[i10]);
        }
    }

    C0079h1(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9457a = new int[(int) j10];
        this.f9458b = 0;
    }

    C0079h1(int[] iArr) {
        this.f9457a = iArr;
        this.f9458b = iArr.length;
    }

    @Override // j$.util.stream.K0, j$.util.stream.L0
    public final j$.util.O spliterator() {
        return Spliterators.k(this.f9457a, 0, this.f9458b);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Spliterators.k(this.f9457a, 0, this.f9458b);
    }

    @Override // j$.util.stream.K0
    public final Object e() {
        int[] iArr = this.f9457a;
        int length = iArr.length;
        int i10 = this.f9458b;
        return length == i10 ? iArr : Arrays.copyOf(iArr, i10);
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9458b;
    }

    public String toString() {
        int[] iArr = this.f9457a;
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(iArr.length - this.f9458b), Arrays.toString(iArr));
    }
}

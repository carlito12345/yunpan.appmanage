package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
class Y0 implements F0 {

    /* renamed from: a, reason: collision with root package name */
    final double[] f9375a;

    /* renamed from: b, reason: collision with root package name */
    int f9376b;

    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.O(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.R(this, j10, j11);
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
        AbstractC0167z0.L(this, (Double[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final void d(Object obj, int i10) {
        int i11 = this.f9376b;
        System.arraycopy(this.f9375a, 0, (double[]) obj, i10, i11);
    }

    @Override // j$.util.stream.K0
    public final void f(Object obj) {
        DoubleConsumer doubleConsumer = (DoubleConsumer) obj;
        for (int i10 = 0; i10 < this.f9376b; i10++) {
            doubleConsumer.accept(this.f9375a[i10]);
        }
    }

    Y0(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9375a = new double[(int) j10];
        this.f9376b = 0;
    }

    Y0(double[] dArr) {
        this.f9375a = dArr;
        this.f9376b = dArr.length;
    }

    @Override // j$.util.stream.K0, j$.util.stream.L0
    public final j$.util.O spliterator() {
        return Spliterators.j(this.f9375a, 0, this.f9376b);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Spliterators.j(this.f9375a, 0, this.f9376b);
    }

    @Override // j$.util.stream.K0
    public final Object e() {
        double[] dArr = this.f9375a;
        int length = dArr.length;
        int i10 = this.f9376b;
        return length == i10 ? dArr : Arrays.copyOf(dArr, i10);
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9376b;
    }

    public String toString() {
        double[] dArr = this.f9375a;
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(dArr.length - this.f9376b), Arrays.toString(dArr));
    }
}

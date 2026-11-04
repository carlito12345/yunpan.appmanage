package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0124q1 implements J0 {

    /* renamed from: a, reason: collision with root package name */
    final long[] f9537a;

    /* renamed from: b, reason: collision with root package name */
    int f9538b;

    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.Q(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.T(this, j10, j11);
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
        AbstractC0167z0.N(this, (Long[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final void d(Object obj, int i10) {
        int i11 = this.f9538b;
        System.arraycopy(this.f9537a, 0, (long[]) obj, i10, i11);
    }

    @Override // j$.util.stream.K0
    public final void f(Object obj) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i10 = 0; i10 < this.f9538b; i10++) {
            longConsumer.accept(this.f9537a[i10]);
        }
    }

    C0124q1(long j10) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9537a = new long[(int) j10];
        this.f9538b = 0;
    }

    C0124q1(long[] jArr) {
        this.f9537a = jArr;
        this.f9538b = jArr.length;
    }

    @Override // j$.util.stream.K0, j$.util.stream.L0
    public final j$.util.O spliterator() {
        return Spliterators.l(this.f9537a, 0, this.f9538b);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Spliterators.l(this.f9537a, 0, this.f9538b);
    }

    @Override // j$.util.stream.K0
    public final Object e() {
        long[] jArr = this.f9537a;
        int length = jArr.length;
        int i10 = this.f9538b;
        return length == i10 ? jArr : Arrays.copyOf(jArr, i10);
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9538b;
    }

    public String toString() {
        long[] jArr = this.f9537a;
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(jArr.length - this.f9538b), Arrays.toString(jArr));
    }
}

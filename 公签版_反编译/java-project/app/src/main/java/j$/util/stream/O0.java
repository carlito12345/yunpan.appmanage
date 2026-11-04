package j$.util.stream;

import j$.util.Spliterator;
import j$.util.Spliterators;
import java.util.Arrays;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
class O0 implements L0 {

    /* renamed from: a, reason: collision with root package name */
    final Object[] f9299a;

    /* renamed from: b, reason: collision with root package name */
    int f9300b;

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.U(this, j10, j11, intFunction);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public final L0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    O0(long j10, IntFunction intFunction) {
        if (j10 >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f9299a = (Object[]) intFunction.apply((int) j10);
        this.f9300b = 0;
    }

    O0(Object[] objArr) {
        this.f9299a = objArr;
        this.f9300b = objArr.length;
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return Spliterators.m(this.f9299a, 0, this.f9300b);
    }

    @Override // j$.util.stream.L0
    public final void j(Object[] objArr, int i10) {
        System.arraycopy(this.f9299a, 0, objArr, i10, this.f9300b);
    }

    @Override // j$.util.stream.L0
    public final Object[] l(IntFunction intFunction) {
        Object[] objArr = this.f9299a;
        if (objArr.length == this.f9300b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9300b;
    }

    @Override // j$.util.stream.L0
    public final void forEach(Consumer consumer) {
        for (int i10 = 0; i10 < this.f9300b; i10++) {
            consumer.q(this.f9299a[i10]);
        }
    }

    public String toString() {
        Object[] objArr = this.f9299a;
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(objArr.length - this.f9300b), Arrays.toString(objArr));
    }
}

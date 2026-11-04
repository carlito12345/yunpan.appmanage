package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class X0 extends N0 {
    X0(L0 l02, L0 l03) {
        super(l02, l03);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return new C0114o1(this);
    }

    @Override // j$.util.stream.L0
    public final void j(Object[] objArr, int i10) {
        Objects.requireNonNull(objArr);
        L0 l02 = this.f9287a;
        l02.j(objArr, i10);
        this.f9288b.j(objArr, i10 + ((int) l02.count()));
    }

    @Override // j$.util.stream.L0
    public final Object[] l(IntFunction intFunction) {
        long jCount = count();
        if (jCount >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) jCount);
        j(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.L0
    public final void forEach(Consumer consumer) {
        this.f9287a.forEach(consumer);
        this.f9288b.forEach(consumer);
    }

    @Override // j$.util.stream.L0
    public final L0 i(long j10, long j11, IntFunction intFunction) {
        if (j10 == 0 && j11 == count()) {
            return this;
        }
        long jCount = this.f9287a.count();
        if (j10 >= jCount) {
            return this.f9288b.i(j10 - jCount, j11 - jCount, intFunction);
        }
        if (j11 > jCount) {
            return AbstractC0167z0.g0(EnumC0076g3.REFERENCE, this.f9287a.i(j10, jCount, intFunction), this.f9288b.i(0L, j11 - jCount, intFunction));
        }
        return this.f9287a.i(j10, j11, intFunction);
    }

    public final String toString() {
        return count() < 32 ? String.format("ConcNode[%s.%s]", this.f9287a, this.f9288b) : String.format("ConcNode[size=%d]", Long.valueOf(count()));
    }
}

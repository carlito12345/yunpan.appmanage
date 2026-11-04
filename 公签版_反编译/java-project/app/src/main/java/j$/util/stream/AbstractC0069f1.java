package j$.util.stream;

import java.util.function.IntFunction;

/* renamed from: j$.util.stream.f1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0069f1 implements L0 {
    @Override // j$.util.stream.L0
    public final long count() {
        return 0L;
    }

    public final void d(Object obj, int i10) {
    }

    public final void f(Object obj) {
    }

    @Override // j$.util.stream.L0
    public /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.U(this, j10, j11, intFunction);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ int r() {
        return 0;
    }

    @Override // j$.util.stream.L0
    public L0 b(int i10) {
        throw new IndexOutOfBoundsException();
    }

    AbstractC0069f1() {
    }

    @Override // j$.util.stream.L0
    public final Object[] l(IntFunction intFunction) {
        return (Object[]) intFunction.apply(0);
    }
}

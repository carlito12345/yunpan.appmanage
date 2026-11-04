package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class T0 extends W0 implements F0 {
    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.O(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.R(this, j10, j11);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.L(this, (Double[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final Object c(int i10) {
        return new double[i10];
    }

    T0(F0 f02, F0 f03) {
        super(f02, f03);
    }

    @Override // j$.util.stream.L0
    public final j$.util.O spliterator() {
        return new C0094k1(this);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return new C0094k1(this);
    }
}

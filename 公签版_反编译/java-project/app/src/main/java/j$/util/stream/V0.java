package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class V0 extends W0 implements J0 {
    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.Q(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.T(this, j10, j11);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.N(this, (Long[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final Object c(int i10) {
        return new long[i10];
    }

    V0(J0 j02, J0 j03) {
        super(j02, j03);
    }

    @Override // j$.util.stream.L0
    public final j$.util.O spliterator() {
        return new C0104m1(this);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return new C0104m1(this);
    }
}

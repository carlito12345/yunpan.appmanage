package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class U0 extends W0 implements H0 {
    @Override // j$.util.stream.L0
    public final /* synthetic */ void forEach(Consumer consumer) {
        AbstractC0167z0.P(this, consumer);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ L0 i(long j10, long j11, IntFunction intFunction) {
        return AbstractC0167z0.S(this, j10, j11);
    }

    @Override // j$.util.stream.L0
    public final /* synthetic */ void j(Object[] objArr, int i10) {
        AbstractC0167z0.M(this, (Integer[]) objArr, i10);
    }

    @Override // j$.util.stream.K0
    public final Object c(int i10) {
        return new int[i10];
    }

    U0(H0 h02, H0 h03) {
        super(h02, h03);
    }

    @Override // j$.util.stream.L0
    public final j$.util.O spliterator() {
        return new C0099l1(this);
    }

    @Override // j$.util.stream.L0
    public final Spliterator spliterator() {
        return new C0099l1(this);
    }
}

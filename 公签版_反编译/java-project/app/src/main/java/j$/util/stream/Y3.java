package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class Y3 extends AbstractC0048b0 implements h4 {
    public Y3(AbstractC0058d0 abstractC0058d0, int i10) {
        super(abstractC0058d0, i10);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        if (EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            return R0(spliterator, abstractC0047b, new C0068f0(13)).spliterator();
        }
        return new m4((j$.util.I) abstractC0047b.J0(spliterator), 0);
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        return (L0) new j4(this, abstractC0167z0, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new X3(this, interfaceC0125q2, false);
    }

    @Override // j$.util.stream.h4
    public final i4 k(D0 d02, boolean z) {
        return new X3(this, d02, z);
    }
}

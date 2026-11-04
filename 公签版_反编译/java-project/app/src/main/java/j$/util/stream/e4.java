package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class e4 extends AbstractC0166z {
    e4(B b10, int i10) {
        super(b10, i10);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        if (EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            return R0(spliterator, abstractC0047b, new C0068f0(16)).spliterator();
        }
        return new l4((j$.util.F) abstractC0047b.J0(spliterator), 1);
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        return (L0) new k4(this, abstractC0167z0, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new d4(this, interfaceC0125q2);
    }
}

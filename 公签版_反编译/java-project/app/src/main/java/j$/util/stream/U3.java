package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Predicate;

/* loaded from: classes2.dex */
final class U3 extends AbstractC0075g2 implements h4 {

    /* renamed from: s, reason: collision with root package name */
    final /* synthetic */ Predicate f9362s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U3(AbstractC0085i2 abstractC0085i2, int i10, Predicate predicate) {
        super(abstractC0085i2, i10);
        this.f9362s = predicate;
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        if (EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            return R0(spliterator, abstractC0047b, new C0068f0(5)).spliterator();
        }
        return new o4(abstractC0047b.J0(spliterator), this.f9362s, 0);
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        return (L0) new j4(this, abstractC0167z0, spliterator, intFunction).invoke();
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        return new T3(this, interfaceC0125q2, false);
    }

    @Override // j$.util.stream.h4
    public final i4 k(D0 d02, boolean z) {
        return new T3(this, d02, z);
    }
}

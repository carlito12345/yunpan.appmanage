package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class I2 extends AbstractC0166z {
    I2(B b10) {
        super(b10, EnumC0071f3.f9441q | EnumC0071f3.f9439o);
    }

    @Override // j$.util.stream.AbstractC0047b
    public final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        Objects.requireNonNull(interfaceC0125q2);
        if (EnumC0071f3.SORTED.n(i10)) {
            return interfaceC0125q2;
        }
        if (EnumC0071f3.SIZED.n(i10)) {
            return new N2(interfaceC0125q2);
        }
        return new F2(interfaceC0125q2);
    }

    @Override // j$.util.stream.AbstractC0047b
    public final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        if (EnumC0071f3.SORTED.n(abstractC0167z0.t0())) {
            return abstractC0167z0.l0(spliterator, false, intFunction);
        }
        double[] dArr = (double[]) ((F0) abstractC0167z0.l0(spliterator, true, intFunction)).e();
        Arrays.sort(dArr);
        return new Y0(dArr);
    }
}

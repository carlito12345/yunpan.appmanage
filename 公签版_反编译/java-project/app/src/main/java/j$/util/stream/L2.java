package j$.util.stream;

import j$.util.Comparator$CC;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.Comparator;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
final class L2 extends AbstractC0075g2 {

    /* renamed from: s, reason: collision with root package name */
    private final boolean f9271s;

    /* renamed from: t, reason: collision with root package name */
    private final Comparator f9272t;

    L2(AbstractC0085i2 abstractC0085i2) {
        super(abstractC0085i2, EnumC0071f3.f9441q | EnumC0071f3.f9439o);
        this.f9271s = true;
        this.f9272t = Comparator$CC.a();
    }

    L2(AbstractC0085i2 abstractC0085i2, Comparator comparator) {
        super(abstractC0085i2, EnumC0071f3.f9441q | EnumC0071f3.f9440p);
        this.f9271s = false;
        this.f9272t = (Comparator) Objects.requireNonNull(comparator);
    }

    @Override // j$.util.stream.AbstractC0047b
    public final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        Objects.requireNonNull(interfaceC0125q2);
        if (EnumC0071f3.SORTED.n(i10) && this.f9271s) {
            return interfaceC0125q2;
        }
        if (EnumC0071f3.SIZED.n(i10)) {
            return new Q2(interfaceC0125q2, this.f9272t);
        }
        return new M2(interfaceC0125q2, this.f9272t);
    }

    @Override // j$.util.stream.AbstractC0047b
    public final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        if (EnumC0071f3.SORTED.n(abstractC0167z0.t0()) && this.f9271s) {
            return abstractC0167z0.l0(spliterator, false, intFunction);
        }
        Object[] objArrL = abstractC0167z0.l0(spliterator, true, intFunction).l(intFunction);
        Arrays.sort(objArrL, this.f9272t);
        return new O0(objArrL);
    }
}

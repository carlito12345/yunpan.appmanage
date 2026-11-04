package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0107n extends AbstractC0075g2 {
    C0107n(AbstractC0085i2 abstractC0085i2, int i10) {
        super(abstractC0085i2, i10);
    }

    static P0 Y0(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        C0087j c0087j = new C0087j(25);
        C0087j c0087j2 = new C0087j(26);
        C0087j c0087j3 = new C0087j(27);
        Objects.requireNonNull(c0087j);
        Objects.requireNonNull(c0087j2);
        Objects.requireNonNull(c0087j3);
        return new P0((Collection) new F1(EnumC0076g3.REFERENCE, c0087j3, c0087j2, c0087j, 3).y(abstractC0167z0, spliterator));
    }

    @Override // j$.util.stream.AbstractC0047b
    final L0 R0(Spliterator spliterator, AbstractC0167z0 abstractC0167z0, IntFunction intFunction) {
        if (EnumC0071f3.DISTINCT.n(abstractC0167z0.t0())) {
            return abstractC0167z0.l0(spliterator, false, intFunction);
        }
        if (EnumC0071f3.ORDERED.n(abstractC0167z0.t0())) {
            return Y0(abstractC0167z0, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        C0123q0 c0123q0 = new C0123q0(2, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(c0123q0);
        new P(c0123q0, false).b(abstractC0167z0, spliterator);
        Collection collectionKeySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(collectionKeySet);
            hashSet.add(null);
            collectionKeySet = hashSet;
        }
        return new P0(collectionKeySet);
    }

    @Override // j$.util.stream.AbstractC0047b
    final Spliterator S0(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        if (EnumC0071f3.DISTINCT.n(abstractC0047b.t0())) {
            return abstractC0047b.J0(spliterator);
        }
        if (EnumC0071f3.ORDERED.n(abstractC0047b.t0())) {
            return Y0(abstractC0047b, spliterator).spliterator();
        }
        return new C0116o3(abstractC0047b.J0(spliterator));
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        Objects.requireNonNull(interfaceC0125q2);
        if (EnumC0071f3.DISTINCT.n(i10)) {
            return interfaceC0125q2;
        }
        if (EnumC0071f3.SORTED.n(i10)) {
            return new C0097l(interfaceC0125q2);
        }
        return new C0102m(interfaceC0125q2);
    }
}

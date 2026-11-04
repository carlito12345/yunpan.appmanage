package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class F implements O3 {

    /* renamed from: a, reason: collision with root package name */
    final int f9217a;

    /* renamed from: b, reason: collision with root package name */
    final Object f9218b;

    /* renamed from: c, reason: collision with root package name */
    final Predicate f9219c;

    /* renamed from: d, reason: collision with root package name */
    final Supplier f9220d;

    F(boolean z, EnumC0076g3 enumC0076g3, Object obj, Predicate predicate, Supplier supplier) {
        this.f9217a = (z ? 0 : EnumC0071f3.r) | EnumC0071f3.f9444u;
        this.f9218b = obj;
        this.f9219c = predicate;
        this.f9220d = supplier;
    }

    @Override // j$.util.stream.O3
    public final int l() {
        return this.f9217a;
    }

    @Override // j$.util.stream.O3
    public final Object f(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        P3 p32 = (P3) this.f9220d.get();
        abstractC0047b.H0(spliterator, p32);
        Object obj = p32.get();
        return obj != null ? obj : this.f9218b;
    }

    @Override // j$.util.stream.O3
    public final Object y(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        return new L(this, EnumC0071f3.ORDERED.n(abstractC0167z0.t0()), (AbstractC0047b) abstractC0167z0, spliterator).invoke();
    }
}

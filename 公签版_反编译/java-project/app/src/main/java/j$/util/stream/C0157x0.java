package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.x0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0157x0 implements O3 {

    /* renamed from: a, reason: collision with root package name */
    final EnumC0152w0 f9583a;

    /* renamed from: b, reason: collision with root package name */
    final Supplier f9584b;

    C0157x0(EnumC0076g3 enumC0076g3, EnumC0152w0 enumC0152w0, Supplier supplier) {
        this.f9583a = enumC0152w0;
        this.f9584b = supplier;
    }

    @Override // j$.util.stream.O3
    public final int l() {
        return EnumC0071f3.f9444u | EnumC0071f3.r;
    }

    @Override // j$.util.stream.O3
    public final Object f(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        AbstractC0147v0 abstractC0147v0 = (AbstractC0147v0) this.f9584b.get();
        abstractC0047b.H0(spliterator, abstractC0147v0);
        return Boolean.valueOf(abstractC0147v0.f9567b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // j$.util.stream.O3
    public final Object y(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        return (Boolean) new C0162y0(this, (AbstractC0047b) abstractC0167z0, spliterator).invoke();
    }
}

package j$.util.stream;

import j$.util.stream.Collector;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class M1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ BinaryOperator f9279h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ BiConsumer f9280i;

    /* renamed from: j, reason: collision with root package name */
    final /* synthetic */ Supplier f9281j;

    /* renamed from: k, reason: collision with root package name */
    final /* synthetic */ Collector f9282k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    M1(EnumC0076g3 enumC0076g3, BinaryOperator binaryOperator, BiConsumer biConsumer, Supplier supplier, Collector collector) {
        super(enumC0076g3);
        this.f9279h = binaryOperator;
        this.f9280i = biConsumer;
        this.f9281j = supplier;
        this.f9282k = collector;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        return new N1(this.f9281j, this.f9280i, this.f9279h);
    }

    @Override // j$.util.stream.AbstractC0167z0, j$.util.stream.O3
    public final int l() {
        if (this.f9282k.characteristics().contains(Collector.Characteristics.UNORDERED)) {
            return EnumC0071f3.r;
        }
        return 0;
    }
}

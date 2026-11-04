package j$.util.stream;

import java.util.function.DoubleBinaryOperator;

/* loaded from: classes2.dex */
final class J1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ DoubleBinaryOperator f9256h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ double f9257i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    J1(EnumC0076g3 enumC0076g3, DoubleBinaryOperator doubleBinaryOperator, double d10) {
        super(enumC0076g3);
        this.f9256h = doubleBinaryOperator;
        this.f9257i = d10;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        return new E1(this.f9257i, this.f9256h);
    }
}

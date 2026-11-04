package j$.util.stream;

import java.util.function.IntBinaryOperator;

/* loaded from: classes2.dex */
final class Q1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ IntBinaryOperator f9315h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ int f9316i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Q1(EnumC0076g3 enumC0076g3, IntBinaryOperator intBinaryOperator, int i10) {
        super(enumC0076g3);
        this.f9315h = intBinaryOperator;
        this.f9316i = i10;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        return new P1(this.f9316i, this.f9315h);
    }
}

package j$.util.stream;

import java.util.function.BinaryOperator;
import java.util.function.DoubleBinaryOperator;
import java.util.function.IntBinaryOperator;
import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
final class D1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9207h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ Object f9208i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ D1(EnumC0076g3 enumC0076g3, Object obj, int i10) {
        super(enumC0076g3);
        this.f9207h = i10;
        this.f9208i = obj;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        switch (this.f9207h) {
            case 0:
                return new U1((LongBinaryOperator) this.f9208i);
            case 1:
                return new G1((DoubleBinaryOperator) this.f9208i);
            case 2:
                return new L1((BinaryOperator) this.f9208i);
            default:
                return new R1((IntBinaryOperator) this.f9208i);
        }
    }
}

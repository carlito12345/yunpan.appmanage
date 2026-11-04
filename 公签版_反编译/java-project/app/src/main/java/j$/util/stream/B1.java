package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* loaded from: classes2.dex */
final class B1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ LongBinaryOperator f9193h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ long f9194i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    B1(EnumC0076g3 enumC0076g3, LongBinaryOperator longBinaryOperator, long j10) {
        super(enumC0076g3);
        this.f9193h = longBinaryOperator;
        this.f9194i = j10;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        return new T1(this.f9194i, this.f9193h);
    }
}

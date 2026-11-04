package j$.util.stream;

import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.ObjDoubleConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class F1 extends AbstractC0167z0 {

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f9221h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ Object f9222i;

    /* renamed from: j, reason: collision with root package name */
    final /* synthetic */ Object f9223j;

    /* renamed from: k, reason: collision with root package name */
    final /* synthetic */ Object f9224k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ F1(EnumC0076g3 enumC0076g3, Object obj, Object obj2, Object obj3, int i10) {
        super(enumC0076g3);
        this.f9221h = i10;
        this.f9223j = obj;
        this.f9224k = obj2;
        this.f9222i = obj3;
    }

    @Override // j$.util.stream.AbstractC0167z0
    public final V1 G0() {
        switch (this.f9221h) {
            case 0:
                return new C1((Supplier) this.f9222i, (ObjLongConsumer) this.f9224k, (C0122q) this.f9223j);
            case 1:
                return new I1((Supplier) this.f9222i, (ObjDoubleConsumer) this.f9224k, (C0122q) this.f9223j);
            case 2:
                return new K1(this.f9222i, (BiFunction) this.f9224k, (BinaryOperator) this.f9223j);
            case 3:
                return new O1((Supplier) this.f9222i, (BiConsumer) this.f9224k, (BiConsumer) this.f9223j);
            default:
                return new S1((Supplier) this.f9222i, (ObjIntConsumer) this.f9224k, (C0122q) this.f9223j);
        }
    }
}

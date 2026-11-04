package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* renamed from: j$.util.stream.s0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0132s0 extends AbstractC0147v0 implements InterfaceC0115o2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    C0132s0(EnumC0152w0 enumC0152w0) {
        super(enumC0152w0);
    }

    @Override // j$.util.stream.AbstractC0147v0, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        if (this.f9566a) {
            return;
        }
        IntPredicate intPredicate = null;
        intPredicate.test(i10);
        throw null;
    }
}

package j$.util.stream;

import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class Y1 extends AbstractC0050b2 implements InterfaceC0115o2 {
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    @Override // j$.util.stream.W1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f9403b);
    }

    Y1() {
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9403b += ((AbstractC0050b2) v12).f9403b;
    }

    @Override // j$.util.stream.AbstractC0050b2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9403b++;
    }
}

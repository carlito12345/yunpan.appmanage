package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class N extends Q implements InterfaceC0115o2 {

    /* renamed from: b, reason: collision with root package name */
    final IntConsumer f9286b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    @Override // j$.util.stream.O3
    public final Object f(AbstractC0047b abstractC0047b, Spliterator spliterator) {
        abstractC0047b.H0(spliterator, this);
        return null;
    }

    @Override // j$.util.stream.O3
    public final /* bridge */ /* synthetic */ Object y(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        b(abstractC0167z0, spliterator);
        return null;
    }

    N(IntConsumer intConsumer, boolean z) {
        super(z);
        this.f9286b = intConsumer;
    }

    @Override // j$.util.stream.Q, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9286b.accept(i10);
    }
}

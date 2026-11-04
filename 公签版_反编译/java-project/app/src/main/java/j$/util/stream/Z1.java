package j$.util.stream;

import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class Z1 extends AbstractC0050b2 implements InterfaceC0120p2 {
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
    }

    @Override // j$.util.stream.W1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f9403b);
    }

    Z1() {
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9403b += ((AbstractC0050b2) v12).f9403b;
    }

    @Override // j$.util.stream.AbstractC0050b2, j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9403b++;
    }
}

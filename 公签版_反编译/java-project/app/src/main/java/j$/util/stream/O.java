package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class O extends Q implements InterfaceC0120p2 {

    /* renamed from: b, reason: collision with root package name */
    final LongConsumer f9298b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
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

    O(LongConsumer longConsumer, boolean z) {
        super(z);
        this.f9298b = longConsumer;
    }

    @Override // j$.util.stream.Q, j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9298b.accept(j10);
    }
}

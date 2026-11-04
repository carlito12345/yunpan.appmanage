package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class P extends Q {

    /* renamed from: b, reason: collision with root package name */
    final Consumer f9306b;

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
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

    P(Consumer consumer, boolean z) {
        super(z);
        this.f9306b = consumer;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        this.f9306b.q(obj);
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class M extends Q implements InterfaceC0110n2 {

    /* renamed from: b, reason: collision with root package name */
    final DoubleConsumer f9277b;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final /* bridge */ /* synthetic */ Object get() {
        return null;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
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

    M(DoubleConsumer doubleConsumer, boolean z) {
        super(z);
        this.f9277b = doubleConsumer;
    }

    @Override // j$.util.stream.Q, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        this.f9277b.accept(d10);
    }
}

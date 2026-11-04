package j$.util.stream;

import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class X1 extends AbstractC0050b2 implements InterfaceC0110n2 {
    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    @Override // j$.util.stream.W1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f9403b);
    }

    X1() {
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9403b += ((AbstractC0050b2) v12).f9403b;
    }

    @Override // j$.util.stream.AbstractC0050b2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        this.f9403b++;
    }
}

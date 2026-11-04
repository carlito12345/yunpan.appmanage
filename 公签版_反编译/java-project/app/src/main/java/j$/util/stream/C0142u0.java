package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoublePredicate;

/* renamed from: j$.util.stream.u0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0142u0 extends AbstractC0147v0 implements InterfaceC0110n2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    C0142u0(EnumC0152w0 enumC0152w0) {
        super(enumC0152w0);
    }

    @Override // j$.util.stream.AbstractC0147v0, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        if (this.f9566a) {
            return;
        }
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d10);
        throw null;
    }
}

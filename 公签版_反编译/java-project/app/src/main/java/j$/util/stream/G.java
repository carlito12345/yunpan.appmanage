package j$.util.stream;

import j$.util.C0035l;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
final class G extends K implements InterfaceC0110n2 {

    /* renamed from: c, reason: collision with root package name */
    static final F f9227c;

    /* renamed from: d, reason: collision with root package name */
    static final F f9228d;

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    G() {
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        q(Double.valueOf(d10));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f9258a) {
            return C0035l.d(((Double) this.f9259b).doubleValue());
        }
        return null;
    }

    static {
        EnumC0076g3 enumC0076g3 = EnumC0076g3.DOUBLE_VALUE;
        f9227c = new F(true, enumC0076g3, C0035l.a(), new C0117p(7), new C0087j(7));
        f9228d = new F(false, enumC0076g3, C0035l.a(), new C0117p(7), new C0087j(7));
    }
}

package j$.util.stream;

import j$.util.C0036m;
import j$.util.function.IntConsumer$CC;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class H extends K implements InterfaceC0115o2 {

    /* renamed from: c, reason: collision with root package name */
    static final F f9235c;

    /* renamed from: d, reason: collision with root package name */
    static final F f9236d;

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    H() {
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        q(Integer.valueOf(i10));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f9258a) {
            return C0036m.d(((Integer) this.f9259b).intValue());
        }
        return null;
    }

    static {
        EnumC0076g3 enumC0076g3 = EnumC0076g3.INT_VALUE;
        f9235c = new F(true, enumC0076g3, C0036m.a(), new C0117p(8), new C0087j(8));
        f9236d = new F(false, enumC0076g3, C0036m.a(), new C0117p(8), new C0087j(8));
    }
}

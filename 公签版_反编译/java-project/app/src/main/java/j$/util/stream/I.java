package j$.util.stream;

import j$.util.C0037n;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class I extends K implements InterfaceC0120p2 {

    /* renamed from: c, reason: collision with root package name */
    static final F f9244c;

    /* renamed from: d, reason: collision with root package name */
    static final F f9245d;

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    I() {
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        q(Long.valueOf(j10));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f9258a) {
            return C0037n.d(((Long) this.f9259b).longValue());
        }
        return null;
    }

    static {
        EnumC0076g3 enumC0076g3 = EnumC0076g3.LONG_VALUE;
        f9244c = new F(true, enumC0076g3, C0037n.a(), new C0117p(9), new C0087j(9));
        f9245d = new F(false, enumC0076g3, C0037n.a(), new C0117p(9), new C0087j(9));
    }
}

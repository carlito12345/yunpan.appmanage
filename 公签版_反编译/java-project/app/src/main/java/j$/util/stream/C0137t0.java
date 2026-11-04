package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongPredicate;

/* renamed from: j$.util.stream.t0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0137t0 extends AbstractC0147v0 implements InterfaceC0120p2 {
    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
    }

    C0137t0(EnumC0152w0 enumC0152w0) {
        super(enumC0152w0);
    }

    @Override // j$.util.stream.AbstractC0147v0, j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        if (this.f9566a) {
            return;
        }
        LongPredicate longPredicate = null;
        longPredicate.test(j10);
        throw null;
    }
}

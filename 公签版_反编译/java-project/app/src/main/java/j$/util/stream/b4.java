package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
final class b4 extends AbstractC0100l2 implements i4 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c4 f9405b;

    @Override // j$.util.stream.i4
    public final long g() {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    b4(c4 c4Var, InterfaceC0125q2 interfaceC0125q2, boolean z) {
        super(interfaceC0125q2);
        this.f9405b = c4Var;
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9405b.getClass();
        LongPredicate longPredicate = null;
        longPredicate.test(j10);
        throw null;
    }
}

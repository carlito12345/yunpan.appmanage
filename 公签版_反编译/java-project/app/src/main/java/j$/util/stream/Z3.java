package j$.util.stream;

import java.util.function.LongPredicate;

/* loaded from: classes2.dex */
final class Z3 extends AbstractC0100l2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9388b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ a4 f9389c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Z3(a4 a4Var, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9389c = a4Var;
        this.f9388b = true;
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9495a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        if (this.f9388b) {
            this.f9389c.getClass();
            LongPredicate longPredicate = null;
            longPredicate.test(j10);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return !this.f9388b || this.f9495a.p();
    }
}

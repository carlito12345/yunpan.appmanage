package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
final class V3 extends AbstractC0095k2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9365b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ W3 f9366c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    V3(W3 w32, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9366c = w32;
        this.f9365b = true;
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9485a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        if (this.f9365b) {
            this.f9366c.getClass();
            IntPredicate intPredicate = null;
            intPredicate.test(i10);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return !this.f9365b || this.f9485a.p();
    }
}

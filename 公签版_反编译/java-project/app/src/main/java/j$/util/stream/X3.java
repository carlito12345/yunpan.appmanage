package j$.util.stream;

import java.util.function.IntPredicate;

/* loaded from: classes2.dex */
final class X3 extends AbstractC0095k2 implements i4 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Y3 f9372b;

    @Override // j$.util.stream.i4
    public final long g() {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    X3(Y3 y32, InterfaceC0125q2 interfaceC0125q2, boolean z) {
        super(interfaceC0125q2);
        this.f9372b = y32;
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9372b.getClass();
        IntPredicate intPredicate = null;
        intPredicate.test(i10);
        throw null;
    }
}

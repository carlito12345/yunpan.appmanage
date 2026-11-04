package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
final class f4 extends AbstractC0090j2 implements i4 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g4 f9451b;

    @Override // j$.util.stream.i4
    public final long g() {
        return 0L;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    f4(g4 g4Var, InterfaceC0125q2 interfaceC0125q2, boolean z) {
        super(interfaceC0125q2);
        this.f9451b = g4Var;
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        this.f9451b.getClass();
        DoublePredicate doublePredicate = null;
        doublePredicate.test(d10);
        throw null;
    }
}

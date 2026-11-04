package j$.util.stream;

import java.util.function.DoublePredicate;

/* loaded from: classes2.dex */
final class d4 extends AbstractC0090j2 {

    /* renamed from: b, reason: collision with root package name */
    boolean f9418b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ e4 f9419c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    d4(e4 e4Var, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9419c = e4Var;
        this.f9418b = true;
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9474a.n(-1L);
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        if (this.f9418b) {
            this.f9419c.getClass();
            DoublePredicate doublePredicate = null;
            doublePredicate.test(d10);
            throw null;
        }
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return !this.f9418b || this.f9474a.p();
    }
}

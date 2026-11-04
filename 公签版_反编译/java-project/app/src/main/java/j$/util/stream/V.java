package j$.util.stream;

import java.util.function.IntConsumer;
import java.util.function.IntFunction;
import java.util.function.IntPredicate;
import java.util.function.IntToDoubleFunction;
import java.util.function.IntToLongFunction;
import java.util.function.IntUnaryOperator;

/* loaded from: classes2.dex */
final class V extends AbstractC0095k2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9363b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ AbstractC0047b f9364c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V(AbstractC0047b abstractC0047b, InterfaceC0125q2 interfaceC0125q2, int i10) {
        super(interfaceC0125q2);
        this.f9363b = i10;
        this.f9364c = abstractC0047b;
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        switch (this.f9363b) {
            case 5:
                this.f9485a.n(-1L);
                break;
            default:
                super.n(j10);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        switch (this.f9363b) {
            case 0:
                this.f9485a.accept((InterfaceC0125q2) ((IntFunction) ((C0131s) this.f9364c).f9551t).apply(i10));
                return;
            case 1:
                ((IntConsumer) ((W) this.f9364c).f9368t).accept(i10);
                this.f9485a.accept(i10);
                return;
            case 2:
                this.f9485a.accept(((IntUnaryOperator) ((W) this.f9364c).f9368t).applyAsInt(i10));
                return;
            case 3:
                this.f9485a.accept(((IntToLongFunction) ((Y) this.f9364c).f9374t).applyAsLong(i10));
                return;
            case 4:
                ((C0136t) this.f9364c).getClass();
                IntToDoubleFunction intToDoubleFunction = null;
                intToDoubleFunction.applyAsDouble(i10);
                throw null;
            default:
                ((C0141u) this.f9364c).getClass();
                IntPredicate intPredicate = null;
                intPredicate.test(i10);
                throw null;
        }
    }
}

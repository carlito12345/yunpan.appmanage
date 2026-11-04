package j$.util.stream;

import java.util.function.DoubleConsumer;
import java.util.function.DoubleFunction;
import java.util.function.DoublePredicate;
import java.util.function.DoubleToIntFunction;
import java.util.function.DoubleToLongFunction;
import java.util.function.DoubleUnaryOperator;

/* loaded from: classes2.dex */
final class r extends AbstractC0090j2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9541b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ AbstractC0047b f9542c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(AbstractC0047b abstractC0047b, InterfaceC0125q2 interfaceC0125q2, int i10) {
        super(interfaceC0125q2);
        this.f9541b = i10;
        this.f9542c = abstractC0047b;
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        switch (this.f9541b) {
            case 4:
                this.f9474a.n(-1L);
                break;
            default:
                super.n(j10);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        switch (this.f9541b) {
            case 0:
                this.f9474a.accept((InterfaceC0125q2) ((DoubleFunction) ((C0131s) this.f9542c).f9551t).apply(d10));
                return;
            case 1:
                ((C0136t) this.f9542c).getClass();
                DoubleUnaryOperator doubleUnaryOperator = null;
                doubleUnaryOperator.applyAsDouble(d10);
                throw null;
            case 2:
                ((C0141u) this.f9542c).getClass();
                DoubleToIntFunction doubleToIntFunction = null;
                doubleToIntFunction.applyAsInt(d10);
                throw null;
            case 3:
                ((C0146v) this.f9542c).getClass();
                DoubleToLongFunction doubleToLongFunction = null;
                doubleToLongFunction.applyAsLong(d10);
                throw null;
            case 4:
                ((C0136t) this.f9542c).getClass();
                DoublePredicate doublePredicate = null;
                doublePredicate.test(d10);
                throw null;
            default:
                ((DoubleConsumer) ((C0156x) this.f9542c).f9582t).accept(d10);
                this.f9474a.accept(d10);
                return;
        }
    }
}

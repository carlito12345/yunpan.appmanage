package j$.util.stream;

import java.util.function.LongConsumer;
import java.util.function.LongFunction;
import java.util.function.LongPredicate;
import java.util.function.LongToDoubleFunction;
import java.util.function.LongToIntFunction;
import java.util.function.LongUnaryOperator;

/* renamed from: j$.util.stream.g0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0073g0 extends AbstractC0100l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9453b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ AbstractC0047b f9454c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0073g0(AbstractC0047b abstractC0047b, InterfaceC0125q2 interfaceC0125q2, int i10) {
        super(interfaceC0125q2);
        this.f9453b = i10;
        this.f9454c = abstractC0047b;
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        switch (this.f9453b) {
            case 4:
                this.f9495a.n(-1L);
                break;
            default:
                super.n(j10);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        switch (this.f9453b) {
            case 0:
                this.f9495a.accept((InterfaceC0125q2) ((LongFunction) ((C0131s) this.f9454c).f9551t).apply(j10));
                return;
            case 1:
                ((C0146v) this.f9454c).getClass();
                LongUnaryOperator longUnaryOperator = null;
                longUnaryOperator.applyAsLong(j10);
                throw null;
            case 2:
                ((C0141u) this.f9454c).getClass();
                LongToIntFunction longToIntFunction = null;
                longToIntFunction.applyAsInt(j10);
                throw null;
            case 3:
                ((C0136t) this.f9454c).getClass();
                LongToDoubleFunction longToDoubleFunction = null;
                longToDoubleFunction.applyAsDouble(j10);
                throw null;
            case 4:
                ((C0146v) this.f9454c).getClass();
                LongPredicate longPredicate = null;
                longPredicate.test(j10);
                throw null;
            default:
                ((LongConsumer) ((Y) this.f9454c).f9374t).accept(j10);
                this.f9495a.accept(j10);
                return;
        }
    }
}

package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class S1 extends W1 implements V1, InterfaceC0115o2 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Supplier f9340b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ ObjIntConsumer f9341c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0122q f9342d;

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        AbstractC0167z0.J();
        throw null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    S1(Supplier supplier, ObjIntConsumer objIntConsumer, C0122q c0122q) {
        this.f9340b = supplier;
        this.f9341c = objIntConsumer;
        this.f9342d = c0122q;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9369a = this.f9342d.apply(this.f9369a, ((S1) v12).f9369a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9369a = this.f9340b.get();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9341c.accept(this.f9369a, i10);
    }
}

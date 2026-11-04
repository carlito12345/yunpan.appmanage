package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class P1 implements V1, InterfaceC0115o2 {

    /* renamed from: a, reason: collision with root package name */
    private int f9308a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f9309b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ IntBinaryOperator f9310c;

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

    P1(int i10, IntBinaryOperator intBinaryOperator) {
        this.f9309b = i10;
        this.f9310c = intBinaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        accept(((P1) v12).f9308a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9308a = this.f9309b;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        this.f9308a = this.f9310c.applyAsInt(this.f9308a, i10);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Integer.valueOf(this.f9308a);
    }
}

package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class K1 extends W1 implements V1 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f9260b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ BiFunction f9261c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ BinaryOperator f9262d;

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        AbstractC0167z0.J();
        throw null;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    K1(Object obj, BiFunction biFunction, BinaryOperator binaryOperator) {
        this.f9260b = obj;
        this.f9261c = biFunction;
        this.f9262d = binaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9369a = this.f9262d.apply(this.f9369a, ((K1) v12).f9369a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9369a = this.f9260b;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        this.f9369a = this.f9261c.apply(this.f9369a, obj);
    }
}

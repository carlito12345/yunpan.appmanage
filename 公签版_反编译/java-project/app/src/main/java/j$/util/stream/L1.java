package j$.util.stream;

import j$.util.Optional;
import j$.util.function.Consumer$CC;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
final class L1 implements V1 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f9268a;

    /* renamed from: b, reason: collision with root package name */
    private Object f9269b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ BinaryOperator f9270c;

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

    L1(BinaryOperator binaryOperator) {
        this.f9270c = binaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        L1 l12 = (L1) v12;
        if (l12.f9268a) {
            return;
        }
        q(l12.f9269b);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9268a = true;
        this.f9269b = null;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        if (this.f9268a) {
            this.f9268a = false;
            this.f9269b = obj;
        } else {
            this.f9269b = this.f9270c.apply(this.f9269b, obj);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f9268a ? Optional.a() : Optional.d(this.f9269b);
    }
}

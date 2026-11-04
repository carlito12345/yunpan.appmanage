package j$.util.stream;

import j$.util.C0036m;
import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntBinaryOperator;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
final class R1 implements V1, InterfaceC0115o2 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f9320a;

    /* renamed from: b, reason: collision with root package name */
    private int f9321b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ IntBinaryOperator f9322c;

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

    R1(IntBinaryOperator intBinaryOperator) {
        this.f9322c = intBinaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        R1 r12 = (R1) v12;
        if (r12.f9320a) {
            return;
        }
        accept(r12.f9321b);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9320a = true;
        this.f9321b = 0;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        if (this.f9320a) {
            this.f9320a = false;
            this.f9321b = i10;
        } else {
            this.f9321b = this.f9322c.applyAsInt(this.f9321b, i10);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f9320a ? C0036m.a() : C0036m.d(this.f9321b);
    }
}

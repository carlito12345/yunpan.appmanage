package j$.util.stream;

import j$.util.C0037n;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class U1 implements V1, InterfaceC0120p2 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f9358a;

    /* renamed from: b, reason: collision with root package name */
    private long f9359b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ LongBinaryOperator f9360c;

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

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        k((Long) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        AbstractC0167z0.G(this, l);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    U1(LongBinaryOperator longBinaryOperator) {
        this.f9360c = longBinaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        U1 u12 = (U1) v12;
        if (u12.f9358a) {
            return;
        }
        accept(u12.f9359b);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9358a = true;
        this.f9359b = 0L;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        if (this.f9358a) {
            this.f9358a = false;
            this.f9359b = j10;
        } else {
            this.f9359b = this.f9360c.applyAsLong(this.f9359b, j10);
        }
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return this.f9358a ? C0037n.a() : C0037n.d(this.f9359b);
    }
}

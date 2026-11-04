package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongBinaryOperator;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
final class T1 implements V1, InterfaceC0120p2 {

    /* renamed from: a, reason: collision with root package name */
    private long f9350a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f9351b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ LongBinaryOperator f9352c;

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

    T1(long j10, LongBinaryOperator longBinaryOperator) {
        this.f9351b = j10;
        this.f9352c = longBinaryOperator;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        accept(((T1) v12).f9350a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9350a = this.f9351b;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9350a = this.f9352c.applyAsLong(this.f9350a, j10);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f9350a);
    }
}

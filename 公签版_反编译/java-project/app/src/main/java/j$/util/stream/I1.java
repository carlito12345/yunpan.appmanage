package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;
import java.util.function.ObjDoubleConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class I1 extends W1 implements V1, InterfaceC0110n2 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Supplier f9247b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ ObjDoubleConsumer f9248c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0122q f9249d;

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

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        q((Double) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        AbstractC0167z0.C(this, d10);
    }

    I1(Supplier supplier, ObjDoubleConsumer objDoubleConsumer, C0122q c0122q) {
        this.f9247b = supplier;
        this.f9248c = objDoubleConsumer;
        this.f9249d = c0122q;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9369a = this.f9249d.apply(this.f9369a, ((I1) v12).f9369a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9369a = this.f9247b.get();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        this.f9248c.accept(this.f9369a, d10);
    }
}

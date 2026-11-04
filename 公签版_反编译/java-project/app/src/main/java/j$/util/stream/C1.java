package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;
import java.util.function.ObjLongConsumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class C1 extends W1 implements V1, InterfaceC0120p2 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Supplier f9198b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ ObjLongConsumer f9199c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0122q f9200d;

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

    C1(Supplier supplier, ObjLongConsumer objLongConsumer, C0122q c0122q) {
        this.f9198b = supplier;
        this.f9199c = objLongConsumer;
        this.f9200d = c0122q;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9369a = this.f9200d.apply(this.f9369a, ((C1) v12).f9369a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9369a = this.f9198b.get();
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        this.f9199c.accept(this.f9369a, j10);
    }
}

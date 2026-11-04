package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
final class O1 extends W1 implements V1 {

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Supplier f9301b;

    /* renamed from: c, reason: collision with root package name */
    final /* synthetic */ BiConsumer f9302c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ BiConsumer f9303d;

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

    O1(Supplier supplier, BiConsumer biConsumer, BiConsumer biConsumer2) {
        this.f9301b = supplier;
        this.f9302c = biConsumer;
        this.f9303d = biConsumer2;
    }

    @Override // j$.util.stream.V1
    public final void h(V1 v12) {
        this.f9303d.accept(this.f9369a, ((O1) v12).f9369a);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9369a = this.f9301b.get();
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        this.f9302c.accept(this.f9369a, obj);
    }
}

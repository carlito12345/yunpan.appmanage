package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.k2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0095k2 implements InterfaceC0115o2 {

    /* renamed from: a, reason: collision with root package name */
    protected final InterfaceC0125q2 f9485a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        o((Integer) obj);
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        AbstractC0167z0.E(this, num);
    }

    public AbstractC0095k2(InterfaceC0125q2 interfaceC0125q2) {
        this.f9485a = (InterfaceC0125q2) Objects.requireNonNull(interfaceC0125q2);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        this.f9485a.n(j10);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void m() {
        this.f9485a.m();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public boolean p() {
        return this.f9485a.p();
    }
}

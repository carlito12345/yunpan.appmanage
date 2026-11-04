package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.m2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0105m2 implements InterfaceC0125q2 {

    /* renamed from: a, reason: collision with root package name */
    protected final InterfaceC0125q2 f9501a;

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

    public AbstractC0105m2(InterfaceC0125q2 interfaceC0125q2) {
        this.f9501a = (InterfaceC0125q2) Objects.requireNonNull(interfaceC0125q2);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        this.f9501a.n(j10);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void m() {
        this.f9501a.m();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public boolean p() {
        return this.f9501a.p();
    }
}

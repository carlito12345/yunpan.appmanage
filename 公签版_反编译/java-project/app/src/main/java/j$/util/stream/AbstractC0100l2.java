package j$.util.stream;

import j$.util.Objects;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.l2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0100l2 implements InterfaceC0120p2 {

    /* renamed from: a, reason: collision with root package name */
    protected final InterfaceC0125q2 f9495a;

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
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
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

    public AbstractC0100l2(InterfaceC0125q2 interfaceC0125q2) {
        this.f9495a = (InterfaceC0125q2) Objects.requireNonNull(interfaceC0125q2);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void n(long j10) {
        this.f9495a.n(j10);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public void m() {
        this.f9495a.m();
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public boolean p() {
        return this.f9495a.p();
    }
}

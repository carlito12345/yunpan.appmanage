package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.v0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0147v0 implements InterfaceC0125q2 {

    /* renamed from: a, reason: collision with root package name */
    boolean f9566a;

    /* renamed from: b, reason: collision with root package name */
    boolean f9567b;

    @Override // j$.util.stream.InterfaceC0125q2
    public /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public /* synthetic */ void accept(long j10) {
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
    public final /* synthetic */ void n(long j10) {
    }

    AbstractC0147v0(EnumC0152w0 enumC0152w0) {
        this.f9567b = !enumC0152w0.f9577b;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return this.f9566a;
    }
}

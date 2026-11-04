package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* renamed from: j$.util.stream.b2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
abstract class AbstractC0050b2 extends W1 implements V1 {

    /* renamed from: b, reason: collision with root package name */
    long f9403b;

    public /* synthetic */ void accept(double d10) {
        AbstractC0167z0.B();
        throw null;
    }

    public /* synthetic */ void accept(int i10) {
        AbstractC0167z0.I();
        throw null;
    }

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
    public final /* synthetic */ boolean p() {
        return false;
    }

    AbstractC0050b2() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9403b = 0L;
    }
}

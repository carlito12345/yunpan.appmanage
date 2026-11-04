package j$.util.stream;

import j$.util.Spliterator;
import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
abstract class Q implements O3, P3 {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f9313a;

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
    public final /* synthetic */ void n(long j10) {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        return false;
    }

    protected Q(boolean z) {
        this.f9313a = z;
    }

    @Override // j$.util.stream.O3
    public final int l() {
        if (this.f9313a) {
            return 0;
        }
        return EnumC0071f3.r;
    }

    public final void b(AbstractC0167z0 abstractC0167z0, Spliterator spliterator) {
        if (this.f9313a) {
            new S(abstractC0167z0, spliterator, this).invoke();
        } else {
            new T(abstractC0167z0, spliterator, abstractC0167z0.I0(this)).invoke();
        }
    }
}

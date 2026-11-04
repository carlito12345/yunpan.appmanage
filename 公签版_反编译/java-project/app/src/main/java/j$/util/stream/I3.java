package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class I3 implements InterfaceC0125q2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9250a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f9251b;

    public /* synthetic */ I3(Consumer consumer, int i10) {
        this.f9250a = i10;
        this.f9251b = consumer;
    }

    private final /* synthetic */ void b(long j10) {
    }

    private final /* synthetic */ void c(long j10) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(double d10) {
        switch (this.f9250a) {
            case 0:
                AbstractC0167z0.B();
                throw null;
            default:
                AbstractC0167z0.B();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(int i10) {
        switch (this.f9250a) {
            case 0:
                AbstractC0167z0.I();
                throw null;
            default:
                AbstractC0167z0.I();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        switch (this.f9250a) {
            case 0:
                AbstractC0167z0.J();
                throw null;
            default:
                AbstractC0167z0.J();
                throw null;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        switch (this.f9250a) {
            case 0:
                ((C0046a3) this.f9251b).q(obj);
                break;
            default:
                this.f9251b.q(obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9250a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
        int i10 = this.f9250a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void n(long j10) {
        int i10 = this.f9250a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        switch (this.f9250a) {
        }
        return false;
    }
}

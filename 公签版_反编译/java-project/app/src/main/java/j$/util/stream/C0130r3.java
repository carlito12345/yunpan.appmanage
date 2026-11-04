package j$.util.stream;

import j$.util.function.Consumer$CC;
import j$.util.function.IntConsumer$CC;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.r3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0130r3 implements InterfaceC0115o2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9548a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ IntConsumer f9549b;

    public /* synthetic */ C0130r3(IntConsumer intConsumer, int i10) {
        this.f9548a = i10;
        this.f9549b = intConsumer;
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
        switch (this.f9548a) {
            case 0:
                AbstractC0167z0.B();
                throw null;
            default:
                AbstractC0167z0.B();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        switch (this.f9548a) {
            case 0:
                ((V2) this.f9549b).accept(i10);
                break;
            default:
                this.f9549b.accept(i10);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2, j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final /* synthetic */ void accept(long j10) {
        switch (this.f9548a) {
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
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        switch (this.f9548a) {
            case 0:
                o((Integer) obj);
                break;
            default:
                o((Integer) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9548a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f9548a) {
        }
        return IntConsumer$CC.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
        int i10 = this.f9548a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void n(long j10) {
        int i10 = this.f9548a;
    }

    @Override // j$.util.stream.InterfaceC0115o2
    public final /* synthetic */ void o(Integer num) {
        switch (this.f9548a) {
            case 0:
                AbstractC0167z0.E(this, num);
                break;
            default:
                AbstractC0167z0.E(this, num);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        switch (this.f9548a) {
        }
        return false;
    }
}

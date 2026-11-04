package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.t3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0140t3 implements InterfaceC0120p2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9559a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LongConsumer f9560b;

    public /* synthetic */ C0140t3(LongConsumer longConsumer, int i10) {
        this.f9559a = i10;
        this.f9560b = longConsumer;
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
        switch (this.f9559a) {
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
        switch (this.f9559a) {
            case 0:
                AbstractC0167z0.I();
                throw null;
            default:
                AbstractC0167z0.I();
                throw null;
        }
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        switch (this.f9559a) {
            case 0:
                ((X2) this.f9560b).accept(j10);
                break;
            default:
                this.f9560b.accept(j10);
                break;
        }
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void q(Object obj) {
        switch (this.f9559a) {
            case 0:
                k((Long) obj);
                break;
            default:
                k((Long) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9559a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f9559a) {
        }
        return j$.com.android.tools.r8.a.b(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0120p2
    public final /* synthetic */ void k(Long l) {
        switch (this.f9559a) {
            case 0:
                AbstractC0167z0.G(this, l);
                break;
            default:
                AbstractC0167z0.G(this, l);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
        int i10 = this.f9559a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void n(long j10) {
        int i10 = this.f9559a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        switch (this.f9559a) {
        }
        return false;
    }
}

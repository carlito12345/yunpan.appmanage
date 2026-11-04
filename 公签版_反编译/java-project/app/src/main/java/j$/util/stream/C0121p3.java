package j$.util.stream;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.stream.p3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0121p3 implements InterfaceC0110n2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9526a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DoubleConsumer f9527b;

    public /* synthetic */ C0121p3(DoubleConsumer doubleConsumer, int i10) {
        this.f9526a = i10;
        this.f9527b = doubleConsumer;
    }

    private final /* synthetic */ void b(long j10) {
    }

    private final /* synthetic */ void c(long j10) {
    }

    private final /* synthetic */ void d() {
    }

    private final /* synthetic */ void e() {
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        switch (this.f9526a) {
            case 0:
                ((T2) this.f9527b).accept(d10);
                break;
            default:
                this.f9527b.accept(d10);
                break;
        }
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void accept(int i10) {
        switch (this.f9526a) {
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
        switch (this.f9526a) {
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
        switch (this.f9526a) {
            case 0:
                q((Double) obj);
                break;
            default:
                q((Double) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f9526a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f9526a) {
        }
        return j$.com.android.tools.r8.a.a(this, doubleConsumer);
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void m() {
        int i10 = this.f9526a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ void n(long j10) {
        int i10 = this.f9526a;
    }

    @Override // j$.util.stream.InterfaceC0125q2
    public final /* synthetic */ boolean p() {
        switch (this.f9526a) {
        }
        return false;
    }

    @Override // j$.util.stream.InterfaceC0110n2
    public final /* synthetic */ void q(Double d10) {
        switch (this.f9526a) {
            case 0:
                AbstractC0167z0.C(this, d10);
                break;
            default:
                AbstractC0167z0.C(this, d10);
                break;
        }
    }
}

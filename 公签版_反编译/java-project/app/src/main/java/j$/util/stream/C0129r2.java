package j$.util.stream;

/* renamed from: j$.util.stream.r2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0129r2 extends AbstractC0105m2 {

    /* renamed from: b, reason: collision with root package name */
    long f9545b;

    /* renamed from: c, reason: collision with root package name */
    long f9546c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0134s2 f9547d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0129r2(C0134s2 c0134s2, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9547d = c0134s2;
        this.f9545b = c0134s2.f9552s;
        long j10 = c0134s2.f9553t;
        this.f9546c = j10 < 0 ? Long.MAX_VALUE : j10;
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9501a.n(AbstractC0167z0.Y(j10, this.f9547d.f9552s, this.f9546c));
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void q(Object obj) {
        long j10 = this.f9545b;
        if (j10 == 0) {
            long j11 = this.f9546c;
            if (j11 > 0) {
                this.f9546c = j11 - 1;
                this.f9501a.q((InterfaceC0125q2) obj);
                return;
            }
            return;
        }
        this.f9545b = j10 - 1;
    }

    @Override // j$.util.stream.AbstractC0105m2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return this.f9546c == 0 || this.f9501a.p();
    }
}

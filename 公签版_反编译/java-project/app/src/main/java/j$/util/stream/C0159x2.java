package j$.util.stream;

/* renamed from: j$.util.stream.x2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0159x2 extends AbstractC0090j2 {

    /* renamed from: b, reason: collision with root package name */
    long f9592b;

    /* renamed from: c, reason: collision with root package name */
    long f9593c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0164y2 f9594d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0159x2(C0164y2 c0164y2, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9594d = c0164y2;
        this.f9592b = c0164y2.f9596s;
        long j10 = c0164y2.f9597t;
        this.f9593c = j10 < 0 ? Long.MAX_VALUE : j10;
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9474a.n(AbstractC0167z0.Y(j10, this.f9594d.f9596s, this.f9593c));
    }

    @Override // j$.util.stream.InterfaceC0110n2, j$.util.stream.InterfaceC0125q2
    public final void accept(double d10) {
        long j10 = this.f9592b;
        if (j10 == 0) {
            long j11 = this.f9593c;
            if (j11 > 0) {
                this.f9593c = j11 - 1;
                this.f9474a.accept(d10);
                return;
            }
            return;
        }
        this.f9592b = j10 - 1;
    }

    @Override // j$.util.stream.AbstractC0090j2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return this.f9593c == 0 || this.f9474a.p();
    }
}

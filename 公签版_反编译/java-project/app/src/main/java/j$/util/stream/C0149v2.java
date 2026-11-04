package j$.util.stream;

/* renamed from: j$.util.stream.v2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0149v2 extends AbstractC0100l2 {

    /* renamed from: b, reason: collision with root package name */
    long f9569b;

    /* renamed from: c, reason: collision with root package name */
    long f9570c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0154w2 f9571d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0149v2(C0154w2 c0154w2, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9571d = c0154w2;
        this.f9569b = c0154w2.f9579s;
        long j10 = c0154w2.f9580t;
        this.f9570c = j10 < 0 ? Long.MAX_VALUE : j10;
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9495a.n(AbstractC0167z0.Y(j10, this.f9571d.f9579s, this.f9570c));
    }

    @Override // j$.util.stream.InterfaceC0120p2, java.util.function.LongConsumer
    public final void accept(long j10) {
        long j11 = this.f9569b;
        if (j11 == 0) {
            long j12 = this.f9570c;
            if (j12 > 0) {
                this.f9570c = j12 - 1;
                this.f9495a.accept(j10);
                return;
            }
            return;
        }
        this.f9569b = j11 - 1;
    }

    @Override // j$.util.stream.AbstractC0100l2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return this.f9570c == 0 || this.f9495a.p();
    }
}

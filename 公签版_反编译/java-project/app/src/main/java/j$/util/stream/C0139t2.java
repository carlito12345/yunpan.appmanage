package j$.util.stream;

/* renamed from: j$.util.stream.t2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0139t2 extends AbstractC0095k2 {

    /* renamed from: b, reason: collision with root package name */
    long f9556b;

    /* renamed from: c, reason: collision with root package name */
    long f9557c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ C0144u2 f9558d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0139t2(C0144u2 c0144u2, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9558d = c0144u2;
        this.f9556b = c0144u2.f9563s;
        long j10 = c0144u2.f9564t;
        this.f9557c = j10 < 0 ? Long.MAX_VALUE : j10;
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final void n(long j10) {
        this.f9485a.n(AbstractC0167z0.Y(j10, this.f9558d.f9563s, this.f9557c));
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        long j10 = this.f9556b;
        if (j10 == 0) {
            long j11 = this.f9557c;
            if (j11 > 0) {
                this.f9557c = j11 - 1;
                this.f9485a.accept(i10);
                return;
            }
            return;
        }
        this.f9556b = j10 - 1;
    }

    @Override // j$.util.stream.AbstractC0095k2, j$.util.stream.InterfaceC0125q2
    public final boolean p() {
        return this.f9557c == 0 || this.f9485a.p();
    }
}

package j$.util.stream;

/* renamed from: j$.util.stream.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0141u extends AbstractC0053c0 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9561s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0141u(AbstractC0047b abstractC0047b, int i10, int i11) {
        super(abstractC0047b, i10);
        this.f9561s = i11;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9561s) {
            case 0:
                return new r(this, interfaceC0125q2, 2);
            case 1:
                return interfaceC0125q2;
            case 2:
                return new V(this, interfaceC0125q2, 5);
            default:
                return new C0073g0(this, interfaceC0125q2, 2);
        }
    }
}

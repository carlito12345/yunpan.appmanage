package j$.util.stream;

/* renamed from: j$.util.stream.t, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
final class C0136t extends A {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ int f9554s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0136t(AbstractC0047b abstractC0047b, int i10, int i11) {
        super(abstractC0047b, i10);
        this.f9554s = i11;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0136t(AbstractC0058d0 abstractC0058d0) {
        super(abstractC0058d0, 0);
        this.f9554s = 3;
    }

    @Override // j$.util.stream.AbstractC0047b
    final InterfaceC0125q2 U0(int i10, InterfaceC0125q2 interfaceC0125q2) {
        switch (this.f9554s) {
            case 0:
                return new r(this, interfaceC0125q2, 1);
            case 1:
                return interfaceC0125q2;
            case 2:
                return new r(this, interfaceC0125q2, 4);
            case 3:
                return new X(1, interfaceC0125q2);
            case 4:
                return new V(this, interfaceC0125q2, 4);
            case 5:
                return new C0078h0(interfaceC0125q2);
            default:
                return new C0073g0(this, interfaceC0125q2, 3);
        }
    }
}

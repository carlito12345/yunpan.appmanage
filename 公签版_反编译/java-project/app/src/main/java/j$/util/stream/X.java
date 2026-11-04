package j$.util.stream;

/* loaded from: classes2.dex */
final class X extends AbstractC0095k2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9371b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ X(int i10, InterfaceC0125q2 interfaceC0125q2) {
        super(interfaceC0125q2);
        this.f9371b = i10;
    }

    @Override // j$.util.stream.InterfaceC0115o2, j$.util.stream.InterfaceC0125q2
    public final void accept(int i10) {
        switch (this.f9371b) {
            case 0:
                this.f9485a.accept(i10);
                break;
            default:
                this.f9485a.accept(i10);
                break;
        }
    }
}

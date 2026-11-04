package j$.util.stream;

/* loaded from: classes2.dex */
final class T3 extends AbstractC0105m2 implements i4 {

    /* renamed from: b, reason: collision with root package name */
    long f9353b;

    /* renamed from: c, reason: collision with root package name */
    boolean f9354c;

    /* renamed from: d, reason: collision with root package name */
    final /* synthetic */ boolean f9355d;

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ U3 f9356e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    T3(U3 u3, InterfaceC0125q2 interfaceC0125q2, boolean z) {
        super(interfaceC0125q2);
        this.f9356e = u3;
        this.f9355d = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    @Override // java.util.function.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void accept(Object obj) {
        boolean z;
        if (!this.f9354c) {
            boolean zTest = this.f9356e.f9362s.test(obj);
            this.f9354c = !zTest;
            z = !zTest;
        }
        boolean z4 = this.f9355d;
        if (z4 && !z) {
            this.f9353b++;
        }
        if (z4 || z) {
            this.f9501a.accept((InterfaceC0125q2) obj);
        }
    }

    @Override // j$.util.stream.i4
    public final long g() {
        return this.f9353b;
    }
}

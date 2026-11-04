package j$.util.stream;

/* loaded from: classes2.dex */
abstract class N0 implements L0 {

    /* renamed from: a, reason: collision with root package name */
    protected final L0 f9287a;

    /* renamed from: b, reason: collision with root package name */
    protected final L0 f9288b;

    /* renamed from: c, reason: collision with root package name */
    private final long f9289c;

    @Override // j$.util.stream.L0
    public final int r() {
        return 2;
    }

    N0(L0 l02, L0 l03) {
        this.f9287a = l02;
        this.f9288b = l03;
        this.f9289c = l02.count() + l03.count();
    }

    @Override // j$.util.stream.L0
    public final L0 b(int i10) {
        if (i10 == 0) {
            return this.f9287a;
        }
        if (i10 == 1) {
            return this.f9288b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.L0
    public final long count() {
        return this.f9289c;
    }

    @Override // j$.util.stream.L0
    public /* bridge */ /* synthetic */ K0 b(int i10) {
        return (K0) b(i10);
    }
}

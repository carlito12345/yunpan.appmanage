package ha;

/* loaded from: classes.dex */
public final class ab implements wd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6749a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6750b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cb f6751c;

    public /* synthetic */ ab(cb cbVar, int i10, int i11) {
        this.f6749a = i11;
        this.f6751c = cbVar;
        this.f6750b = i10;
    }

    @Override // ha.wd
    public final void D() {
        int i10 = this.f6749a;
    }

    @Override // ha.wd
    public final void t() {
        switch (this.f6749a) {
            case 0:
                this.f6751c.a(this.f6750b);
                break;
            case 1:
                this.f6751c.a(this.f6750b);
                break;
            default:
                this.f6751c.a(this.f6750b);
                break;
        }
    }

    private final void a() {
    }

    private final void b() {
    }

    private final void c() {
    }
}

package u1;

/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15222a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f15223b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f15224c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f15225d;

    public /* synthetic */ g0(Object obj, boolean z, boolean z4, int i10) {
        this.f15222a = i10;
        this.f15225d = obj;
        this.f15223b = z;
        this.f15224c = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15222a) {
            case 0:
                kf.d.j((kf.d) ((i0) this.f15225d).f15238f, this.f15223b, this.f15224c);
                break;
            default:
                ((kf.d) ((i0) this.f15225d).f15238f).Q(this.f15223b, this.f15224c);
                break;
        }
    }
}

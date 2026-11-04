package sb;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f14462a;

    /* renamed from: b, reason: collision with root package name */
    public int f14463b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f14464c;

    /* renamed from: d, reason: collision with root package name */
    public a f14465d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ bd.e f14466e;

    public a(bd.e eVar) {
        this.f14466e = eVar;
        this.f14462a = new int[eVar.f2785b + 5];
    }

    public final void a() {
        int iMax = 0;
        for (int i10 = 0; i10 < this.f14463b; i10++) {
            iMax = Math.max(iMax, this.f14462a[i10]);
        }
        this.f14464c = iMax;
    }
}

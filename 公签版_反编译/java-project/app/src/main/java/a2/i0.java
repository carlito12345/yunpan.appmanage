package a2;

/* loaded from: classes.dex */
public final /* synthetic */ class i0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f184a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f185b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f186c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f187d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f188e;

    public /* synthetic */ i0(Object obj, int i10, long j10, long j11, int i11) {
        this.f184a = i11;
        this.f188e = obj;
        this.f185b = i10;
        this.f186c = j10;
        this.f187d = j11;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f188e;
        switch (this.f184a) {
            case 0:
                j0 j0Var = (j0) obj;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1011, new z1.c(aVarM, this.f185b, this.f186c, this.f187d));
                break;
            default:
                z1.e eVar2 = ((i2.b) obj).f8429b;
                ba.i iVar = eVar2.f19343d;
                z1.a aVarJ = eVar2.J(((u7.g0) iVar.f2699b).isEmpty() ? null : (f2.c0) u7.q.i((u7.g0) iVar.f2699b));
                eVar2.N(aVarJ, 1006, new i3.k(aVarJ, this.f185b, this.f186c, this.f187d));
                break;
        }
    }
}

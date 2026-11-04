package a2;

/* loaded from: classes.dex */
public final /* synthetic */ class h0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f179a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f180b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f181c;

    public /* synthetic */ h0(int i10, long j10, Object obj) {
        this.f179a = i10;
        this.f181c = obj;
        this.f180b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j10 = this.f180b;
        Object obj = this.f181c;
        switch (this.f179a) {
            case 0:
                j0 j0Var = (j0) obj;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1010, new z1.c(aVarM, j10));
                break;
            default:
                vb.k kVar = (vb.k) obj;
                if (kVar.D < kVar.C && kVar.r == j10 && !kVar.f16091a.isShowing()) {
                    kVar.a(true);
                    break;
                }
                break;
        }
    }
}

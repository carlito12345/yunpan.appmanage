package f2;

/* loaded from: classes.dex */
public final /* synthetic */ class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5333a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u0 f5334b;

    public /* synthetic */ n0(u0 u0Var, int i10) {
        this.f5333a = i10;
        this.f5334b = u0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5333a) {
            case 0:
                this.f5334b.N = true;
                break;
            case 1:
                this.f5334b.x();
                break;
            default:
                u0 u0Var = this.f5334b;
                if (!u0Var.V) {
                    z zVar = u0Var.f5407s;
                    zVar.getClass();
                    zVar.b(u0Var);
                    break;
                }
                break;
        }
    }
}

package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class z8 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a9 f8161a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8162b;

    public /* synthetic */ z8(a9 a9Var, int i10) {
        this.f8161a = a9Var;
        this.f8162b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        a9 a9Var = this.f8161a;
        int i11 = this.f8162b;
        if (i10 == 0) {
            if (a9Var.f6743p.b() == 1) {
                a9Var.f6739j.requestFocus();
            }
            a9Var.f6743p.C(i11);
        } else {
            if (i10 != 1) {
                a9Var.getClass();
                return;
            }
            new i0(a9Var.f6724a, a9Var.f6725b, (z7.s) a9Var.f6743p.t(i11), new z8(a9Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f8161a.f6743p.D(this.f8162b, sVar);
    }
}

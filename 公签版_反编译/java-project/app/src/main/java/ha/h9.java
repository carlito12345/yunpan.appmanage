package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class h9 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i9 f7159a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7160b;

    public /* synthetic */ h9(i9 i9Var, int i10) {
        this.f7159a = i9Var;
        this.f7160b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        i9 i9Var = this.f7159a;
        int i11 = this.f7160b;
        if (i10 == 0) {
            if (i9Var.f7215w.b() == 1) {
                i9Var.f7209n.requestFocus();
            }
            i9Var.f7215w.C(i11);
        } else {
            if (i10 != 1) {
                i9Var.getClass();
                return;
            }
            new i0(i9Var.f6724a, i9Var.f6725b, (z7.s) i9Var.f7215w.t(i11), new h9(i9Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7159a.f7215w.D(this.f7160b, sVar);
    }
}

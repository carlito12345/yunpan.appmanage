package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class v7 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x7 f7918a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7919b;

    public /* synthetic */ v7(x7 x7Var, int i10) {
        this.f7918a = x7Var;
        this.f7919b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        x7 x7Var = this.f7918a;
        int i11 = this.f7919b;
        if (i10 == 0) {
            if (x7Var.f8050p.b() == 1) {
                x7Var.f8047k.requestFocus();
            }
            x7Var.f8050p.C(i11);
        } else {
            if (i10 != 1) {
                x7Var.getClass();
                return;
            }
            new i0(x7Var.f6724a, x7Var.f6725b, (z7.s) x7Var.f8050p.t(i11), new v7(x7Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7918a.f8050p.D(this.f7919b, sVar);
    }
}

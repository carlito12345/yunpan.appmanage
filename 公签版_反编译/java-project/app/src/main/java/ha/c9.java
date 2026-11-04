package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class c9 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e9 f6861a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6862b;

    public /* synthetic */ c9(e9 e9Var, int i10) {
        this.f6861a = e9Var;
        this.f6862b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        e9 e9Var = this.f6861a;
        int i11 = this.f6862b;
        if (i10 == 0) {
            if (e9Var.f6978w.b() == 1) {
                e9Var.f6972n.requestFocus();
            }
            e9Var.f6978w.C(i11);
        } else {
            if (i10 != 1) {
                e9Var.getClass();
                return;
            }
            new i0(e9Var.f6724a, e9Var.f6725b, (z7.s) e9Var.f6978w.t(i11), new c9(e9Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6861a.f6978w.D(this.f6862b, sVar);
    }
}

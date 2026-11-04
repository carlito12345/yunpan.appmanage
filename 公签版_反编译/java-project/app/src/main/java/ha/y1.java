package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class y1 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z1 f8074a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f8075b;

    public /* synthetic */ y1(z1 z1Var, int i10) {
        this.f8074a = z1Var;
        this.f8075b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        z1 z1Var = this.f8074a;
        int i11 = this.f8075b;
        if (i10 == 0) {
            if (z1Var.f8126m.b() == 1) {
                z1Var.f8125k.requestFocus();
            }
            z1Var.f8126m.C(i11);
        } else {
            if (i10 != 1) {
                z1Var.getClass();
                return;
            }
            new i0(z1Var.f6724a, z1Var.f6725b, (z7.s) z1Var.f8126m.t(i11), new y1(z1Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f8074a.f8126m.D(this.f8075b, sVar);
    }
}

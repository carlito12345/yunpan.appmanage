package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class b2 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c2 f6779a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6780b;

    public /* synthetic */ b2(c2 c2Var, int i10) {
        this.f6779a = c2Var;
        this.f6780b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        c2 c2Var = this.f6779a;
        int i11 = this.f6780b;
        if (i10 == 0) {
            if (c2Var.f6842k.b() == 1) {
                c2Var.f6839h.requestFocus();
            }
            c2Var.f6842k.C(i11);
        } else {
            if (i10 != 1) {
                c2Var.getClass();
                return;
            }
            new i0(c2Var.f6724a, c2Var.f6725b, (z7.s) c2Var.f6842k.t(i11), new b2(c2Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6779a.f6842k.D(this.f6780b, sVar);
    }
}

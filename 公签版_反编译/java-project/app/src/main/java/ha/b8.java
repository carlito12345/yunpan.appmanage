package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class b8 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d8 f6805a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6806b;

    public /* synthetic */ b8(d8 d8Var, int i10) {
        this.f6805a = d8Var;
        this.f6806b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        d8 d8Var = this.f6805a;
        int i11 = this.f6806b;
        if (i10 == 0) {
            if (d8Var.f6909x.b() == 1) {
                d8Var.f6903p.requestFocus();
            }
            d8Var.f6909x.C(i11);
        } else {
            if (i10 != 1) {
                d8Var.getClass();
                return;
            }
            new i0(d8Var.f6724a, d8Var.f6725b, (z7.s) d8Var.f6909x.t(i11), new b8(d8Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f6805a.f6909x.D(this.f6806b, sVar);
    }
}

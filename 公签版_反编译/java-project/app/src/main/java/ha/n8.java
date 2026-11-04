package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class n8 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7470a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t8 f7471b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7472c;

    public /* synthetic */ n8(t8 t8Var, int i10, int i11) {
        this.f7470a = i11;
        this.f7471b = t8Var;
        this.f7472c = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        switch (this.f7470a) {
            case 0:
                t8 t8Var = this.f7471b;
                int i11 = this.f7472c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        t8Var.getClass();
                        break;
                    } else {
                        new q9(t8Var.f6724a, t8Var.f6725b, ((z7.s) t8Var.E.t(i11)).q("json"), new n8(t8Var, i11, 3)).show();
                        break;
                    }
                } else {
                    if (t8Var.E.b() == 1) {
                        t8Var.f7818x.requestFocus();
                    }
                    t8Var.E.C(i11);
                    break;
                }
            default:
                t8 t8Var2 = this.f7471b;
                int i12 = this.f7472c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        t8Var2.getClass();
                        break;
                    } else {
                        new i0(t8Var2.f6724a, t8Var2.f6725b, (z7.s) t8Var2.E.t(i12), new n8(t8Var2, i12, 2)).show();
                        break;
                    }
                } else {
                    if (t8Var2.E.b() == 1) {
                        t8Var2.f7818x.requestFocus();
                    }
                    t8Var2.E.C(i12);
                    break;
                }
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f7470a) {
            case 2:
                this.f7471b.E.D(this.f7472c, sVar);
                break;
            default:
                ((z7.s) this.f7471b.E.t(this.f7472c)).j("json", sVar);
                break;
        }
    }
}

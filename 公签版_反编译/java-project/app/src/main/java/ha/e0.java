package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class e0 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6927a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f0 f6928b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6929c;

    public /* synthetic */ e0(f0 f0Var, int i10, int i11) {
        this.f6927a = i11;
        this.f6928b = f0Var;
        this.f6929c = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        switch (this.f6927a) {
            case 0:
                f0 f0Var = this.f6928b;
                int i11 = this.f6929c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        f0Var.getClass();
                        break;
                    } else {
                        new i0(f0Var.f6724a, f0Var.f6725b, (z7.s) f0Var.f7005q.t(i11), new e0(f0Var, i11, 2)).show();
                        break;
                    }
                } else {
                    if (f0Var.f7005q.b() == 1) {
                        f0Var.f7001k.requestFocus();
                    }
                    f0Var.f7005q.C(i11);
                    break;
                }
            default:
                f0 f0Var2 = this.f6928b;
                int i12 = this.f6929c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        f0Var2.getClass();
                        break;
                    } else {
                        new i0(f0Var2.f6724a, f0Var2.f6725b, (z7.s) f0Var2.r.t(i12), new e0(f0Var2, i12, 3)).show();
                        break;
                    }
                } else {
                    if (f0Var2.r.b() == 1) {
                        f0Var2.f7003n.requestFocus();
                    }
                    f0Var2.r.C(i12);
                    break;
                }
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f6927a) {
            case 2:
                this.f6928b.f7005q.D(this.f6929c, sVar);
                break;
            default:
                this.f6928b.r.D(this.f6929c, sVar);
                break;
        }
    }
}

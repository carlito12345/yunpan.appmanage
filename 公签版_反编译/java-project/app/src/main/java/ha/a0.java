package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6713a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b0 f6714b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6715c;

    public /* synthetic */ a0(b0 b0Var, int i10, int i11) {
        this.f6713a = i11;
        this.f6714b = b0Var;
        this.f6715c = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        switch (this.f6713a) {
            case 0:
                b0 b0Var = this.f6714b;
                int i11 = this.f6715c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        b0Var.getClass();
                        break;
                    } else {
                        new i0(b0Var.f6724a, b0Var.f6725b, (z7.s) b0Var.f6774p.t(i11), new a0(b0Var, i11, 3)).show();
                        break;
                    }
                } else {
                    if (b0Var.f6774p.b() == 1) {
                        b0Var.f6770j.requestFocus();
                    }
                    b0Var.f6774p.C(i11);
                    break;
                }
            default:
                b0 b0Var2 = this.f6714b;
                int i12 = this.f6715c;
                if (i10 != 0) {
                    if (i10 != 1) {
                        b0Var2.getClass();
                        break;
                    } else {
                        new i0(b0Var2.f6724a, b0Var2.f6725b, (z7.s) b0Var2.f6775q.t(i12), new a0(b0Var2, i12, 2)).show();
                        break;
                    }
                } else {
                    if (b0Var2.f6775q.b() == 1) {
                        b0Var2.l.requestFocus();
                    }
                    b0Var2.f6775q.C(i12);
                    break;
                }
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        switch (this.f6713a) {
            case 2:
                this.f6714b.f6775q.D(this.f6715c, sVar);
                break;
            default:
                this.f6714b.f6774p.D(this.f6715c, sVar);
                break;
        }
    }
}

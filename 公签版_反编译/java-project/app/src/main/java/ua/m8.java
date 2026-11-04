package ua;

/* loaded from: classes.dex */
public final class m8 extends ha.l2 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15838b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ q8 f15839c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m8(q8 q8Var, int i10) {
        super(28);
        this.f15838b = i10;
        this.f15839c = q8Var;
    }

    @Override // ha.l2, ec.e
    public final void B(Throwable th2) {
        switch (this.f15838b) {
            case 0:
                q8 q8Var = this.f15839c;
                q8.n(q8Var);
                new ha.r5(q8Var.f4530f, q8Var.f4529e, ((qa.b) th2).f13176a).show();
                break;
            default:
                q8 q8Var2 = this.f15839c;
                q8Var2.f15908g.a();
                new ha.r5(q8Var2.f4530f, q8Var2.f4529e, ((qa.b) th2).f13176a).show();
                q8Var2.f15912k.requestFocus();
                q8Var2.v((x9.w3) g.b.d(q8Var2.l, 1), true);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void E(Object obj) {
        switch (this.f15838b) {
            case 0:
                this.f15839c.f15908g.b((String) obj);
                break;
            default:
                this.f15839c.f15908g.b((String) obj);
                break;
        }
    }

    @Override // ha.l2, ec.e
    public final void onComplete() {
        switch (this.f15838b) {
            case 0:
                q8.n(this.f15839c);
                break;
            default:
                q8 q8Var = this.f15839c;
                q8Var.f15908g.a();
                if (q8Var.I.getVisibility() == 0) {
                    q8Var.I.setVisibility(8);
                    q8Var.K.setVisibility(8);
                }
                q8Var.f15912k.requestFocus();
                q8Var.v((x9.w3) g.b.d(q8Var.l, 1), true);
                break;
        }
    }
}

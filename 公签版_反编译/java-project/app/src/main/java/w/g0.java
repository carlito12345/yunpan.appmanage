package w;

/* loaded from: classes.dex */
public final class g0 extends x1 {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ n0 f17066j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ q0 f17067k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(q0 q0Var, q0 q0Var2, n0 n0Var) {
        super(q0Var2);
        this.f17067k = q0Var;
        this.f17066j = n0Var;
    }

    @Override // w.x1
    public final v.b0 b() {
        return this.f17066j;
    }

    @Override // w.x1
    public final boolean c() {
        q0 q0Var = this.f17067k;
        if (q0Var.getInternalPopup().b()) {
            return true;
        }
        q0Var.f17211f.l(i0.b(q0Var), i0.a(q0Var));
        return true;
    }
}

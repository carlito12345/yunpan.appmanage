package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class l0 implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f7341a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7342b;

    public /* synthetic */ l0(m0 m0Var, int i10) {
        this.f7341a = m0Var;
        this.f7342b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        m0 m0Var = this.f7341a;
        int i11 = this.f7342b;
        if (i10 == 0) {
            if (m0Var.l.b() == 1) {
                m0Var.f7381i.requestFocus();
            }
            m0Var.l.C(i11);
        } else {
            if (i10 != 1) {
                m0Var.getClass();
                return;
            }
            new i0(m0Var.f6724a, m0Var.f6725b, (z7.s) m0Var.l.t(i11), new l0(m0Var, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7341a.l.D(this.f7342b, sVar);
    }
}

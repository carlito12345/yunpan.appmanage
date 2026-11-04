package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class r implements ea, ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f7649a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7650b;

    public /* synthetic */ r(s sVar, int i10) {
        this.f7649a = sVar;
        this.f7650b = i10;
    }

    @Override // ha.ea
    public void b(int i10) {
        s sVar = this.f7649a;
        int i11 = this.f7650b;
        if (i10 == 0) {
            if (sVar.f7717n.b() == 1) {
                sVar.f7715k.requestFocus();
            }
            sVar.f7717n.C(i11);
        } else {
            if (i10 != 1) {
                sVar.getClass();
                return;
            }
            new i0(sVar.f6724a, sVar.f6725b, (z7.s) sVar.f7717n.t(i11), new r(sVar, i11)).show();
        }
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        this.f7649a.f7717n.D(this.f7650b, sVar);
    }
}

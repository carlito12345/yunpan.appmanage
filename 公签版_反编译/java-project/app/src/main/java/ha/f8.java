package ha;

/* loaded from: classes.dex */
public final /* synthetic */ class f8 implements ea.e {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7031a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ea.e f7032b;

    public /* synthetic */ f8(int i10, ea.e eVar) {
        this.f7031a = i10;
        this.f7032b = eVar;
    }

    @Override // ea.e
    public void k(z7.s sVar) {
        sVar.l("keyType", Integer.valueOf(this.f7031a));
        this.f7032b.k(sVar);
    }
}

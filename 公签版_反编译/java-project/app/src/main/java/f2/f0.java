package f2;

/* loaded from: classes.dex */
public final /* synthetic */ class f0 implements u1.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5257a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ b2.d f5258b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ t f5259c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ y f5260d;

    public /* synthetic */ f0(b2.d dVar, t tVar, y yVar, int i10) {
        this.f5257a = i10;
        this.f5258b = dVar;
        this.f5259c = tVar;
        this.f5260d = yVar;
    }

    @Override // u1.f
    public final void accept(Object obj) {
        i0 i0Var = (i0) obj;
        switch (this.f5257a) {
            case 0:
                b2.d dVar = this.f5258b;
                i0Var.s(dVar.f2528a, dVar.f2529b, this.f5259c, this.f5260d);
                break;
            default:
                b2.d dVar2 = this.f5258b;
                i0Var.w(dVar2.f2528a, dVar2.f2529b, this.f5259c, this.f5260d);
                break;
        }
    }
}

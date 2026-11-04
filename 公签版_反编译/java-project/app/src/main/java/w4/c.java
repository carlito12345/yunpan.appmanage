package w4;

/* loaded from: classes.dex */
public abstract class c extends f {

    /* renamed from: e, reason: collision with root package name */
    public final x4.a f17449e;

    public c(n nVar, p pVar, k kVar, l lVar, x4.a aVar) {
        super(nVar, pVar, kVar, lVar);
        if (aVar == null) {
            throw new NullPointerException("cst == null");
        }
        this.f17449e = aVar;
    }

    @Override // w4.f
    public String d() {
        return this.f17449e.a();
    }
}

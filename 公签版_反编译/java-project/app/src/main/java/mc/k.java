package mc;

/* loaded from: classes.dex */
public final class k extends ec.b implements kc.b {

    /* renamed from: a, reason: collision with root package name */
    public final Object f11174a;

    public k(Object obj) {
        this.f11174a = obj;
    }

    @Override // ec.b
    public final void c(ec.e eVar) {
        m mVar = new m(eVar, this.f11174a);
        eVar.b(mVar);
        mVar.run();
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f11174a;
    }
}

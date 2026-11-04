package mc;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class p extends a {

    /* renamed from: b, reason: collision with root package name */
    public final ec.j f11191b;

    public p(ec.b bVar, ec.j jVar) {
        super(bVar);
        this.f11191b = jVar;
    }

    @Override // ec.b
    public final void c(ec.e eVar) {
        o oVar = new o(eVar);
        eVar.b(oVar);
        y7.b bVar = new y7.b(18, this, oVar, false);
        ec.j jVar = this.f11191b;
        jVar.getClass();
        ic.a.d(oVar, jVar.b(bVar, TimeUnit.NANOSECONDS));
    }
}

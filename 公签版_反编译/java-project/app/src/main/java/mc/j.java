package mc;

import java.util.concurrent.TimeUnit;
import oc.v;
import oc.w;

/* loaded from: classes.dex */
public final class j extends ec.b {

    /* renamed from: a, reason: collision with root package name */
    public final ec.j f11170a;

    /* renamed from: b, reason: collision with root package name */
    public final long f11171b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11172c;

    /* renamed from: d, reason: collision with root package name */
    public final TimeUnit f11173d;

    public j(long j10, long j11, TimeUnit timeUnit, ec.j jVar) {
        this.f11171b = j10;
        this.f11172c = j11;
        this.f11173d = timeUnit;
        this.f11170a = jVar;
    }

    @Override // ec.b
    public final void c(ec.e eVar) {
        i iVar = new i(eVar);
        eVar.b(iVar);
        ec.j jVar = this.f11170a;
        boolean z = jVar instanceof w;
        TimeUnit timeUnit = this.f11173d;
        if (!z) {
            ic.a.d(iVar, jVar.c(iVar, this.f11171b, this.f11172c, timeUnit));
            return;
        }
        ((w) jVar).getClass();
        v vVar = new v();
        ic.a.d(iVar, vVar);
        vVar.f(iVar, this.f11171b, this.f11172c, timeUnit);
    }
}

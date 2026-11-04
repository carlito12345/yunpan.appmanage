package uh;

/* loaded from: classes3.dex */
public final class n extends vh.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ sh.e f16150a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ sh.d f16151b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ th.d f16152c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ sh.o f16153d;

    public n(sh.e eVar, sh.d dVar, th.d dVar2, sh.o oVar) {
        this.f16150a = eVar;
        this.f16151b = dVar;
        this.f16152c = dVar2;
        this.f16153d = oVar;
    }

    @Override // wh.k
    public final long b(wh.m mVar) {
        sh.e eVar = this.f16150a;
        return (eVar == null || !mVar.b()) ? this.f16151b.b(mVar) : eVar.b(mVar);
    }

    @Override // vh.b, wh.k
    public final Object c(wh.o oVar) {
        return oVar == wh.n.f17927b ? this.f16152c : oVar == wh.n.f17926a ? this.f16153d : oVar == wh.n.f17928c ? this.f16151b.c(oVar) : oVar.b(this);
    }

    @Override // wh.k
    public final boolean d(wh.m mVar) {
        sh.e eVar = this.f16150a;
        return (eVar == null || !mVar.b()) ? this.f16151b.d(mVar) : eVar.d(mVar);
    }

    @Override // vh.b, wh.k
    public final wh.r f(wh.m mVar) {
        sh.e eVar = this.f16150a;
        return (eVar == null || !mVar.b()) ? this.f16151b.f(mVar) : eVar.f(mVar);
    }
}

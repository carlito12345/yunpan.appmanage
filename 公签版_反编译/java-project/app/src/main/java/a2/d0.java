package a2;

import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class d0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f113a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f114b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y1.c f115c;

    public /* synthetic */ d0(j0 j0Var, y1.c cVar, int i10) {
        this.f113a = i10;
        this.f114b = j0Var;
        this.f115c = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f113a) {
            case 0:
                j0 j0Var = this.f114b;
                y1.c cVar = this.f115c;
                j0Var.getClass();
                synchronized (cVar) {
                }
                y1.t tVar = j0Var.f196c;
                String str = u1.f0.f15206a;
                z1.e eVar = tVar.f18808a.f18866t;
                z1.a aVarJ = eVar.J((f2.c0) eVar.f19343d.f2702e);
                eVar.N(aVarJ, 1013, new t6(aVarJ, cVar, 19));
                break;
            default:
                j0 j0Var2 = this.f114b;
                j0Var2.getClass();
                String str2 = u1.f0.f15206a;
                y1.x xVar = j0Var2.f196c.f18808a;
                xVar.getClass();
                z1.e eVar2 = xVar.f18866t;
                z1.a aVarM = eVar2.M();
                eVar2.N(aVarM, 1007, new z1.c(aVarM, this.f115c, 22));
                break;
        }
    }
}

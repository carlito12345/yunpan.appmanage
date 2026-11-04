package androidx.media3.exoplayer.video;

import ua.g5;
import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1900a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a2.j0 f1901b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ y1.c f1902c;

    public /* synthetic */ g0(a2.j0 j0Var, y1.c cVar, int i10) {
        this.f1900a = i10;
        this.f1901b = j0Var;
        this.f1902c = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1900a) {
            case 0:
                a2.j0 j0Var = this.f1901b;
                j0Var.getClass();
                String str = u1.f0.f15206a;
                y1.x xVar = j0Var.f196c.f18808a;
                xVar.getClass();
                z1.e eVar = xVar.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1015, new t6(aVarM, this.f1902c, 22));
                break;
            default:
                a2.j0 j0Var2 = this.f1901b;
                y1.c cVar = this.f1902c;
                j0Var2.getClass();
                synchronized (cVar) {
                }
                y1.t tVar = j0Var2.f196c;
                String str2 = u1.f0.f15206a;
                z1.e eVar2 = tVar.f18808a.f18866t;
                z1.a aVarJ = eVar2.J((f2.c0) eVar2.f19343d.f2702e);
                eVar2.N(aVarJ, 1020, new g5(aVarJ, (Object) cVar, 27));
                break;
        }
    }
}

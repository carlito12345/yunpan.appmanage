package a2;

import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class a0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f77a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f78b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Exception f79c;

    public /* synthetic */ a0(j0 j0Var, Exception exc, int i10) {
        this.f77a = i10;
        this.f78b = j0Var;
        this.f79c = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Exception exc = this.f79c;
        j0 j0Var = this.f78b;
        int i10 = this.f77a;
        j0Var.getClass();
        switch (i10) {
            case 0:
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1029, new t6(aVarM, exc, 23));
                break;
            default:
                String str2 = u1.f0.f15206a;
                z1.e eVar2 = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM2 = eVar2.M();
                eVar2.N(aVarM2, 1014, new t6(aVarM2, exc, 28));
                break;
        }
    }
}

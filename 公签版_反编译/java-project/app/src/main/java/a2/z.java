package a2;

import ua.t6;

/* loaded from: classes.dex */
public final /* synthetic */ class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f364a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f365b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k0 f366c;

    public /* synthetic */ z(j0 j0Var, k0 k0Var, int i10) {
        this.f364a = i10;
        this.f365b = j0Var;
        this.f366c = k0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k0 k0Var = this.f366c;
        j0 j0Var = this.f365b;
        int i10 = this.f364a;
        j0Var.getClass();
        switch (i10) {
            case 0:
                String str = u1.f0.f15206a;
                z1.e eVar = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM = eVar.M();
                eVar.N(aVarM, 1031, new t6(aVarM, k0Var, 26));
                break;
            default:
                String str2 = u1.f0.f15206a;
                z1.e eVar2 = j0Var.f196c.f18808a.f18866t;
                z1.a aVarM2 = eVar2.M();
                eVar2.N(aVarM2, 1032, new z1.c(aVarM2, k0Var, 3));
                break;
        }
    }
}

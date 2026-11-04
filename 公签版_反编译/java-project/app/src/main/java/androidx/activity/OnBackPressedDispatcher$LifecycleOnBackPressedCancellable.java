package androidx.activity;

import androidx.fragment.app.u0;

/* loaded from: classes.dex */
final class OnBackPressedDispatcher$LifecycleOnBackPressedCancellable implements androidx.lifecycle.r, c {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.o f780a;

    /* renamed from: b, reason: collision with root package name */
    public final u0 f781b;

    /* renamed from: c, reason: collision with root package name */
    public u f782c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ w f783d;

    public OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(w wVar, androidx.lifecycle.o oVar, u0 u0Var) {
        ue.d.e(u0Var, "onBackPressedCallback");
        this.f783d = wVar;
        this.f780a = oVar;
        this.f781b = u0Var;
        oVar.a(this);
    }

    @Override // androidx.lifecycle.r
    public final void a(androidx.lifecycle.t tVar, androidx.lifecycle.m mVar) {
        if (mVar != androidx.lifecycle.m.ON_START) {
            if (mVar != androidx.lifecycle.m.ON_STOP) {
                if (mVar == androidx.lifecycle.m.ON_DESTROY) {
                    cancel();
                    return;
                }
                return;
            } else {
                u uVar = this.f782c;
                if (uVar != null) {
                    uVar.cancel();
                    return;
                }
                return;
            }
        }
        w wVar = this.f783d;
        wVar.getClass();
        u0 u0Var = this.f781b;
        ue.d.e(u0Var, "onBackPressedCallback");
        wVar.f869b.addLast(u0Var);
        u uVar2 = new u(wVar, u0Var);
        u0Var.f1401b.add(uVar2);
        wVar.d();
        u0Var.f1402c = new v((Object) wVar);
        this.f782c = uVar2;
    }

    @Override // androidx.activity.c
    public final void cancel() {
        this.f780a.b(this);
        this.f781b.f1401b.remove(this);
        u uVar = this.f782c;
        if (uVar != null) {
            uVar.cancel();
        }
        this.f782c = null;
    }
}

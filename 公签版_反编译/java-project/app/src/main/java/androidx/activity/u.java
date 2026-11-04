package androidx.activity;

import androidx.fragment.app.u0;

/* loaded from: classes.dex */
public final class u implements c {

    /* renamed from: a, reason: collision with root package name */
    public final u0 f859a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f860b;

    public u(w wVar, u0 u0Var) {
        ue.d.e(u0Var, "onBackPressedCallback");
        this.f860b = wVar;
        this.f859a = u0Var;
    }

    @Override // androidx.activity.c
    public final void cancel() {
        w wVar = this.f860b;
        je.h hVar = wVar.f869b;
        u0 u0Var = this.f859a;
        hVar.remove(u0Var);
        if (ue.d.a(wVar.f870c, u0Var)) {
            u0Var.getClass();
            wVar.f870c = null;
        }
        u0Var.f1401b.remove(this);
        v vVar = u0Var.f1402c;
        if (vVar != null) {
            vVar.b();
        }
        u0Var.f1402c = null;
    }
}

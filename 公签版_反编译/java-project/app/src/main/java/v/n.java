package v;

import android.view.ActionProvider;
import android.view.View;
import ua.i1;

/* loaded from: classes.dex */
public final class n implements ActionProvider.VisibilityListener {

    /* renamed from: a, reason: collision with root package name */
    public final ActionProvider f16278a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f16279b;

    /* renamed from: c, reason: collision with root package name */
    public i1 f16280c;

    public n(r rVar, ActionProvider actionProvider) {
        this.f16279b = rVar;
        this.f16278a = actionProvider;
    }

    public final View a(m mVar) {
        return this.f16278a.onCreateActionView(mVar);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        i1 i1Var = this.f16280c;
        if (i1Var != null) {
            k kVar = ((m) i1Var.f15727b).f16269n;
            kVar.f16240h = true;
            kVar.p(true);
        }
    }
}

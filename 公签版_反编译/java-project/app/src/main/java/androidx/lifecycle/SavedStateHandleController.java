package androidx.lifecycle;

import com.alibaba.sdk.android.oss.common.RequestParameters;

/* loaded from: classes.dex */
public final class SavedStateHandleController implements r {

    /* renamed from: a, reason: collision with root package name */
    public final String f1752a;

    /* renamed from: b, reason: collision with root package name */
    public final j0 f1753b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1754c;

    public SavedStateHandleController(String str, j0 j0Var) {
        this.f1752a = str;
        this.f1753b = j0Var;
    }

    @Override // androidx.lifecycle.r
    public final void a(t tVar, m mVar) {
        if (mVar == m.ON_DESTROY) {
            this.f1754c = false;
            tVar.getLifecycle().b(this);
        }
    }

    public final void c(o oVar, b4.e eVar) {
        ue.d.e(eVar, "registry");
        ue.d.e(oVar, RequestParameters.SUBRESOURCE_LIFECYCLE);
        if (this.f1754c) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f1754c = true;
        oVar.a(this);
        eVar.c(this.f1752a, this.f1753b.f1779e);
    }
}

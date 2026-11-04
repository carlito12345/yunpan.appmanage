package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* loaded from: classes.dex */
public final class r extends m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f1372a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f1373b;

    public r(s sVar, m0 m0Var) {
        this.f1373b = sVar;
        this.f1372a = m0Var;
    }

    @Override // androidx.fragment.app.m0
    public final View n(int i10) {
        m0 m0Var = this.f1372a;
        if (m0Var.o()) {
            return m0Var.n(i10);
        }
        Dialog dialog = this.f1373b.f1390j;
        if (dialog != null) {
            return dialog.findViewById(i10);
        }
        return null;
    }

    @Override // androidx.fragment.app.m0
    public final boolean o() {
        return this.f1372a.o() || this.f1373b.f1392m;
    }
}

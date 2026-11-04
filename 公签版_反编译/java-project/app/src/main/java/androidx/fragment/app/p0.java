package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class p0 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ k1 f1364a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ q0 f1365b;

    public p0(q0 q0Var, k1 k1Var) {
        this.f1365b = q0Var;
        this.f1364a = k1Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        k1 k1Var = this.f1364a;
        k1Var.i();
        n.h((ViewGroup) k1Var.f1320c.mView.getParent(), this.f1365b.f1369a).g();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}

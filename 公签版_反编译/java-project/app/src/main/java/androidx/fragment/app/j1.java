package androidx.fragment.app;

import android.view.View;

/* loaded from: classes.dex */
public final class j1 implements View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f1312a;

    public j1(View view) {
        this.f1312a = view;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        View view2 = this.f1312a;
        view2.removeOnAttachStateChangeListener(this);
        x0.b1.v(view2);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}

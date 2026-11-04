package x0;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class a0 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f17944a;

    /* renamed from: b, reason: collision with root package name */
    public ViewTreeObserver f17945b;

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f17946c;

    public a0(View view, Runnable runnable) {
        this.f17944a = view;
        this.f17945b = view.getViewTreeObserver();
        this.f17946c = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        a0 a0Var = new a0(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(a0Var);
        view.addOnAttachStateChangeListener(a0Var);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.f17945b.isAlive();
        View view = this.f17944a;
        if (zIsAlive) {
            this.f17945b.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f17946c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f17945b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.f17945b.isAlive();
        View view2 = this.f17944a;
        if (zIsAlive) {
            this.f17945b.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}

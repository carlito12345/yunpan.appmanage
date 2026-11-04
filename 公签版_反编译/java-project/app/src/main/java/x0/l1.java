package x0;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class l1 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f18009a;

    public l1(View view) {
        this.f18009a = new WeakReference(view);
    }

    public final void a(float f10) {
        View view = (View) this.f18009a.get();
        if (view != null) {
            view.animate().alpha(f10);
        }
    }

    public final void b() {
        View view = (View) this.f18009a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j10) {
        View view = (View) this.f18009a.get();
        if (view != null) {
            view.animate().setDuration(j10);
        }
    }

    public final void d(m1 m1Var) {
        View view = (View) this.f18009a.get();
        if (view != null) {
            if (m1Var != null) {
                view.animate().setListener(new h4.p(m1Var, view, 1));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(final l5.y yVar) {
        final View view = (View) this.f18009a.get();
        if (view == null || Build.VERSION.SDK_INT < 19) {
            return;
        }
        k1.a(view.animate(), yVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: x0.j1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ((View) ((q.m0) yVar.f10629b).f12867e.getParent()).invalidate();
            }
        } : null);
    }

    public final void f(float f10) {
        View view = (View) this.f18009a.get();
        if (view != null) {
            view.animate().translationY(f10);
        }
    }
}

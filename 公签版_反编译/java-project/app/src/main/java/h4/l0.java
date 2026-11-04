package h4;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class l0 extends AnimatorListenerAdapter implements s, a {

    /* renamed from: a, reason: collision with root package name */
    public final View f6451a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6452b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f6453c;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6455e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6456f = false;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6454d = true;

    public l0(int i10, View view) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        this.f6451a = view;
        this.f6452b = i10;
        this.f6453c = (ViewGroup) view.getParent();
        f(true);
    }

    @Override // h4.s
    public final void a() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        f(false);
    }

    @Override // h4.s
    public final void c(t tVar) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!this.f6456f) {
            d0.f6422a.I(this.f6452b, this.f6451a);
            ViewGroup viewGroup = this.f6453c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
        tVar.v(this);
    }

    @Override // h4.s
    public final void e() throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        f(true);
    }

    public final void f(boolean z) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        if (!this.f6454d || this.f6455e == z || (viewGroup = this.f6453c) == null) {
            return;
        }
        this.f6455e = z;
        android.support.v4.media.session.b.I(viewGroup, z);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f6456f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (!this.f6456f) {
            d0.f6422a.I(this.f6452b, this.f6451a);
            ViewGroup viewGroup = this.f6453c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        f(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        if (this.f6456f) {
            return;
        }
        d0.f6422a.I(this.f6452b, this.f6451a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        if (this.f6456f) {
            return;
        }
        d0.f6422a.I(0, this.f6451a);
    }

    @Override // h4.s
    public final void b() {
    }

    @Override // h4.s
    public final void d(t tVar) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}

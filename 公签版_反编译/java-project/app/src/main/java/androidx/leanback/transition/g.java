package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.transition.Transition;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final View f1473a;

    /* renamed from: b, reason: collision with root package name */
    public final View f1474b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1475c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1476d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f1477e;

    /* renamed from: f, reason: collision with root package name */
    public float f1478f;

    /* renamed from: g, reason: collision with root package name */
    public float f1479g;

    /* renamed from: h, reason: collision with root package name */
    public final float f1480h;

    /* renamed from: i, reason: collision with root package name */
    public final float f1481i;

    public g(View view, View view2, int i10, int i11, float f10, float f11) {
        this.f1474b = view;
        this.f1473a = view2;
        this.f1475c = i10 - Math.round(view.getTranslationX());
        this.f1476d = i11 - Math.round(view.getTranslationY());
        this.f1480h = f10;
        this.f1481i = f11;
        int[] iArr = (int[]) view2.getTag(R.id.transitionPosition);
        this.f1477e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.transitionPosition, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f1477e == null) {
            this.f1477e = new int[2];
        }
        this.f1477e[0] = Math.round(this.f1474b.getTranslationX() + this.f1475c);
        this.f1477e[1] = Math.round(this.f1474b.getTranslationY() + this.f1476d);
        this.f1473a.setTag(R.id.transitionPosition, this.f1477e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        this.f1478f = this.f1474b.getTranslationX();
        this.f1479g = this.f1474b.getTranslationY();
        this.f1474b.setTranslationX(this.f1480h);
        this.f1474b.setTranslationY(this.f1481i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        this.f1474b.setTranslationX(this.f1478f);
        this.f1474b.setTranslationY(this.f1479g);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        this.f1474b.setTranslationX(this.f1480h);
        this.f1474b.setTranslationY(this.f1481i);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}

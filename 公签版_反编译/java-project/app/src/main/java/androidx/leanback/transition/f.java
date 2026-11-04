package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public final class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1466a = false;

    /* renamed from: b, reason: collision with root package name */
    public float f1467b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1468c;

    /* renamed from: d, reason: collision with root package name */
    public final float f1469d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1470e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1471f;

    /* renamed from: g, reason: collision with root package name */
    public final Property f1472g;

    public f(View view, Property property, float f10, float f11, int i10) {
        this.f1472g = property;
        this.f1468c = view;
        this.f1470e = f10;
        this.f1469d = f11;
        this.f1471f = i10;
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        View view = this.f1468c;
        view.setTag(R.id.lb_slide_transition_value, new float[]{view.getTranslationX(), view.getTranslationY()});
        this.f1472g.set(view, Float.valueOf(this.f1470e));
        this.f1466a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z = this.f1466a;
        View view = this.f1468c;
        if (!z) {
            this.f1472g.set(view, Float.valueOf(this.f1470e));
        }
        view.setVisibility(this.f1471f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        Property property = this.f1472g;
        View view = this.f1468c;
        this.f1467b = ((Float) property.get(view)).floatValue();
        property.set(view, Float.valueOf(this.f1469d));
        view.setVisibility(this.f1471f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        Float fValueOf = Float.valueOf(this.f1467b);
        Property property = this.f1472g;
        View view = this.f1468c;
        property.set(view, fValueOf);
        view.setVisibility(0);
    }
}

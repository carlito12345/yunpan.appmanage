package androidx.recyclerview.widget;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class c0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f2051a;

    public c0(d0 d0Var) {
        this.f2051a = d0Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        d0 d0Var = this.f2051a;
        d0Var.f2063c.setAlpha(iFloatValue);
        d0Var.f2064d.setAlpha(iFloatValue);
        d0Var.f2077s.invalidate();
    }
}

package v3;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class w extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16594a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f16595b;

    public /* synthetic */ w(y yVar, int i10) {
        this.f16594a = i10;
        this.f16595b = yVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f16594a) {
            case 0:
                y yVar = this.f16595b;
                View view = yVar.f16600b;
                if (view != null) {
                    view.setVisibility(4);
                }
                ViewGroup viewGroup = yVar.f16601c;
                if (viewGroup != null) {
                    viewGroup.setVisibility(4);
                }
                ViewGroup viewGroup2 = yVar.f16602d;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
                ViewGroup viewGroup3 = yVar.f16604f;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(4);
                    break;
                }
                break;
            case 1:
            default:
                super.onAnimationEnd(animator);
                break;
            case 2:
                this.f16595b.i(0);
                break;
            case 3:
                this.f16595b.i(0);
                break;
            case 4:
                ViewGroup viewGroup4 = this.f16595b.f16605g;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(4);
                    break;
                }
                break;
            case 5:
                ViewGroup viewGroup5 = this.f16595b.f16607i;
                if (viewGroup5 != null) {
                    viewGroup5.setVisibility(4);
                    break;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        y yVar = this.f16595b;
        switch (this.f16594a) {
            case 0:
                View view = yVar.f16609k;
                if ((view instanceof e) && !yVar.B) {
                    e eVar = (e) view;
                    ValueAnimator valueAnimator = eVar.G;
                    if (valueAnimator.isStarted()) {
                        valueAnimator.cancel();
                    }
                    valueAnimator.setFloatValues(eVar.H, 0.0f);
                    valueAnimator.setDuration(250L);
                    valueAnimator.start();
                    break;
                }
                break;
            case 1:
                View view2 = yVar.f16600b;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                ViewGroup viewGroup = yVar.f16601c;
                if (viewGroup != null) {
                    viewGroup.setVisibility(0);
                }
                ViewGroup viewGroup2 = yVar.f16602d;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(0);
                }
                ViewGroup viewGroup3 = yVar.f16604f;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(yVar.B ? 0 : 4);
                }
                View view3 = yVar.f16609k;
                if ((view3 instanceof e) && !yVar.B) {
                    e eVar2 = (e) view3;
                    ValueAnimator valueAnimator2 = eVar2.G;
                    if (valueAnimator2.isStarted()) {
                        valueAnimator2.cancel();
                    }
                    eVar2.I = false;
                    valueAnimator2.setFloatValues(eVar2.H, 1.0f);
                    valueAnimator2.setDuration(250L);
                    valueAnimator2.start();
                    break;
                }
                break;
            case 2:
                yVar.i(4);
                break;
            case 3:
                yVar.i(4);
                break;
            case 4:
                ViewGroup viewGroup4 = yVar.f16607i;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(0);
                    yVar.f16607i.setTranslationX(r9.getWidth());
                    ViewGroup viewGroup5 = yVar.f16607i;
                    viewGroup5.scrollTo(viewGroup5.getWidth(), 0);
                    break;
                }
                break;
            default:
                ViewGroup viewGroup6 = yVar.f16605g;
                if (viewGroup6 != null) {
                    viewGroup6.setVisibility(0);
                    break;
                }
                break;
        }
    }
}

package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

/* loaded from: classes.dex */
public class FadeAndShortSlide extends Visibility {

    /* renamed from: d, reason: collision with root package name */
    public static final DecelerateInterpolator f1444d = new DecelerateInterpolator();

    /* renamed from: e, reason: collision with root package name */
    public static final a f1445e = new a(0);

    /* renamed from: f, reason: collision with root package name */
    public static final a f1446f = new a(1);

    /* renamed from: g, reason: collision with root package name */
    public static final a f1447g = new a(2);

    /* renamed from: h, reason: collision with root package name */
    public static final a f1448h = new a(3);

    /* renamed from: i, reason: collision with root package name */
    public static final a f1449i = new a(4);

    /* renamed from: a, reason: collision with root package name */
    public final d.b f1450a;

    /* renamed from: b, reason: collision with root package name */
    public Visibility f1451b;

    /* renamed from: c, reason: collision with root package name */
    public final float f1452c;

    public FadeAndShortSlide(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1451b = new Fade();
        this.f1452c = -1.0f;
        b bVar = new b(this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11251h);
        int i10 = typedArrayObtainStyledAttributes.getInt(3, 8388611);
        if (i10 == 48) {
            this.f1450a = f1449i;
        } else if (i10 == 80) {
            this.f1450a = f1448h;
        } else if (i10 == 112) {
            this.f1450a = bVar;
        } else if (i10 == 8388611) {
            this.f1450a = f1445e;
        } else if (i10 == 8388613) {
            this.f1450a = f1446f;
        } else {
            if (i10 != 8388615) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f1450a = f1447g;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final float a(ViewGroup viewGroup) {
        float f10 = this.f1452c;
        return f10 >= 0.0f ? f10 : viewGroup.getWidth() / 4;
    }

    @Override // android.transition.Transition
    public final Transition addListener(Transition.TransitionListener transitionListener) {
        this.f1451b.addListener(transitionListener);
        return super.addListener(transitionListener);
    }

    public final float b(ViewGroup viewGroup) {
        float f10 = this.f1452c;
        return f10 >= 0.0f ? f10 : viewGroup.getHeight() / 4;
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureEndValues(TransitionValues transitionValues) {
        this.f1451b.captureEndValues(transitionValues);
        super.captureEndValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public final void captureStartValues(TransitionValues transitionValues) {
        this.f1451b.captureStartValues(transitionValues);
        super.captureStartValues(transitionValues);
        int[] iArr = new int[2];
        transitionValues.view.getLocationOnScreen(iArr);
        transitionValues.values.put("android:fadeAndShortSlideTransition:screenPosition", iArr);
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues2.values.get("android:fadeAndShortSlideTransition:screenPosition");
        int i10 = iArr[0];
        int i11 = iArr[1];
        float translationX = view.getTranslationX();
        ObjectAnimator objectAnimatorG = q4.a.g(view, transitionValues2, i10, i11, this.f1450a.E(this, viewGroup, view, iArr), this.f1450a.F(this, viewGroup, view, iArr), translationX, view.getTranslationY(), f1444d, this);
        Animator animatorOnAppear = this.f1451b.onAppear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorG == null) {
            return animatorOnAppear;
        }
        if (animatorOnAppear == null) {
            return objectAnimatorG;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorG).with(animatorOnAppear);
        return animatorSet;
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null || viewGroup == view) {
            return null;
        }
        int[] iArr = (int[]) transitionValues.values.get("android:fadeAndShortSlideTransition:screenPosition");
        ObjectAnimator objectAnimatorG = q4.a.g(view, transitionValues, iArr[0], iArr[1], view.getTranslationX(), view.getTranslationY(), this.f1450a.E(this, viewGroup, view, iArr), this.f1450a.F(this, viewGroup, view, iArr), f1444d, this);
        Animator animatorOnDisappear = this.f1451b.onDisappear(viewGroup, view, transitionValues, transitionValues2);
        if (objectAnimatorG == null) {
            return animatorOnDisappear;
        }
        if (animatorOnDisappear == null) {
            return objectAnimatorG;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(objectAnimatorG).with(animatorOnDisappear);
        return animatorSet;
    }

    @Override // android.transition.Transition
    public final Transition removeListener(Transition.TransitionListener transitionListener) {
        this.f1451b.removeListener(transitionListener);
        return super.removeListener(transitionListener);
    }

    @Override // android.transition.Transition
    public final void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        this.f1451b.setEpicenterCallback(epicenterCallback);
        super.setEpicenterCallback(epicenterCallback);
    }

    @Override // android.transition.Transition
    public final Transition clone() {
        FadeAndShortSlide fadeAndShortSlide = (FadeAndShortSlide) super.clone();
        fadeAndShortSlide.f1451b = (Visibility) this.f1451b.clone();
        return fadeAndShortSlide;
    }
}

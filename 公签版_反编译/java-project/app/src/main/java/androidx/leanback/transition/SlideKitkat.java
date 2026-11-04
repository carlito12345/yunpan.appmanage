package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
class SlideKitkat extends Visibility {

    /* renamed from: b, reason: collision with root package name */
    public static final DecelerateInterpolator f1453b = new DecelerateInterpolator();

    /* renamed from: c, reason: collision with root package name */
    public static final AccelerateInterpolator f1454c = new AccelerateInterpolator();

    /* renamed from: d, reason: collision with root package name */
    public static final c f1455d = new c(0);

    /* renamed from: e, reason: collision with root package name */
    public static final d f1456e = new d(0);

    /* renamed from: f, reason: collision with root package name */
    public static final c f1457f = new c(1);

    /* renamed from: g, reason: collision with root package name */
    public static final d f1458g = new d(1);

    /* renamed from: h, reason: collision with root package name */
    public static final c f1459h = new c(2);

    /* renamed from: i, reason: collision with root package name */
    public static final c f1460i = new c(3);

    /* renamed from: a, reason: collision with root package name */
    public final e f1461a;

    public SlideKitkat(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n1.a.f11251h);
        int i10 = typedArrayObtainStyledAttributes.getInt(3, 80);
        if (i10 == 3) {
            this.f1461a = f1455d;
        } else if (i10 == 5) {
            this.f1461a = f1457f;
        } else if (i10 == 48) {
            this.f1461a = f1456e;
        } else if (i10 == 80) {
            this.f1461a = f1458g;
        } else if (i10 == 8388611) {
            this.f1461a = f1459h;
        } else {
            if (i10 != 8388613) {
                throw new IllegalArgumentException("Invalid slide direction");
            }
            this.f1461a = f1460i;
        }
        long j10 = typedArrayObtainStyledAttributes.getInt(1, -1);
        if (j10 >= 0) {
            setDuration(j10);
        }
        long j11 = typedArrayObtainStyledAttributes.getInt(2, -1);
        if (j11 > 0) {
            setStartDelay(j11);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId > 0) {
            setInterpolator(AnimationUtils.loadInterpolator(context, resourceId));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static ObjectAnimator a(View view, Property property, float f10, float f11, float f12, TimeInterpolator timeInterpolator, int i10) {
        float[] fArr = (float[]) view.getTag(R.id.lb_slide_transition_value);
        if (fArr != null) {
            f10 = View.TRANSLATION_Y == property ? fArr[1] : fArr[0];
            view.setTag(R.id.lb_slide_transition_value, null);
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f10, f11);
        f fVar = new f(view, property, f12, f11, i10);
        objectAnimatorOfFloat.addListener(fVar);
        objectAnimatorOfFloat.addPauseListener(fVar);
        objectAnimatorOfFloat.setInterpolator(timeInterpolator);
        return objectAnimatorOfFloat;
    }

    @Override // android.transition.Visibility
    public final Animator onAppear(ViewGroup viewGroup, TransitionValues transitionValues, int i10, TransitionValues transitionValues2, int i11) {
        View view = transitionValues2 != null ? transitionValues2.view : null;
        if (view == null) {
            return null;
        }
        float fC = this.f1461a.c(view);
        return a(view, this.f1461a.d(), this.f1461a.b(view), fC, fC, f1453b, 0);
    }

    @Override // android.transition.Visibility
    public final Animator onDisappear(ViewGroup viewGroup, TransitionValues transitionValues, int i10, TransitionValues transitionValues2, int i11) {
        View view = transitionValues != null ? transitionValues.view : null;
        if (view == null) {
            return null;
        }
        float fC = this.f1461a.c(view);
        return a(view, this.f1461a.d(), fC, this.f1461a.b(view), fC, f1454c, 4);
    }
}

package r6;

import a0.t;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import com.alibaba.sdk.android.oss.signer.SignParameters;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final t f13714a = new t(0);

    /* renamed from: b, reason: collision with root package name */
    public final t f13715b = new t(0);

    public static b a(Context context, int i10) throws Resources.NotFoundException {
        try {
            Animator animatorLoadAnimator = AnimatorInflater.loadAnimator(context, i10);
            if (animatorLoadAnimator instanceof AnimatorSet) {
                return b(((AnimatorSet) animatorLoadAnimator).getChildAnimations());
            }
            if (animatorLoadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(animatorLoadAnimator);
            return b(arrayList);
        } catch (Exception unused) {
            Integer.toHexString(i10);
            return null;
        }
    }

    public static b b(ArrayList arrayList) {
        b bVar = new b();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            Animator animator = (Animator) arrayList.get(i10);
            if (!(animator instanceof ObjectAnimator)) {
                throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
            }
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            bVar.f13715b.put(objectAnimator.getPropertyName(), objectAnimator.getValues());
            String propertyName = objectAnimator.getPropertyName();
            long startDelay = objectAnimator.getStartDelay();
            long duration = objectAnimator.getDuration();
            TimeInterpolator interpolator = objectAnimator.getInterpolator();
            if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
                interpolator = a.f13711b;
            } else if (interpolator instanceof AccelerateInterpolator) {
                interpolator = a.f13712c;
            } else if (interpolator instanceof DecelerateInterpolator) {
                interpolator = a.f13713d;
            }
            c cVar = new c(startDelay, duration, interpolator);
            cVar.f13719d = objectAnimator.getRepeatCount();
            cVar.f13720e = objectAnimator.getRepeatMode();
            bVar.f13714a.put(propertyName, cVar);
        }
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f13714a.equals(((b) obj).f13714a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13714a.hashCode();
    }

    public final String toString() {
        return SignParameters.NEW_LINE + b.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f13714a + "}\n";
    }
}

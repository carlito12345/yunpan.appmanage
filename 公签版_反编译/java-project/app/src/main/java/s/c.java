package s;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
import android.os.Build;
import s1.g;

/* loaded from: classes.dex */
public final class c extends g {

    /* renamed from: b, reason: collision with root package name */
    public final ObjectAnimator f13850b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13851c;

    public c(AnimationDrawable animationDrawable, boolean z, boolean z4) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i10 = z ? numberOfFrames - 1 : 0;
        int i11 = z ? 0 : numberOfFrames - 1;
        d dVar = new d(animationDrawable, z);
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i10, i11);
        if (Build.VERSION.SDK_INT >= 18) {
            t.b.a(objectAnimatorOfInt, true);
        }
        objectAnimatorOfInt.setDuration(dVar.f13854c);
        objectAnimatorOfInt.setInterpolator(dVar);
        this.f13851c = z4;
        this.f13850b = objectAnimatorOfInt;
    }

    @Override // s1.g
    public final void S() {
        this.f13850b.reverse();
    }

    @Override // s1.g
    public final void b0() {
        this.f13850b.start();
    }

    @Override // s1.g
    public final void c0() {
        this.f13850b.cancel();
    }

    @Override // s1.g
    public final boolean i() {
        return this.f13851c;
    }
}

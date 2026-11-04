package p7;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
public final class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f12580a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f12581b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g f12582c;

    public f(g gVar, View view, View view2) {
        this.f12582c = gVar;
        this.f12580a = view;
        this.f12581b = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f12582c.c(this.f12580a, this.f12581b, valueAnimator.getAnimatedFraction());
    }
}

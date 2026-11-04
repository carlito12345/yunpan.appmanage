package androidx.leanback.widget;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class m0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1662a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchOrbView f1663b;

    public /* synthetic */ m0(SearchOrbView searchOrbView, int i10) {
        this.f1662a = i10;
        this.f1663b = searchOrbView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f1662a) {
            case 0:
                this.f1663b.setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            default:
                this.f1663b.setSearchOrbZ(valueAnimator.getAnimatedFraction());
                break;
        }
    }
}

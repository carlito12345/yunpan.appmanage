package q7;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13069a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13070b;

    public /* synthetic */ i(int i10, Object obj) {
        this.f13069a = i10;
        this.f13070b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f13069a) {
            case 0:
                l lVar = (l) this.f13070b;
                lVar.getClass();
                lVar.f13114d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                v3.e eVar = (v3.e) this.f13070b;
                eVar.getClass();
                eVar.H = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                eVar.invalidate(eVar.f16430a);
                break;
            default:
                wa.a aVar = (wa.a) this.f13070b;
                if (aVar.f17657d != null) {
                    float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    aVar.f17663j = fFloatValue;
                    aVar.f17657d.setAlpha(fFloatValue);
                    break;
                }
                break;
        }
    }
}

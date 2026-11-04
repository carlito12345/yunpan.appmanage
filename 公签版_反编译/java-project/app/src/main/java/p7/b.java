package p7;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.yunpan.appmanage.view.HiveProgressView;

/* loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12576a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f12577b;

    public /* synthetic */ b(int i10, Object obj) {
        this.f12576a = i10;
        this.f12577b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f12576a) {
            case 0:
                ((TabLayout) this.f12577b).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                break;
            case 1:
                ((TextInputLayout) this.f12577b).f3693k1.l(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 2:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                m7.g gVar = ((BottomSheetBehavior) this.f12577b).f3473i;
                if (gVar != null) {
                    m7.f fVar = gVar.f10920a;
                    if (fVar.f10912i != fFloatValue) {
                        fVar.f10912i = fFloatValue;
                        gVar.f10924e = true;
                        gVar.invalidateSelf();
                        break;
                    }
                }
                break;
            default:
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                HiveProgressView hiveProgressView = (HiveProgressView) this.f12577b;
                hiveProgressView.f4168e = fFloatValue2;
                hiveProgressView.invalidate();
                break;
        }
    }
}

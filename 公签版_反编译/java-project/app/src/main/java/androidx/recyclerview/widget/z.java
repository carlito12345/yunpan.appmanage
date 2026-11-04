package androidx.recyclerview.widget;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class z implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2377a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2378b;

    public /* synthetic */ z(int i10, Object obj) {
        this.f2377a = i10;
        this.f2378b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f2378b;
        switch (this.f2377a) {
            case 0:
                d0 d0Var = (d0) obj;
                int i10 = d0Var.A;
                ValueAnimator valueAnimator = d0Var.z;
                if (i10 == 1) {
                    valueAnimator.cancel();
                } else if (i10 != 2) {
                }
                d0Var.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                break;
            default:
                ((StaggeredGridLayoutManager) obj).checkForGaps();
                break;
        }
    }
}

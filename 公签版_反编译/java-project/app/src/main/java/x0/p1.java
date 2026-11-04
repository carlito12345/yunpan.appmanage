package x0;

import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.Collections;

/* loaded from: classes.dex */
public final class p1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v1 f18036a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j2 f18037b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ j2 f18038c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18039d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f18040e;

    public p1(v1 v1Var, j2 j2Var, j2 j2Var2, int i10, View view) {
        this.f18036a = v1Var;
        this.f18037b = j2Var;
        this.f18038c = j2Var2;
        this.f18039d = i10;
        this.f18040e = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f10;
        v1 v1Var;
        float animatedFraction = valueAnimator.getAnimatedFraction();
        v1 v1Var2 = this.f18036a;
        v1Var2.f18060a.d(animatedFraction);
        float fB = v1Var2.f18060a.b();
        Interpolator interpolator = r1.f18043e;
        int i10 = Build.VERSION.SDK_INT;
        j2 j2Var = this.f18037b;
        a2 z1Var = i10 >= 30 ? new z1(j2Var) : i10 >= 29 ? new y1(j2Var) : i10 >= 20 ? new x1(j2Var) : new a2(j2Var);
        int i11 = 1;
        while (i11 <= 256) {
            int i12 = this.f18039d & i11;
            g2 g2Var = j2Var.f18006a;
            if (i12 == 0) {
                z1Var.c(i11, g2Var.f(i11));
                f10 = fB;
                v1Var = v1Var2;
            } else {
                p0.c cVarF = g2Var.f(i11);
                p0.c cVarF2 = this.f18038c.f18006a.f(i11);
                float f11 = 1.0f - fB;
                double d10 = (cVarF.f12540a - cVarF2.f12540a) * f11;
                Double.isNaN(d10);
                int i13 = (int) (d10 + 0.5d);
                double d11 = (cVarF.f12541b - cVarF2.f12541b) * f11;
                Double.isNaN(d11);
                f10 = fB;
                double d12 = (cVarF.f12542c - cVarF2.f12542c) * f11;
                Double.isNaN(d12);
                float f12 = (cVarF.f12543d - cVarF2.f12543d) * f11;
                v1Var = v1Var2;
                double d13 = f12;
                Double.isNaN(d13);
                z1Var.c(i11, j2.e(cVarF, i13, (int) (d11 + 0.5d), (int) (d12 + 0.5d), (int) (d13 + 0.5d)));
            }
            i11 <<= 1;
            fB = f10;
            v1Var2 = v1Var;
        }
        r1.g(this.f18040e, z1Var.b(), Collections.singletonList(v1Var2));
    }
}

package androidx.recyclerview.widget;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class o0 implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2218a;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        switch (this.f2218a) {
            case 0:
                return f10 * f10 * f10 * f10 * f10;
            case 1:
                float f11 = f10 - 1.0f;
                return (f11 * f11 * f11 * f11 * f11) + 1.0f;
            case 2:
                float f12 = f10 - 1.0f;
                return (f12 * f12 * f12 * f12 * f12) + 1.0f;
            case 3:
                double dPow = Math.pow(2.0d, (-10.0f) * f10);
                double d10 = f10 - 0.1f;
                Double.isNaN(d10);
                double d11 = 0.4f;
                Double.isNaN(d11);
                return (float) ((Math.sin((d10 * 6.283185307179586d) / d11) * dPow) + 1.0d);
            case 4:
                float f13 = f10 - 1.0f;
                return (f13 * f13 * f13 * f13 * f13) + 1.0f;
            default:
                float f14 = f10 - 1.0f;
                return (f14 * f14 * f14 * f14 * f14) + 1.0f;
        }
    }
}

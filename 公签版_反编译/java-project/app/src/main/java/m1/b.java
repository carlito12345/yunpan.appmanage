package m1;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public abstract class b implements Interpolator {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f10796a;

    /* renamed from: b, reason: collision with root package name */
    public final float f10797b;

    public b(float[] fArr) {
        this.f10796a = fArr;
        this.f10797b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f10) {
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f10796a;
        int iMin = Math.min((int) ((fArr.length - 1) * f10), fArr.length - 2);
        float f11 = this.f10797b;
        float f12 = (f10 - (iMin * f11)) / f11;
        float f13 = fArr[iMin];
        return g.b.b(fArr[iMin + 1], f13, f12, f13);
    }
}

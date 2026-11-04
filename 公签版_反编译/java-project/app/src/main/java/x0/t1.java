package x0;

import android.view.WindowInsetsAnimation;
import android.view.animation.Interpolator;
import ua.i8;

/* loaded from: classes.dex */
public final class t1 extends u1 {

    /* renamed from: e, reason: collision with root package name */
    public final WindowInsetsAnimation f18055e;

    public t1(WindowInsetsAnimation windowInsetsAnimation) {
        super(0, null, 0L);
        this.f18055e = windowInsetsAnimation;
    }

    public static WindowInsetsAnimation.Bounds e(i8 i8Var) {
        return new WindowInsetsAnimation.Bounds(((p0.c) i8Var.f15741b).d(), ((p0.c) i8Var.f15742c).d());
    }

    @Override // x0.u1
    public final long a() {
        return this.f18055e.getDurationMillis();
    }

    @Override // x0.u1
    public final float b() {
        return this.f18055e.getInterpolatedFraction();
    }

    @Override // x0.u1
    public final int c() {
        return this.f18055e.getTypeMask();
    }

    @Override // x0.u1
    public final void d(float f10) {
        this.f18055e.setFraction(f10);
    }

    public t1(int i10, Interpolator interpolator, long j10) {
        this(new WindowInsetsAnimation(i10, interpolator, j10));
    }
}

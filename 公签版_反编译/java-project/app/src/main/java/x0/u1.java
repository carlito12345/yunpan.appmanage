package x0;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class u1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f18056a;

    /* renamed from: b, reason: collision with root package name */
    public float f18057b;

    /* renamed from: c, reason: collision with root package name */
    public final Interpolator f18058c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18059d;

    public u1(int i10, Interpolator interpolator, long j10) {
        this.f18056a = i10;
        this.f18058c = interpolator;
        this.f18059d = j10;
    }

    public long a() {
        return this.f18059d;
    }

    public float b() {
        Interpolator interpolator = this.f18058c;
        return interpolator != null ? interpolator.getInterpolation(this.f18057b) : this.f18057b;
    }

    public int c() {
        return this.f18056a;
    }

    public void d(float f10) {
        this.f18057b = f10;
    }
}

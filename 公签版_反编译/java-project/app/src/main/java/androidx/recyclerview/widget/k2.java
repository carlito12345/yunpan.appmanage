package androidx.recyclerview.widget;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public final class k2 {

    /* renamed from: d, reason: collision with root package name */
    public int f2172d = -1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2174f = false;

    /* renamed from: a, reason: collision with root package name */
    public int f2169a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f2170b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2171c = Integer.MIN_VALUE;

    /* renamed from: e, reason: collision with root package name */
    public Interpolator f2173e = null;

    public final void a(RecyclerView recyclerView) {
        int i10 = this.f2172d;
        if (i10 >= 0) {
            this.f2172d = -1;
            recyclerView.jumpToPositionForSmoothScroller(i10);
            this.f2174f = false;
        } else if (this.f2174f) {
            Interpolator interpolator = this.f2173e;
            if (interpolator != null && this.f2171c < 1) {
                throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
            }
            int i11 = this.f2171c;
            if (i11 < 1) {
                throw new IllegalStateException("Scroll duration must be a positive number");
            }
            recyclerView.mViewFlinger.c(this.f2169a, this.f2170b, interpolator, i11);
            this.f2174f = false;
        }
    }
}

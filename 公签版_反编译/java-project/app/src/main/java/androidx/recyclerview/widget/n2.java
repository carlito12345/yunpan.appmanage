package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public final class n2 {

    /* renamed from: a, reason: collision with root package name */
    public int f2199a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f2200b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2201c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2202d = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f2203e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2204f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2205g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2206h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2207i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f2208j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f2209k = false;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public long f2210m;

    /* renamed from: n, reason: collision with root package name */
    public int f2211n;

    /* renamed from: o, reason: collision with root package name */
    public int f2212o;

    /* renamed from: p, reason: collision with root package name */
    public int f2213p;

    public final void a(int i10) {
        if ((this.f2202d & i10) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.f2202d));
    }

    public final int b() {
        return this.f2205g ? this.f2200b - this.f2201c : this.f2203e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f2199a + ", mData=null, mItemCount=" + this.f2203e + ", mIsMeasuring=" + this.f2207i + ", mPreviousLayoutItemCount=" + this.f2200b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2201c + ", mStructureChanged=" + this.f2204f + ", mInPreLayout=" + this.f2205g + ", mRunSimpleAnimations=" + this.f2208j + ", mRunPredictiveAnimations=" + this.f2209k + '}';
    }
}

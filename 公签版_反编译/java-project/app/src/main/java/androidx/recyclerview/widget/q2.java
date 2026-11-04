package androidx.recyclerview.widget;

import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.hsae.autosdk.core.NoConst;
import java.util.Arrays;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class q2 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public int f2234a;

    /* renamed from: b, reason: collision with root package name */
    public int f2235b;

    /* renamed from: c, reason: collision with root package name */
    public OverScroller f2236c;

    /* renamed from: d, reason: collision with root package name */
    public Interpolator f2237d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2238e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2239f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2240g;

    public q2(RecyclerView recyclerView) {
        this.f2240g = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.f2237d = interpolator;
        this.f2238e = false;
        this.f2239f = false;
        this.f2236c = new OverScroller(recyclerView.getContext(), interpolator);
    }

    public final void a(int i10, int i11) {
        RecyclerView recyclerView = this.f2240g;
        recyclerView.setScrollState(2);
        this.f2235b = 0;
        this.f2234a = 0;
        Interpolator interpolator = this.f2237d;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.f2237d = interpolator2;
            this.f2236c = new OverScroller(recyclerView.getContext(), interpolator2);
        }
        this.f2236c.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.f2238e) {
            this.f2239f = true;
            return;
        }
        RecyclerView recyclerView = this.f2240g;
        recyclerView.removeCallbacks(this);
        WeakHashMap weakHashMap = x0.b1.f17953a;
        x0.j0.m(recyclerView, this);
    }

    public final void c(int i10, int i11, Interpolator interpolator, int i12) {
        RecyclerView recyclerView = this.f2240g;
        if (i12 == Integer.MIN_VALUE) {
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z = iAbs > iAbs2;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                iAbs = iAbs2;
            }
            i12 = Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), NoConst.MIN_HEARTBEAT_INTERVAL);
        }
        int i13 = i12;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.f2237d != interpolator) {
            this.f2237d = interpolator;
            this.f2236c = new OverScroller(recyclerView.getContext(), interpolator);
        }
        this.f2235b = 0;
        this.f2234a = 0;
        recyclerView.setScrollState(2);
        this.f2236c.startScroll(0, 0, i10, i11, i13);
        if (Build.VERSION.SDK_INT < 23) {
            this.f2236c.computeScrollOffset();
        }
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        int i11;
        int i12;
        int i13;
        RecyclerView recyclerView = this.f2240g;
        if (recyclerView.mLayout == null) {
            recyclerView.removeCallbacks(this);
            this.f2236c.abortAnimation();
            return;
        }
        this.f2239f = false;
        this.f2238e = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f2236c;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i14 = currX - this.f2234a;
            int i15 = currY - this.f2235b;
            this.f2234a = currX;
            this.f2235b = currY;
            int iConsumeFlingInHorizontalStretch = recyclerView.consumeFlingInHorizontalStretch(i14);
            int iConsumeFlingInVerticalStretch = recyclerView.consumeFlingInVerticalStretch(i15);
            int[] iArr = recyclerView.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = recyclerView.mReusableIntPair;
                iConsumeFlingInHorizontalStretch -= iArr2[0];
                iConsumeFlingInVerticalStretch -= iArr2[1];
            }
            if (recyclerView.getOverScrollMode() != 2) {
                recyclerView.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
            }
            if (recyclerView.mAdapter != null) {
                int[] iArr3 = recyclerView.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                int[] iArr4 = recyclerView.mReusableIntPair;
                int i16 = iArr4[0];
                int i17 = iArr4[1];
                int i18 = iConsumeFlingInHorizontalStretch - i16;
                int i19 = iConsumeFlingInVerticalStretch - i17;
                m2 m2Var = recyclerView.mLayout.mSmoothScroller;
                if (m2Var != null && !m2Var.isPendingInitialRun() && m2Var.isRunning()) {
                    int iB = recyclerView.mState.b();
                    if (iB == 0) {
                        m2Var.stop();
                    } else if (m2Var.getTargetPosition() >= iB) {
                        m2Var.setTargetPosition(iB - 1);
                        m2Var.onAnimation(i16, i17);
                    } else {
                        m2Var.onAnimation(i16, i17);
                    }
                }
                i12 = i17;
                i13 = i16;
                i10 = i18;
                i11 = i19;
            } else {
                i10 = iConsumeFlingInHorizontalStretch;
                i11 = iConsumeFlingInVerticalStretch;
                i12 = 0;
                i13 = 0;
            }
            if (!recyclerView.mItemDecorations.isEmpty()) {
                recyclerView.invalidate();
            }
            int[] iArr5 = recyclerView.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView.dispatchNestedScroll(i13, i12, i10, i11, null, 1, iArr5);
            int[] iArr6 = recyclerView.mReusableIntPair;
            int i20 = i10 - iArr6[0];
            int i21 = i11 - iArr6[1];
            if (i13 != 0 || i12 != 0) {
                recyclerView.dispatchOnScrolled(i13, i12);
            }
            if (!recyclerView.awakenScrollBars()) {
                recyclerView.invalidate();
            }
            boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i20 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i21 != 0));
            m2 m2Var2 = recyclerView.mLayout.mSmoothScroller;
            if ((m2Var2 == null || !m2Var2.isPendingInitialRun()) && z) {
                if (recyclerView.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i22 = i20 < 0 ? -currVelocity : i20 > 0 ? currVelocity : 0;
                    if (i21 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i21 <= 0) {
                        currVelocity = 0;
                    }
                    recyclerView.absorbGlows(i22, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    e0 e0Var = recyclerView.mPrefetchRegistry;
                    int[] iArr7 = e0Var.f2092c;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    e0Var.f2093d = 0;
                }
            } else {
                b();
                g0 g0Var = recyclerView.mGapWorker;
                if (g0Var != null) {
                    g0Var.a(recyclerView, i13, i12);
                }
            }
        }
        m2 m2Var3 = recyclerView.mLayout.mSmoothScroller;
        if (m2Var3 != null && m2Var3.isPendingInitialRun()) {
            m2Var3.onAnimation(0, 0);
        }
        this.f2238e = false;
        if (!this.f2239f) {
            recyclerView.setScrollState(0);
            recyclerView.stopNestedScroll(1);
        } else {
            recyclerView.removeCallbacks(this);
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.m(recyclerView, this);
        }
    }
}

package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import com.desay_svautomotive.libsvcarinfo.CarLanID;
import java.util.List;

/* loaded from: classes.dex */
public class LinearLayoutManager extends RecyclerView.LayoutManager implements t0, l2 {
    static final boolean DEBUG = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "LinearLayoutManager";
    public static final int VERTICAL = 1;
    final w0 mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final x0 mLayoutChunkResult;
    private y0 mLayoutState;
    int mOrientation;
    f1 mOrientationHelper;
    z0 mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager() {
        this(1, false);
    }

    public final int a(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return t2.a(n2Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final int b(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return t2.b(n2Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    public final int c(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return t2.c(n2Var, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled, true), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled, true), this, this.mSmoothScrollbarEnabled);
    }

    public void calculateExtraLayoutSpace(n2 n2Var, int[] iArr) {
        int i10;
        int extraLayoutSpace = getExtraLayoutSpace(n2Var);
        if (this.mLayoutState.f2369f == -1) {
            i10 = 0;
        } else {
            i10 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        iArr[0] = extraLayoutSpace;
        iArr[1] = i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectAdjacentPrefetchPositions(int i10, int i11, n2 n2Var, y1 y1Var) {
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        ensureLayoutState();
        l(i10 > 0 ? 1 : -1, Math.abs(i10), true, n2Var);
        collectPrefetchPositionsForLayoutState(n2Var, this.mLayoutState, y1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void collectInitialPrefetchPositions(int i10, y1 y1Var) {
        boolean z;
        int i11;
        z0 z0Var = this.mPendingSavedState;
        if (z0Var == null || (i11 = z0Var.f2379a) < 0) {
            k();
            z = this.mShouldReverseLayout;
            i11 = this.mPendingScrollPosition;
            if (i11 == -1) {
                i11 = z ? i10 - 1 : 0;
            }
        } else {
            z = z0Var.f2381c;
        }
        int i12 = z ? -1 : 1;
        for (int i13 = 0; i13 < this.mInitialPrefetchItemCount && i11 >= 0 && i11 < i10; i13++) {
            ((e0) y1Var).a(i11, 0);
            i11 += i12;
        }
    }

    public void collectPrefetchPositionsForLayoutState(n2 n2Var, y0 y0Var, y1 y1Var) {
        int i10 = y0Var.f2367d;
        if (i10 < 0 || i10 >= n2Var.b()) {
            return;
        }
        ((e0) y1Var).a(i10, Math.max(0, y0Var.f2370g));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollExtent(n2 n2Var) {
        return a(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollOffset(n2 n2Var) {
        return b(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeHorizontalScrollRange(n2 n2Var) {
        return c(n2Var);
    }

    @Override // androidx.recyclerview.widget.l2
    @SuppressLint({"UnknownNullness"})
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = (i10 < getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollExtent(n2 n2Var) {
        return a(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollOffset(n2 n2Var) {
        return b(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int computeVerticalScrollRange(n2 n2Var) {
        return c(n2Var);
    }

    public int convertFocusDirectionToLayoutDirection(int i10) {
        return i10 != 1 ? i10 != 2 ? i10 != 17 ? i10 != 33 ? i10 != 66 ? (i10 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public y0 createLayoutState() {
        return new y0();
    }

    public final int d(int i10, g2 g2Var, n2 n2Var, boolean z) {
        int iG;
        int iG2 = this.mOrientationHelper.g() - i10;
        if (iG2 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(-iG2, g2Var, n2Var);
        int i12 = i10 + i11;
        if (!z || (iG = this.mOrientationHelper.g() - i12) <= 0) {
            return i11;
        }
        this.mOrientationHelper.p(iG);
        return iG + i11;
    }

    public final int e(int i10, g2 g2Var, n2 n2Var, boolean z) {
        int iK;
        int iK2 = i10 - this.mOrientationHelper.k();
        if (iK2 <= 0) {
            return 0;
        }
        int i11 = -scrollBy(iK2, g2Var, n2Var);
        int i12 = i10 + i11;
        if (!z || (iK = i12 - this.mOrientationHelper.k()) <= 0) {
            return i11;
        }
        this.mOrientationHelper.p(-iK);
        return i11 - iK;
    }

    public void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = createLayoutState();
        }
    }

    public final View f() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    public int fill(g2 g2Var, y0 y0Var, n2 n2Var, boolean z) {
        int i10;
        int i11 = y0Var.f2366c;
        int i12 = y0Var.f2370g;
        if (i12 != Integer.MIN_VALUE) {
            if (i11 < 0) {
                y0Var.f2370g = i12 + i11;
            }
            i(g2Var, y0Var);
        }
        int i13 = y0Var.f2366c + y0Var.f2371h;
        x0 x0Var = this.mLayoutChunkResult;
        while (true) {
            if ((!y0Var.l && i13 <= 0) || (i10 = y0Var.f2367d) < 0 || i10 >= n2Var.b()) {
                break;
            }
            x0Var.f2348a = 0;
            x0Var.f2349b = false;
            x0Var.f2350c = false;
            x0Var.f2351d = false;
            layoutChunk(g2Var, n2Var, y0Var, x0Var);
            if (!x0Var.f2349b) {
                int i14 = y0Var.f2365b;
                int i15 = x0Var.f2348a;
                y0Var.f2365b = (y0Var.f2369f * i15) + i14;
                if (!x0Var.f2350c || y0Var.f2374k != null || !n2Var.f2205g) {
                    y0Var.f2366c -= i15;
                    i13 -= i15;
                }
                int i16 = y0Var.f2370g;
                if (i16 != Integer.MIN_VALUE) {
                    int i17 = i16 + i15;
                    y0Var.f2370g = i17;
                    int i18 = y0Var.f2366c;
                    if (i18 < 0) {
                        y0Var.f2370g = i17 + i18;
                    }
                    i(g2Var, y0Var);
                }
                if (z && x0Var.f2351d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i11 - y0Var.f2366c;
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public View findFirstVisibleChildClosestToEnd(boolean z, boolean z4) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z, z4) : findOneVisibleChild(getChildCount() - 1, -1, z, z4);
    }

    public View findFirstVisibleChildClosestToStart(boolean z, boolean z4) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z, z4) : findOneVisibleChild(0, getChildCount(), z, z4);
    }

    public int findFirstVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(0, getChildCount(), false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true, false);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View viewFindOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false, true);
        if (viewFindOneVisibleChild == null) {
            return -1;
        }
        return getPosition(viewFindOneVisibleChild);
    }

    public View findOnePartiallyOrCompletelyInvisibleChild(int i10, int i11) {
        int i12;
        int i13;
        ensureLayoutState();
        if (i11 <= i10 && i11 >= i10) {
            return getChildAt(i10);
        }
        if (this.mOrientationHelper.e(getChildAt(i10)) < this.mOrientationHelper.k()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = CarLanID.Send.MUSIC;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i12, i13) : this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    public View findOneVisibleChild(int i10, int i11, boolean z, boolean z4) {
        ensureLayoutState();
        int i12 = z ? 24579 : 320;
        int i13 = z4 ? 320 : 0;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i10, i11, i12, i13) : this.mVerticalBoundCheck.a(i10, i11, i12, i13);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View findReferenceChild(g2 g2Var, n2 n2Var, boolean z, boolean z4) {
        int i10;
        int childCount;
        int i11;
        ensureLayoutState();
        int childCount2 = getChildCount();
        if (z4) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
            i11 = 1;
        }
        int iB = n2Var.b();
        int iK = this.mOrientationHelper.k();
        int iG = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            int iE = this.mOrientationHelper.e(childAt);
            int iB2 = this.mOrientationHelper.b(childAt);
            if (position >= 0 && position < iB) {
                if (!((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    boolean z10 = iB2 <= iK && iE < iK;
                    boolean z11 = iE >= iG && iB2 > iG;
                    if (!z10 && !z11) {
                        return childAt;
                    }
                    if (z) {
                        if (z11) {
                            view2 = childAt;
                        } else if (view == null) {
                            view = childAt;
                        }
                    } else if (!z10) {
                        if (view == null) {
                        }
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            childCount += i11;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View findViewByPosition(int i10) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i10 - getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (getPosition(childAt) == i10) {
                return childAt;
            }
        }
        return super.findViewByPosition(i10);
    }

    public final View g() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public int getExtraLayoutSpace(n2 n2Var) {
        if (n2Var.f2199a != -1) {
            return this.mOrientationHelper.l();
        }
        return 0;
    }

    public int getInitialPrefetchItemCount() {
        return this.mInitialPrefetchItemCount;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public boolean getStackFromEnd() {
        return this.mStackFromEnd;
    }

    public final void h() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            getPosition(childAt);
            this.mOrientationHelper.e(childAt);
        }
    }

    public final void i(g2 g2Var, y0 y0Var) {
        if (!y0Var.f2364a || y0Var.l) {
            return;
        }
        int i10 = y0Var.f2370g;
        int i11 = y0Var.f2372i;
        if (y0Var.f2369f == -1) {
            int childCount = getChildCount();
            if (i10 < 0) {
                return;
            }
            int iF = (this.mOrientationHelper.f() - i10) + i11;
            if (this.mShouldReverseLayout) {
                for (int i12 = 0; i12 < childCount; i12++) {
                    View childAt = getChildAt(i12);
                    if (this.mOrientationHelper.e(childAt) < iF || this.mOrientationHelper.o(childAt) < iF) {
                        j(0, g2Var, i12);
                        return;
                    }
                }
                return;
            }
            int i13 = childCount - 1;
            for (int i14 = i13; i14 >= 0; i14--) {
                View childAt2 = getChildAt(i14);
                if (this.mOrientationHelper.e(childAt2) < iF || this.mOrientationHelper.o(childAt2) < iF) {
                    j(i13, g2Var, i14);
                    return;
                }
            }
            return;
        }
        if (i10 < 0) {
            return;
        }
        int i15 = i10 - i11;
        int childCount2 = getChildCount();
        if (!this.mShouldReverseLayout) {
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt3 = getChildAt(i16);
                if (this.mOrientationHelper.b(childAt3) > i15 || this.mOrientationHelper.n(childAt3) > i15) {
                    j(0, g2Var, i16);
                    return;
                }
            }
            return;
        }
        int i17 = childCount2 - 1;
        for (int i18 = i17; i18 >= 0; i18--) {
            View childAt4 = getChildAt(i18);
            if (this.mOrientationHelper.b(childAt4) > i15 || this.mOrientationHelper.n(childAt4) > i15) {
                j(i17, g2Var, i18);
                return;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    public boolean isSmoothScrollbarEnabled() {
        return this.mSmoothScrollbarEnabled;
    }

    public final void j(int i10, g2 g2Var, int i11) {
        if (i10 == i11) {
            return;
        }
        if (i11 <= i10) {
            while (i10 > i11) {
                removeAndRecycleViewAt(i10, g2Var);
                i10--;
            }
        } else {
            for (int i12 = i11 - 1; i12 >= i10; i12--) {
                removeAndRecycleViewAt(i12, g2Var);
            }
        }
    }

    public final void k() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final void l(int i10, int i11, boolean z, n2 n2Var) {
        int iK;
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.f2369f = i10;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(n2Var, iArr);
        int iMax = Math.max(0, this.mReusableIntPair[0]);
        int iMax2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z4 = i10 == 1;
        y0 y0Var = this.mLayoutState;
        int i12 = z4 ? iMax2 : iMax;
        y0Var.f2371h = i12;
        if (!z4) {
            iMax = iMax2;
        }
        y0Var.f2372i = iMax;
        if (z4) {
            y0Var.f2371h = this.mOrientationHelper.h() + i12;
            View viewF = f();
            y0 y0Var2 = this.mLayoutState;
            y0Var2.f2368e = this.mShouldReverseLayout ? -1 : 1;
            int position = getPosition(viewF);
            y0 y0Var3 = this.mLayoutState;
            y0Var2.f2367d = position + y0Var3.f2368e;
            y0Var3.f2365b = this.mOrientationHelper.b(viewF);
            iK = this.mOrientationHelper.b(viewF) - this.mOrientationHelper.g();
        } else {
            View viewG = g();
            y0 y0Var4 = this.mLayoutState;
            y0Var4.f2371h = this.mOrientationHelper.k() + y0Var4.f2371h;
            y0 y0Var5 = this.mLayoutState;
            y0Var5.f2368e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = getPosition(viewG);
            y0 y0Var6 = this.mLayoutState;
            y0Var5.f2367d = position2 + y0Var6.f2368e;
            y0Var6.f2365b = this.mOrientationHelper.e(viewG);
            iK = (-this.mOrientationHelper.e(viewG)) + this.mOrientationHelper.k();
        }
        y0 y0Var7 = this.mLayoutState;
        y0Var7.f2366c = i11;
        if (z) {
            y0Var7.f2366c = i11 - iK;
        }
        y0Var7.f2370g = iK;
    }

    public void layoutChunk(g2 g2Var, n2 n2Var, y0 y0Var, x0 x0Var) {
        int i10;
        int i11;
        int i12;
        int paddingLeft;
        int iD;
        View viewB = y0Var.b(g2Var);
        if (viewB == null) {
            x0Var.f2349b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) viewB.getLayoutParams();
        if (y0Var.f2374k == null) {
            if (this.mShouldReverseLayout == (y0Var.f2369f == -1)) {
                addView(viewB);
            } else {
                addView(viewB, 0);
            }
        } else {
            if (this.mShouldReverseLayout == (y0Var.f2369f == -1)) {
                addDisappearingView(viewB);
            } else {
                addDisappearingView(viewB, 0);
            }
        }
        measureChildWithMargins(viewB, 0, 0);
        x0Var.f2348a = this.mOrientationHelper.c(viewB);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                iD = getWidth() - getPaddingRight();
                paddingLeft = iD - this.mOrientationHelper.d(viewB);
            } else {
                paddingLeft = getPaddingLeft();
                iD = this.mOrientationHelper.d(viewB) + paddingLeft;
            }
            if (y0Var.f2369f == -1) {
                int i13 = y0Var.f2365b;
                i12 = i13;
                i11 = iD;
                i10 = i13 - x0Var.f2348a;
            } else {
                int i14 = y0Var.f2365b;
                i10 = i14;
                i11 = iD;
                i12 = x0Var.f2348a + i14;
            }
        } else {
            int paddingTop = getPaddingTop();
            int iD2 = this.mOrientationHelper.d(viewB) + paddingTop;
            if (y0Var.f2369f == -1) {
                int i15 = y0Var.f2365b;
                i11 = i15;
                i10 = paddingTop;
                i12 = iD2;
                paddingLeft = i15 - x0Var.f2348a;
            } else {
                int i16 = y0Var.f2365b;
                i10 = paddingTop;
                i11 = x0Var.f2348a + i16;
                i12 = iD2;
                paddingLeft = i16;
            }
        }
        layoutDecoratedWithMargins(viewB, paddingLeft, i10, i11, i12);
        if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
            x0Var.f2350c = true;
        }
        x0Var.f2351d = viewB.hasFocusable();
    }

    public final void m(int i10, int i11) {
        this.mLayoutState.f2366c = this.mOrientationHelper.g() - i11;
        y0 y0Var = this.mLayoutState;
        y0Var.f2368e = this.mShouldReverseLayout ? -1 : 1;
        y0Var.f2367d = i10;
        y0Var.f2369f = 1;
        y0Var.f2365b = i11;
        y0Var.f2370g = Integer.MIN_VALUE;
    }

    public final void n(int i10, int i11) {
        this.mLayoutState.f2366c = i11 - this.mOrientationHelper.k();
        y0 y0Var = this.mLayoutState;
        y0Var.f2367d = i10;
        y0Var.f2368e = this.mShouldReverseLayout ? 1 : -1;
        y0Var.f2369f = -1;
        y0Var.f2365b = i11;
        y0Var.f2370g = Integer.MIN_VALUE;
    }

    public void onAnchorReady(g2 g2Var, n2 n2Var, w0 w0Var, int i10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
        super.onDetachedFromWindow(recyclerView, g2Var);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(g2Var);
            g2Var.f2130a.clear();
            g2Var.h();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public View onFocusSearchFailed(View view, int i10, g2 g2Var, n2 n2Var) {
        int iConvertFocusDirectionToLayoutDirection;
        k();
        if (getChildCount() == 0 || (iConvertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        l(iConvertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.l() * MAX_SCROLL_FACTOR), false, n2Var);
        y0 y0Var = this.mLayoutState;
        y0Var.f2370g = Integer.MIN_VALUE;
        y0Var.f2364a = false;
        fill(g2Var, y0Var, n2Var, true);
        View viewFindOnePartiallyOrCompletelyInvisibleChild = iConvertFocusDirectionToLayoutDirection == -1 ? this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
        View viewG = iConvertFocusDirectionToLayoutDirection == -1 ? g() : f();
        if (!viewG.hasFocusable()) {
            return viewFindOnePartiallyOrCompletelyInvisibleChild;
        }
        if (viewFindOnePartiallyOrCompletelyInvisibleChild == null) {
            return null;
        }
        return viewG;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x019f  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        View viewFindReferenceChild;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iD;
        int i15;
        View viewFindViewByPosition;
        int iE;
        int iG;
        int i16;
        int i17 = -1;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && n2Var.b() == 0) {
            removeAndRecycleAllViews(g2Var);
            return;
        }
        z0 z0Var = this.mPendingSavedState;
        if (z0Var != null && (i16 = z0Var.f2379a) >= 0) {
            this.mPendingScrollPosition = i16;
        }
        ensureLayoutState();
        this.mLayoutState.f2364a = false;
        k();
        View focusedChild = getFocusedChild();
        w0 w0Var = this.mAnchorInfo;
        if (!w0Var.f2339e || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            w0Var.d();
            w0 w0Var2 = this.mAnchorInfo;
            w0Var2.f2338d = this.mShouldReverseLayout ^ this.mStackFromEnd;
            if (n2Var.f2205g || (i10 = this.mPendingScrollPosition) == -1) {
                if (getChildCount() != 0) {
                    View focusedChild2 = getFocusedChild();
                    if (focusedChild2 != null) {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) focusedChild2.getLayoutParams();
                        if (layoutParams.isItemRemoved() || layoutParams.getViewLayoutPosition() < 0 || layoutParams.getViewLayoutPosition() >= n2Var.b()) {
                            boolean z = this.mLastStackFromEnd;
                            boolean z4 = this.mStackFromEnd;
                            if (z == z4 && (viewFindReferenceChild = findReferenceChild(g2Var, n2Var, w0Var2.f2338d, z4)) != null) {
                                w0Var2.b(getPosition(viewFindReferenceChild), viewFindReferenceChild);
                                if (!n2Var.f2205g && supportsPredictiveItemAnimations()) {
                                    int iE2 = this.mOrientationHelper.e(viewFindReferenceChild);
                                    int iB = this.mOrientationHelper.b(viewFindReferenceChild);
                                    int iK = this.mOrientationHelper.k();
                                    int iG2 = this.mOrientationHelper.g();
                                    boolean z10 = iB <= iK && iE2 < iK;
                                    boolean z11 = iE2 >= iG2 && iB > iG2;
                                    if (z10 || z11) {
                                        if (w0Var2.f2338d) {
                                            iK = iG2;
                                        }
                                        w0Var2.f2337c = iK;
                                    }
                                }
                            } else {
                                w0Var2.a();
                                w0Var2.f2336b = this.mStackFromEnd ? n2Var.b() - 1 : 0;
                            }
                        } else {
                            w0Var2.c(getPosition(focusedChild2), focusedChild2);
                        }
                        this.mAnchorInfo.f2339e = true;
                    }
                }
            } else if (i10 < 0 || i10 >= n2Var.b()) {
                this.mPendingScrollPosition = -1;
                this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
                if (getChildCount() != 0) {
                }
            } else {
                int i18 = this.mPendingScrollPosition;
                w0Var2.f2336b = i18;
                z0 z0Var2 = this.mPendingSavedState;
                if (z0Var2 != null && z0Var2.f2379a >= 0) {
                    boolean z12 = z0Var2.f2381c;
                    w0Var2.f2338d = z12;
                    if (z12) {
                        w0Var2.f2337c = this.mOrientationHelper.g() - this.mPendingSavedState.f2380b;
                    } else {
                        w0Var2.f2337c = this.mOrientationHelper.k() + this.mPendingSavedState.f2380b;
                    }
                } else if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View viewFindViewByPosition2 = findViewByPosition(i18);
                    if (viewFindViewByPosition2 == null) {
                        if (getChildCount() > 0) {
                            w0Var2.f2338d = (this.mPendingScrollPosition < getPosition(getChildAt(0))) == this.mShouldReverseLayout;
                        }
                        w0Var2.a();
                    } else if (this.mOrientationHelper.c(viewFindViewByPosition2) > this.mOrientationHelper.l()) {
                        w0Var2.a();
                    } else if (this.mOrientationHelper.e(viewFindViewByPosition2) - this.mOrientationHelper.k() < 0) {
                        w0Var2.f2337c = this.mOrientationHelper.k();
                        w0Var2.f2338d = false;
                    } else if (this.mOrientationHelper.g() - this.mOrientationHelper.b(viewFindViewByPosition2) < 0) {
                        w0Var2.f2337c = this.mOrientationHelper.g();
                        w0Var2.f2338d = true;
                    } else {
                        w0Var2.f2337c = w0Var2.f2338d ? this.mOrientationHelper.m() + this.mOrientationHelper.b(viewFindViewByPosition2) : this.mOrientationHelper.e(viewFindViewByPosition2);
                    }
                } else {
                    boolean z13 = this.mShouldReverseLayout;
                    w0Var2.f2338d = z13;
                    if (z13) {
                        w0Var2.f2337c = this.mOrientationHelper.g() - this.mPendingScrollPositionOffset;
                    } else {
                        w0Var2.f2337c = this.mOrientationHelper.k() + this.mPendingScrollPositionOffset;
                    }
                }
                this.mAnchorInfo.f2339e = true;
            }
        } else if (focusedChild != null && (this.mOrientationHelper.e(focusedChild) >= this.mOrientationHelper.g() || this.mOrientationHelper.b(focusedChild) <= this.mOrientationHelper.k())) {
            this.mAnchorInfo.c(getPosition(focusedChild), focusedChild);
        }
        y0 y0Var = this.mLayoutState;
        y0Var.f2369f = y0Var.f2373j >= 0 ? 1 : -1;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(n2Var, iArr);
        int iK2 = this.mOrientationHelper.k() + Math.max(0, this.mReusableIntPair[0]);
        int iH = this.mOrientationHelper.h() + Math.max(0, this.mReusableIntPair[1]);
        if (n2Var.f2205g && (i15 = this.mPendingScrollPosition) != -1 && this.mPendingScrollPositionOffset != Integer.MIN_VALUE && (viewFindViewByPosition = findViewByPosition(i15)) != null) {
            if (this.mShouldReverseLayout) {
                iG = this.mOrientationHelper.g() - this.mOrientationHelper.b(viewFindViewByPosition);
                iE = this.mPendingScrollPositionOffset;
            } else {
                iE = this.mOrientationHelper.e(viewFindViewByPosition) - this.mOrientationHelper.k();
                iG = this.mPendingScrollPositionOffset;
            }
            int i19 = iG - iE;
            if (i19 > 0) {
                iK2 += i19;
            } else {
                iH -= i19;
            }
        }
        w0 w0Var3 = this.mAnchorInfo;
        if (!w0Var3.f2338d ? !this.mShouldReverseLayout : this.mShouldReverseLayout) {
            i17 = 1;
        }
        onAnchorReady(g2Var, n2Var, w0Var3, i17);
        detachAndScrapAttachedViews(g2Var);
        this.mLayoutState.l = resolveIsInfinite();
        this.mLayoutState.getClass();
        this.mLayoutState.f2372i = 0;
        w0 w0Var4 = this.mAnchorInfo;
        if (w0Var4.f2338d) {
            n(w0Var4.f2336b, w0Var4.f2337c);
            y0 y0Var2 = this.mLayoutState;
            y0Var2.f2371h = iK2;
            fill(g2Var, y0Var2, n2Var, false);
            y0 y0Var3 = this.mLayoutState;
            i12 = y0Var3.f2365b;
            int i20 = y0Var3.f2367d;
            int i21 = y0Var3.f2366c;
            if (i21 > 0) {
                iH += i21;
            }
            w0 w0Var5 = this.mAnchorInfo;
            m(w0Var5.f2336b, w0Var5.f2337c);
            y0 y0Var4 = this.mLayoutState;
            y0Var4.f2371h = iH;
            y0Var4.f2367d += y0Var4.f2368e;
            fill(g2Var, y0Var4, n2Var, false);
            y0 y0Var5 = this.mLayoutState;
            i11 = y0Var5.f2365b;
            int i22 = y0Var5.f2366c;
            if (i22 > 0) {
                n(i20, i12);
                y0 y0Var6 = this.mLayoutState;
                y0Var6.f2371h = i22;
                fill(g2Var, y0Var6, n2Var, false);
                i12 = this.mLayoutState.f2365b;
            }
        } else {
            m(w0Var4.f2336b, w0Var4.f2337c);
            y0 y0Var7 = this.mLayoutState;
            y0Var7.f2371h = iH;
            fill(g2Var, y0Var7, n2Var, false);
            y0 y0Var8 = this.mLayoutState;
            i11 = y0Var8.f2365b;
            int i23 = y0Var8.f2367d;
            int i24 = y0Var8.f2366c;
            if (i24 > 0) {
                iK2 += i24;
            }
            w0 w0Var6 = this.mAnchorInfo;
            n(w0Var6.f2336b, w0Var6.f2337c);
            y0 y0Var9 = this.mLayoutState;
            y0Var9.f2371h = iK2;
            y0Var9.f2367d += y0Var9.f2368e;
            fill(g2Var, y0Var9, n2Var, false);
            y0 y0Var10 = this.mLayoutState;
            int i25 = y0Var10.f2365b;
            int i26 = y0Var10.f2366c;
            if (i26 > 0) {
                m(i23, i11);
                y0 y0Var11 = this.mLayoutState;
                y0Var11.f2371h = i26;
                fill(g2Var, y0Var11, n2Var, false);
                i11 = this.mLayoutState.f2365b;
            }
            i12 = i25;
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout ^ this.mStackFromEnd) {
                int iD2 = d(i11, g2Var, n2Var, true);
                i13 = i12 + iD2;
                i14 = i11 + iD2;
                iD = e(i13, g2Var, n2Var, false);
            } else {
                int iE3 = e(i12, g2Var, n2Var, true);
                i13 = i12 + iE3;
                i14 = i11 + iE3;
                iD = d(i14, g2Var, n2Var, false);
            }
            i12 = i13 + iD;
            i11 = i14 + iD;
        }
        if (n2Var.f2209k && getChildCount() != 0 && !n2Var.f2205g && supportsPredictiveItemAnimations()) {
            List list = g2Var.f2133d;
            int size = list.size();
            int position = getPosition(getChildAt(0));
            int iC = 0;
            int iC2 = 0;
            for (int i27 = 0; i27 < size; i27++) {
                RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) list.get(i27);
                if (!viewHolder.isRemoved()) {
                    if ((viewHolder.getLayoutPosition() < position) != this.mShouldReverseLayout) {
                        iC += this.mOrientationHelper.c(viewHolder.itemView);
                    } else {
                        iC2 += this.mOrientationHelper.c(viewHolder.itemView);
                    }
                }
            }
            this.mLayoutState.f2374k = list;
            if (iC > 0) {
                n(getPosition(g()), i12);
                y0 y0Var12 = this.mLayoutState;
                y0Var12.f2371h = iC;
                y0Var12.f2366c = 0;
                y0Var12.a(null);
                fill(g2Var, this.mLayoutState, n2Var, false);
            }
            if (iC2 > 0) {
                m(getPosition(f()), i11);
                y0 y0Var13 = this.mLayoutState;
                y0Var13.f2371h = iC2;
                y0Var13.f2366c = 0;
                y0Var13.a(null);
                fill(g2Var, this.mLayoutState, n2Var, false);
            }
            this.mLayoutState.f2374k = null;
        }
        if (n2Var.f2205g) {
            this.mAnchorInfo.d();
        } else {
            f1 f1Var = this.mOrientationHelper;
            f1Var.f2112b = f1Var.l();
        }
        this.mLastStackFromEnd = this.mStackFromEnd;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onLayoutCompleted(n2 n2Var) {
        super.onLayoutCompleted(n2Var);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof z0) {
            z0 z0Var = (z0) parcelable;
            this.mPendingSavedState = z0Var;
            if (this.mPendingScrollPosition != -1) {
                z0Var.f2379a = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public Parcelable onSaveInstanceState() {
        z0 z0Var = this.mPendingSavedState;
        if (z0Var != null) {
            return new z0(z0Var);
        }
        z0 z0Var2 = new z0();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            z0Var2.f2381c = z;
            if (z) {
                View viewF = f();
                z0Var2.f2380b = this.mOrientationHelper.g() - this.mOrientationHelper.b(viewF);
                z0Var2.f2379a = getPosition(viewF);
            } else {
                View viewG = g();
                z0Var2.f2379a = getPosition(viewG);
                z0Var2.f2380b = this.mOrientationHelper.e(viewG) - this.mOrientationHelper.k();
            }
        } else {
            z0Var2.f2379a = -1;
        }
        return z0Var2;
    }

    @Override // androidx.recyclerview.widget.t0
    public void prepareForDrop(View view, View view2, int i10, int i11) {
        assertNotInLayoutOrScroll("Cannot drop a view during a scroll or layout calculation");
        ensureLayoutState();
        k();
        int position = getPosition(view);
        int position2 = getPosition(view2);
        char c7 = position < position2 ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            if (c7 == 1) {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.g() - (this.mOrientationHelper.c(view) + this.mOrientationHelper.e(view2)));
                return;
            } else {
                scrollToPositionWithOffset(position2, this.mOrientationHelper.g() - this.mOrientationHelper.b(view2));
                return;
            }
        }
        if (c7 == 65535) {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.e(view2));
        } else {
            scrollToPositionWithOffset(position2, this.mOrientationHelper.b(view2) - this.mOrientationHelper.c(view));
        }
    }

    public boolean resolveIsInfinite() {
        return this.mOrientationHelper.i() == 0 && this.mOrientationHelper.f() == 0;
    }

    public int scrollBy(int i10, g2 g2Var, n2 n2Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f2364a = true;
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        l(i11, iAbs, true, n2Var);
        y0 y0Var = this.mLayoutState;
        int iFill = fill(g2Var, y0Var, n2Var, false) + y0Var.f2370g;
        if (iFill < 0) {
            return 0;
        }
        if (iAbs > iFill) {
            i10 = i11 * iFill;
        }
        this.mOrientationHelper.p(-i10);
        this.mLayoutState.f2373j = i10;
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i10, g2Var, n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        z0 z0Var = this.mPendingSavedState;
        if (z0Var != null) {
            z0Var.f2379a = -1;
        }
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        z0 z0Var = this.mPendingSavedState;
        if (z0Var != null) {
            z0Var.f2379a = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i10, g2Var, n2Var);
    }

    public void setInitialPrefetchItemCount(int i10) {
        this.mInitialPrefetchItemCount = i10;
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException(da.b.a(i10, "invalid orientation:"));
        }
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mOrientation || this.mOrientationHelper == null) {
            f1 f1VarA = f1.a(this, i10);
            this.mOrientationHelper = f1VarA;
            this.mAnchorInfo.f2335a = f1VarA;
            this.mOrientation = i10;
            requestLayout();
        }
    }

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (z == this.mReverseLayout) {
            return;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public void setSmoothScrollbarEnabled(boolean z) {
        this.mSmoothScrollbarEnabled = z;
    }

    public void setStackFromEnd(boolean z) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z) {
            return;
        }
        this.mStackFromEnd = z;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean shouldMeasureTwice() {
        return (getHeightMode() == 1073741824 || getWidthMode() == 1073741824 || !hasFlexibleChildInBothOrientations()) ? false : true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    @SuppressLint({"UnknownNullness"})
    public void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        a1 a1Var = new a1(recyclerView.getContext());
        a1Var.setTargetPosition(i10);
        startSmoothScroll(a1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public void validateChildOrder() {
        getChildCount();
        if (getChildCount() < 1) {
            return;
        }
        int position = getPosition(getChildAt(0));
        int iE = this.mOrientationHelper.e(getChildAt(0));
        if (this.mShouldReverseLayout) {
            for (int i10 = 1; i10 < getChildCount(); i10++) {
                View childAt = getChildAt(i10);
                int position2 = getPosition(childAt);
                int iE2 = this.mOrientationHelper.e(childAt);
                if (position2 < position) {
                    h();
                    StringBuilder sb2 = new StringBuilder("detected invalid position. loc invalid? ");
                    sb2.append(iE2 < iE);
                    throw new RuntimeException(sb2.toString());
                }
                if (iE2 > iE) {
                    h();
                    throw new RuntimeException("detected invalid location");
                }
            }
            return;
        }
        for (int i11 = 1; i11 < getChildCount(); i11++) {
            View childAt2 = getChildAt(i11);
            int position3 = getPosition(childAt2);
            int iE3 = this.mOrientationHelper.e(childAt2);
            if (position3 < position) {
                h();
                StringBuilder sb3 = new StringBuilder("detected invalid position. loc invalid? ");
                sb3.append(iE3 < iE);
                throw new RuntimeException(sb3.toString());
            }
            if (iE3 < iE) {
                h();
                throw new RuntimeException("detected invalid location");
            }
        }
    }

    public LinearLayoutManager(int i10, boolean z) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new w0();
        this.mLayoutChunkResult = new x0();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i10);
        setReverseLayout(z);
    }

    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new w0();
        this.mLayoutChunkResult = new x0();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        z1 properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f2382a);
        setReverseLayout(properties.f2384c);
        setStackFromEnd(properties.f2385d);
    }
}

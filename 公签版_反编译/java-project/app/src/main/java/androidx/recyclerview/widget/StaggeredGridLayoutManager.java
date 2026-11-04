package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
import java.util.BitSet;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends RecyclerView.LayoutManager implements l2 {
    static final boolean DEBUG = false;

    @Deprecated
    public static final int GAP_HANDLING_LAZY = 1;
    public static final int GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS = 2;
    public static final int GAP_HANDLING_NONE = 0;
    public static final int HORIZONTAL = 0;
    static final int INVALID_OFFSET = Integer.MIN_VALUE;
    private static final float MAX_SCROLL_FACTOR = 0.33333334f;
    private static final String TAG = "StaggeredGridLManager";
    public static final int VERTICAL = 1;
    private int mFullSizeSpec;
    private boolean mLastLayoutFromEnd;
    private boolean mLastLayoutRTL;
    private final v0 mLayoutState;
    private int mOrientation;
    private b3 mPendingSavedState;
    private int[] mPrefetchDistances;
    f1 mPrimaryOrientation;
    private BitSet mRemainingSpans;
    f1 mSecondaryOrientation;
    private int mSizePerSpan;
    c3[] mSpans;
    private int mSpanCount = -1;
    boolean mReverseLayout = false;
    boolean mShouldReverseLayout = false;
    int mPendingScrollPosition = -1;
    int mPendingScrollPositionOffset = Integer.MIN_VALUE;
    a3 mLazySpanLookup = new a3();
    private int mGapStrategy = 2;
    private final Rect mTmpRect = new Rect();
    private final x2 mAnchorInfo = new x2(this);
    private boolean mLaidOutInvalidFullSpan = false;
    private boolean mSmoothScrollbarEnabled = true;
    private final Runnable mCheckForGapsRunnable = new z(1, this);

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        z1 properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        setOrientation(properties.f2382a);
        setSpanCount(properties.f2383b);
        setReverseLayout(properties.f2384c);
        this.mLayoutState = new v0();
        this.mPrimaryOrientation = f1.a(this, this.mOrientation);
        this.mSecondaryOrientation = f1.a(this, 1 - this.mOrientation);
    }

    public static int v(int i10, int i11, int i12) {
        if (i11 == 0 && i12 == 0) {
            return i10;
        }
        int mode = View.MeasureSpec.getMode(i10);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i10) - i11) - i12), mode) : i10;
    }

    public final int a(int i10) {
        if (getChildCount() == 0) {
            return this.mShouldReverseLayout ? 1 : -1;
        }
        return (i10 < getFirstChildPosition()) != this.mShouldReverseLayout ? -1 : 1;
    }

    public boolean areAllEndsEqual() {
        int iH = this.mSpans[0].h(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            if (this.mSpans[i10].h(Integer.MIN_VALUE) != iH) {
                return false;
            }
        }
        return true;
    }

    public boolean areAllStartsEqual() {
        int iJ = this.mSpans[0].j(Integer.MIN_VALUE);
        for (int i10 = 1; i10 < this.mSpanCount; i10++) {
            if (this.mSpans[i10].j(Integer.MIN_VALUE) != iJ) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final int b(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return t2.a(n2Var, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    public final int c(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return t2.b(n2Var, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    public boolean checkForGaps() {
        int firstChildPosition;
        int lastChildPosition;
        if (getChildCount() == 0 || this.mGapStrategy == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.mShouldReverseLayout) {
            firstChildPosition = getLastChildPosition();
            lastChildPosition = getFirstChildPosition();
        } else {
            firstChildPosition = getFirstChildPosition();
            lastChildPosition = getLastChildPosition();
        }
        if (firstChildPosition == 0 && hasGapsToFix() != null) {
            this.mLazySpanLookup.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.mLaidOutInvalidFullSpan) {
            return false;
        }
        int i10 = this.mShouldReverseLayout ? -1 : 1;
        int i11 = lastChildPosition + 1;
        z2 z2VarE = this.mLazySpanLookup.e(firstChildPosition, i11, i10);
        if (z2VarE == null) {
            this.mLaidOutInvalidFullSpan = false;
            this.mLazySpanLookup.d(i11);
            return false;
        }
        z2 z2VarE2 = this.mLazySpanLookup.e(firstChildPosition, z2VarE.f2386a, i10 * (-1));
        if (z2VarE2 == null) {
            this.mLazySpanLookup.d(z2VarE.f2386a);
        } else {
            this.mLazySpanLookup.d(z2VarE2.f2386a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof y2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void collectAdjacentPrefetchPositions(int i10, int i11, n2 n2Var, y1 y1Var) {
        int iH;
        int iJ;
        if (this.mOrientation != 0) {
            i10 = i11;
        }
        if (getChildCount() == 0 || i10 == 0) {
            return;
        }
        prepareLayoutStateForDelta(i10, n2Var);
        int[] iArr = this.mPrefetchDistances;
        if (iArr == null || iArr.length < this.mSpanCount) {
            this.mPrefetchDistances = new int[this.mSpanCount];
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.mSpanCount; i13++) {
            v0 v0Var = this.mLayoutState;
            if (v0Var.f2323d == -1) {
                iH = v0Var.f2325f;
                iJ = this.mSpans[i13].j(iH);
            } else {
                iH = this.mSpans[i13].h(v0Var.f2326g);
                iJ = this.mLayoutState.f2326g;
            }
            int i14 = iH - iJ;
            if (i14 >= 0) {
                this.mPrefetchDistances[i12] = i14;
                i12++;
            }
        }
        Arrays.sort(this.mPrefetchDistances, 0, i12);
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = this.mLayoutState.f2322c;
            if (i16 < 0 || i16 >= n2Var.b()) {
                return;
            }
            ((e0) y1Var).a(this.mLayoutState.f2322c, this.mPrefetchDistances[i15]);
            v0 v0Var2 = this.mLayoutState;
            v0Var2.f2322c += v0Var2.f2323d;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(n2 n2Var) {
        return b(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(n2 n2Var) {
        return c(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(n2 n2Var) {
        return d(n2Var);
    }

    @Override // androidx.recyclerview.widget.l2
    public PointF computeScrollVectorForPosition(int i10) {
        int iA = a(i10);
        PointF pointF = new PointF();
        if (iA == 0) {
            return null;
        }
        if (this.mOrientation == 0) {
            pointF.x = iA;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iA;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(n2 n2Var) {
        return b(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(n2 n2Var) {
        return c(n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(n2 n2Var) {
        return d(n2Var);
    }

    public final int d(n2 n2Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        return t2.c(n2Var, this.mPrimaryOrientation, findFirstVisibleItemClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleItemClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r10v13 */
    public final int e(g2 g2Var, v0 v0Var, n2 n2Var) {
        c3 c3Var;
        int i10;
        int i11;
        int i12;
        int iC;
        int iC2;
        y2 y2Var;
        int i13;
        int i14;
        int i15;
        char c7 = 0;
        ?? r10 = 1;
        this.mRemainingSpans.set(0, this.mSpanCount, true);
        int i16 = this.mLayoutState.f2328i ? v0Var.f2324e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : v0Var.f2324e == 1 ? v0Var.f2326g + v0Var.f2321b : v0Var.f2325f - v0Var.f2321b;
        s(v0Var.f2324e, i16);
        int iG = this.mShouldReverseLayout ? this.mPrimaryOrientation.g() : this.mPrimaryOrientation.k();
        boolean z = false;
        while (true) {
            int i17 = v0Var.f2322c;
            if (!(i17 >= 0 && i17 < n2Var.b()) || (!this.mLayoutState.f2328i && this.mRemainingSpans.isEmpty())) {
                break;
            }
            View viewD = g2Var.d(v0Var.f2322c);
            v0Var.f2322c += v0Var.f2323d;
            y2 y2Var2 = (y2) viewD.getLayoutParams();
            int viewLayoutPosition = y2Var2.getViewLayoutPosition();
            int[] iArr = this.mLazySpanLookup.f2028a;
            int i18 = (iArr == null || viewLayoutPosition >= iArr.length) ? -1 : iArr[viewLayoutPosition];
            boolean z4 = i18 == -1;
            if (z4) {
                if (y2Var2.f2376b) {
                    c3Var = this.mSpans[c7];
                } else {
                    if (m(v0Var.f2324e)) {
                        i14 = this.mSpanCount - r10;
                        i13 = -1;
                        i15 = -1;
                    } else {
                        i13 = this.mSpanCount;
                        i14 = 0;
                        i15 = 1;
                    }
                    c3 c3Var2 = null;
                    if (v0Var.f2324e == r10) {
                        int iK = this.mPrimaryOrientation.k();
                        int i19 = Integer.MAX_VALUE;
                        while (i14 != i13) {
                            c3 c3Var3 = this.mSpans[i14];
                            int iH = c3Var3.h(iK);
                            if (iH < i19) {
                                c3Var2 = c3Var3;
                                i19 = iH;
                            }
                            i14 += i15;
                        }
                    } else {
                        int iG2 = this.mPrimaryOrientation.g();
                        int i20 = Integer.MIN_VALUE;
                        while (i14 != i13) {
                            c3 c3Var4 = this.mSpans[i14];
                            int iJ = c3Var4.j(iG2);
                            if (iJ > i20) {
                                c3Var2 = c3Var4;
                                i20 = iJ;
                            }
                            i14 += i15;
                        }
                    }
                    c3Var = c3Var2;
                }
                a3 a3Var = this.mLazySpanLookup;
                a3Var.c(viewLayoutPosition);
                a3Var.f2028a[viewLayoutPosition] = c3Var.f2056e;
            } else {
                c3Var = this.mSpans[i18];
            }
            c3 c3Var5 = c3Var;
            y2Var2.f2375a = c3Var5;
            if (v0Var.f2324e == r10) {
                addView(viewD);
            } else {
                addView(viewD, 0);
            }
            if (y2Var2.f2376b) {
                if (this.mOrientation == r10) {
                    k(viewD, this.mFullSizeSpec, RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) y2Var2).height, r10));
                } else {
                    k(viewD, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) y2Var2).width, r10), this.mFullSizeSpec);
                }
            } else if (this.mOrientation == r10) {
                k(viewD, RecyclerView.LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) y2Var2).width, false), RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) y2Var2).height, r10));
            } else {
                k(viewD, RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) y2Var2).width, r10), RecyclerView.LayoutManager.getChildMeasureSpec(this.mSizePerSpan, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) y2Var2).height, false));
            }
            if (v0Var.f2324e == r10) {
                int iH2 = y2Var2.f2376b ? h(iG) : c3Var5.h(iG);
                int iC3 = this.mPrimaryOrientation.c(viewD) + iH2;
                if (z4 && y2Var2.f2376b) {
                    z2 z2Var = new z2();
                    z2Var.f2388c = new int[this.mSpanCount];
                    for (int i21 = 0; i21 < this.mSpanCount; i21++) {
                        z2Var.f2388c[i21] = iH2 - this.mSpans[i21].h(iH2);
                    }
                    z2Var.f2387b = -1;
                    z2Var.f2386a = viewLayoutPosition;
                    this.mLazySpanLookup.a(z2Var);
                }
                i11 = iH2;
                i10 = iC3;
            } else {
                int i22 = y2Var2.f2376b ? i(iG) : c3Var5.j(iG);
                int iC4 = i22 - this.mPrimaryOrientation.c(viewD);
                if (z4 && y2Var2.f2376b) {
                    z2 z2Var2 = new z2();
                    z2Var2.f2388c = new int[this.mSpanCount];
                    for (int i23 = 0; i23 < this.mSpanCount; i23++) {
                        z2Var2.f2388c[i23] = this.mSpans[i23].j(i22) - i22;
                    }
                    z2Var2.f2387b = 1;
                    z2Var2.f2386a = viewLayoutPosition;
                    this.mLazySpanLookup.a(z2Var2);
                }
                i10 = i22;
                i11 = iC4;
            }
            if (!y2Var2.f2376b || v0Var.f2323d != -1) {
                i12 = 1;
            } else if (z4) {
                i12 = 1;
                this.mLaidOutInvalidFullSpan = true;
            } else {
                i12 = 1;
                if (!(v0Var.f2324e == 1 ? areAllEndsEqual() : areAllStartsEqual())) {
                    z2 z2VarF = this.mLazySpanLookup.f(viewLayoutPosition);
                    if (z2VarF != null) {
                        z2VarF.f2389d = true;
                    }
                    this.mLaidOutInvalidFullSpan = true;
                }
            }
            if (v0Var.f2324e == i12) {
                if (y2Var2.f2376b) {
                    for (int i24 = this.mSpanCount - i12; i24 >= 0; i24--) {
                        this.mSpans[i24].a(viewD);
                    }
                } else {
                    y2Var2.f2375a.a(viewD);
                }
            } else if (y2Var2.f2376b) {
                for (int i25 = this.mSpanCount - 1; i25 >= 0; i25--) {
                    this.mSpans[i25].m(viewD);
                }
            } else {
                y2Var2.f2375a.m(viewD);
            }
            if (isLayoutRTL() && this.mOrientation == 1) {
                int iG3 = y2Var2.f2376b ? this.mSecondaryOrientation.g() : this.mSecondaryOrientation.g() - (((this.mSpanCount - 1) - c3Var5.f2056e) * this.mSizePerSpan);
                iC2 = iG3;
                iC = iG3 - this.mSecondaryOrientation.c(viewD);
            } else {
                int iK2 = y2Var2.f2376b ? this.mSecondaryOrientation.k() : (c3Var5.f2056e * this.mSizePerSpan) + this.mSecondaryOrientation.k();
                iC = iK2;
                iC2 = this.mSecondaryOrientation.c(viewD) + iK2;
            }
            if (this.mOrientation == 1) {
                layoutDecoratedWithMargins(viewD, iC, i11, iC2, i10);
                y2Var = y2Var2;
            } else {
                int i26 = i11;
                int i27 = i10;
                y2Var = y2Var2;
                layoutDecoratedWithMargins(viewD, i26, iC, i27, iC2);
            }
            if (y2Var.f2376b) {
                s(this.mLayoutState.f2324e, i16);
            } else {
                u(c3Var5, this.mLayoutState.f2324e, i16);
            }
            n(g2Var, this.mLayoutState);
            if (this.mLayoutState.f2327h && viewD.hasFocusable()) {
                if (y2Var.f2376b) {
                    this.mRemainingSpans.clear();
                } else {
                    this.mRemainingSpans.set(c3Var5.f2056e, false);
                }
            }
            z = true;
            c7 = 0;
            r10 = 1;
        }
        if (!z) {
            n(g2Var, this.mLayoutState);
        }
        int iK3 = this.mLayoutState.f2324e == -1 ? this.mPrimaryOrientation.k() - i(this.mPrimaryOrientation.k()) : h(this.mPrimaryOrientation.g()) - this.mPrimaryOrientation.g();
        if (iK3 > 0) {
            return Math.min(v0Var.f2321b, iK3);
        }
        return 0;
    }

    public final void f(g2 g2Var, n2 n2Var, boolean z) {
        int iG;
        int iH = h(Integer.MIN_VALUE);
        if (iH != Integer.MIN_VALUE && (iG = this.mPrimaryOrientation.g() - iH) > 0) {
            int i10 = iG - (-scrollBy(-iG, g2Var, n2Var));
            if (!z || i10 <= 0) {
                return;
            }
            this.mPrimaryOrientation.p(i10);
        }
    }

    public int[] findFirstCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            c3 c3Var = this.mSpans[i10];
            iArr[i10] = c3Var.f2057f.mReverseLayout ? c3Var.g(r3.size() - 1, -1, true, true, false) : c3Var.g(0, c3Var.f2052a.size(), true, true, false);
        }
        return iArr;
    }

    public View findFirstVisibleItemClosestToEnd(boolean z) {
        int iK = this.mPrimaryOrientation.k();
        int iG = this.mPrimaryOrientation.g();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iE = this.mPrimaryOrientation.e(childAt);
            int iB = this.mPrimaryOrientation.b(childAt);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public View findFirstVisibleItemClosestToStart(boolean z) {
        int iK = this.mPrimaryOrientation.k();
        int iG = this.mPrimaryOrientation.g();
        int childCount = getChildCount();
        View view = null;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            int iE = this.mPrimaryOrientation.e(childAt);
            if (this.mPrimaryOrientation.b(childAt) > iK && iE < iG) {
                if (iE >= iK || !z) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public int findFirstVisibleItemPositionInt() {
        View viewFindFirstVisibleItemClosestToEnd = this.mShouldReverseLayout ? findFirstVisibleItemClosestToEnd(true) : findFirstVisibleItemClosestToStart(true);
        if (viewFindFirstVisibleItemClosestToEnd == null) {
            return -1;
        }
        return getPosition(viewFindFirstVisibleItemClosestToEnd);
    }

    public int[] findFirstVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            c3 c3Var = this.mSpans[i10];
            iArr[i10] = c3Var.f2057f.mReverseLayout ? c3Var.g(r3.size() - 1, -1, false, true, false) : c3Var.g(0, c3Var.f2052a.size(), false, true, false);
        }
        return iArr;
    }

    public int[] findLastCompletelyVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            c3 c3Var = this.mSpans[i10];
            iArr[i10] = c3Var.f2057f.mReverseLayout ? c3Var.g(0, c3Var.f2052a.size(), true, true, false) : c3Var.g(r3.size() - 1, -1, true, true, false);
        }
        return iArr;
    }

    public int[] findLastVisibleItemPositions(int[] iArr) {
        if (iArr == null) {
            iArr = new int[this.mSpanCount];
        } else if (iArr.length < this.mSpanCount) {
            throw new IllegalArgumentException("Provided int[]'s size must be more than or equal to span count. Expected:" + this.mSpanCount + ", array size:" + iArr.length);
        }
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            c3 c3Var = this.mSpans[i10];
            iArr[i10] = c3Var.f2057f.mReverseLayout ? c3Var.g(0, c3Var.f2052a.size(), false, true, false) : c3Var.g(r3.size() - 1, -1, false, true, false);
        }
        return iArr;
    }

    public final void g(g2 g2Var, n2 n2Var, boolean z) {
        int iK;
        int i10 = i(Integer.MAX_VALUE);
        if (i10 != Integer.MAX_VALUE && (iK = i10 - this.mPrimaryOrientation.k()) > 0) {
            int iScrollBy = iK - scrollBy(iK, g2Var, n2Var);
            if (!z || iScrollBy <= 0) {
                return;
            }
            this.mPrimaryOrientation.p(-iScrollBy);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new y2(-2, -1) : new y2(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new y2(context, attributeSet);
    }

    public int getFirstChildPosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public int getGapStrategy() {
        return this.mGapStrategy;
    }

    public int getLastChildPosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean getReverseLayout() {
        return this.mReverseLayout;
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public final int h(int i10) {
        int iH = this.mSpans[0].h(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iH2 = this.mSpans[i11].h(i10);
            if (iH2 > iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View hasGapsToFix() {
        int i10;
        boolean z;
        boolean z4;
        boolean z10;
        int childCount = getChildCount();
        int i11 = childCount - 1;
        BitSet bitSet = new BitSet(this.mSpanCount);
        bitSet.set(0, this.mSpanCount, true);
        char c7 = (this.mOrientation == 1 && isLayoutRTL()) ? (char) 1 : (char) 65535;
        if (this.mShouldReverseLayout) {
            childCount = -1;
        } else {
            i11 = 0;
        }
        int i12 = i11 < childCount ? 1 : -1;
        while (i11 != childCount) {
            View childAt = getChildAt(i11);
            y2 y2Var = (y2) childAt.getLayoutParams();
            if (bitSet.get(y2Var.f2375a.f2056e)) {
                c3 c3Var = y2Var.f2375a;
                if (this.mShouldReverseLayout) {
                    int i13 = c3Var.f2054c;
                    if (i13 == Integer.MIN_VALUE) {
                        c3Var.b();
                        i13 = c3Var.f2054c;
                    }
                    if (i13 < this.mPrimaryOrientation.g()) {
                        z4 = ((y2) ((View) ta.q.h(1, c3Var.f2052a)).getLayoutParams()).f2376b;
                        z10 = !z4;
                    }
                    z10 = false;
                } else {
                    int i14 = c3Var.f2053b;
                    if (i14 == Integer.MIN_VALUE) {
                        c3Var.c();
                        i14 = c3Var.f2053b;
                    }
                    if (i14 > this.mPrimaryOrientation.k()) {
                        z4 = ((y2) ((View) c3Var.f2052a.get(0)).getLayoutParams()).f2376b;
                        z10 = !z4;
                    }
                    z10 = false;
                }
                if (z10) {
                    return childAt;
                }
                bitSet.clear(y2Var.f2375a.f2056e);
            }
            if (!y2Var.f2376b && (i10 = i11 + i12) != childCount) {
                View childAt2 = getChildAt(i10);
                if (this.mShouldReverseLayout) {
                    int iB = this.mPrimaryOrientation.b(childAt);
                    int iB2 = this.mPrimaryOrientation.b(childAt2);
                    if (iB < iB2) {
                        return childAt;
                    }
                    z = iB == iB2;
                } else {
                    int iE = this.mPrimaryOrientation.e(childAt);
                    int iE2 = this.mPrimaryOrientation.e(childAt2);
                    if (iE > iE2) {
                        return childAt;
                    }
                    if (iE == iE2) {
                    }
                }
                if (z) {
                    if ((y2Var.f2375a.f2056e - ((y2) childAt2.getLayoutParams()).f2375a.f2056e < 0) != (c7 < 0)) {
                        return childAt;
                    }
                } else {
                    continue;
                }
            }
            i11 += i12;
        }
        return null;
    }

    public final int i(int i10) {
        int iJ = this.mSpans[0].j(i10);
        for (int i11 = 1; i11 < this.mSpanCount; i11++) {
            int iJ2 = this.mSpans[i11].j(i10);
            if (iJ2 < iJ) {
                iJ = iJ2;
            }
        }
        return iJ;
    }

    public void invalidateSpanAssignments() {
        this.mLazySpanLookup.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return this.mGapStrategy != 0;
    }

    public boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int i10, int i11, int i12) {
        int i13;
        int i14;
        int lastChildPosition = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
        if (i12 != 8) {
            i13 = i10 + i11;
        } else {
            if (i10 >= i11) {
                i13 = i10 + 1;
                i14 = i11;
                this.mLazySpanLookup.g(i14);
                if (i12 != 1) {
                    this.mLazySpanLookup.h(i10, i11);
                } else if (i12 == 2) {
                    this.mLazySpanLookup.i(i10, i11);
                } else if (i12 == 8) {
                    this.mLazySpanLookup.i(i10, 1);
                    this.mLazySpanLookup.h(i11, 1);
                }
                if (i13 > lastChildPosition) {
                    return;
                }
                if (i14 <= (this.mShouldReverseLayout ? getFirstChildPosition() : getLastChildPosition())) {
                    requestLayout();
                    return;
                }
                return;
            }
            i13 = i11 + 1;
        }
        i14 = i10;
        this.mLazySpanLookup.g(i14);
        if (i12 != 1) {
        }
        if (i13 > lastChildPosition) {
        }
    }

    public final void k(View view, int i10, int i11) {
        calculateItemDecorationsForChild(view, this.mTmpRect);
        y2 y2Var = (y2) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) y2Var).leftMargin;
        Rect rect = this.mTmpRect;
        int iV = v(i10, i12 + rect.left, ((ViewGroup.MarginLayoutParams) y2Var).rightMargin + rect.right);
        int i13 = ((ViewGroup.MarginLayoutParams) y2Var).topMargin;
        Rect rect2 = this.mTmpRect;
        int iV2 = v(i11, i13 + rect2.top, ((ViewGroup.MarginLayoutParams) y2Var).bottomMargin + rect2.bottom);
        if (shouldMeasureChild(view, iV, iV2, y2Var)) {
            view.measure(iV, iV2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x02be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(g2 g2Var, n2 n2Var, boolean z) {
        b3 b3Var;
        x2 x2Var = this.mAnchorInfo;
        if (!(this.mPendingSavedState == null && this.mPendingScrollPosition == -1) && n2Var.b() == 0) {
            removeAndRecycleAllViews(g2Var);
            x2Var.a();
            return;
        }
        boolean z4 = true;
        boolean z10 = (x2Var.f2357e && this.mPendingScrollPosition == -1 && this.mPendingSavedState == null) ? false : true;
        if (z10) {
            x2Var.a();
            b3 b3Var2 = this.mPendingSavedState;
            if (b3Var2 != null) {
                int i10 = b3Var2.f2042c;
                if (i10 > 0) {
                    if (i10 == this.mSpanCount) {
                        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                            this.mSpans[i11].d();
                            b3 b3Var3 = this.mPendingSavedState;
                            int iG = b3Var3.f2043d[i11];
                            if (iG != Integer.MIN_VALUE) {
                                iG += b3Var3.f2048i ? this.mPrimaryOrientation.g() : this.mPrimaryOrientation.k();
                            }
                            c3 c3Var = this.mSpans[i11];
                            c3Var.f2053b = iG;
                            c3Var.f2054c = iG;
                        }
                    } else {
                        b3Var2.f2043d = null;
                        b3Var2.f2042c = 0;
                        b3Var2.f2044e = 0;
                        b3Var2.f2045f = null;
                        b3Var2.f2046g = null;
                        b3Var2.f2040a = b3Var2.f2041b;
                    }
                }
                b3 b3Var4 = this.mPendingSavedState;
                this.mLastLayoutRTL = b3Var4.f2049j;
                setReverseLayout(b3Var4.f2047h);
                q();
                b3 b3Var5 = this.mPendingSavedState;
                int i12 = b3Var5.f2040a;
                if (i12 != -1) {
                    this.mPendingScrollPosition = i12;
                    x2Var.f2355c = b3Var5.f2048i;
                } else {
                    x2Var.f2355c = this.mShouldReverseLayout;
                }
                if (b3Var5.f2044e > 1) {
                    a3 a3Var = this.mLazySpanLookup;
                    a3Var.f2028a = b3Var5.f2045f;
                    a3Var.f2029b = b3Var5.f2046g;
                }
            } else {
                q();
                x2Var.f2355c = this.mShouldReverseLayout;
            }
            updateAnchorInfoForLayout(n2Var, x2Var);
            x2Var.f2357e = true;
        }
        if (this.mPendingSavedState == null && this.mPendingScrollPosition == -1 && (x2Var.f2355c != this.mLastLayoutFromEnd || isLayoutRTL() != this.mLastLayoutRTL)) {
            this.mLazySpanLookup.b();
            x2Var.f2356d = true;
        }
        if (getChildCount() > 0 && ((b3Var = this.mPendingSavedState) == null || b3Var.f2042c < 1)) {
            if (x2Var.f2356d) {
                for (int i13 = 0; i13 < this.mSpanCount; i13++) {
                    this.mSpans[i13].d();
                    int i14 = x2Var.f2354b;
                    if (i14 != Integer.MIN_VALUE) {
                        c3 c3Var2 = this.mSpans[i13];
                        c3Var2.f2053b = i14;
                        c3Var2.f2054c = i14;
                    }
                }
            } else if (z10 || this.mAnchorInfo.f2358f == null) {
                for (int i15 = 0; i15 < this.mSpanCount; i15++) {
                    c3 c3Var3 = this.mSpans[i15];
                    boolean z11 = this.mShouldReverseLayout;
                    int i16 = x2Var.f2354b;
                    int iH = z11 ? c3Var3.h(Integer.MIN_VALUE) : c3Var3.j(Integer.MIN_VALUE);
                    c3Var3.d();
                    if (iH != Integer.MIN_VALUE) {
                        StaggeredGridLayoutManager staggeredGridLayoutManager = c3Var3.f2057f;
                        if ((!z11 || iH >= staggeredGridLayoutManager.mPrimaryOrientation.g()) && (z11 || iH <= staggeredGridLayoutManager.mPrimaryOrientation.k())) {
                            if (i16 != Integer.MIN_VALUE) {
                                iH += i16;
                            }
                            c3Var3.f2054c = iH;
                            c3Var3.f2053b = iH;
                        }
                    }
                }
                x2 x2Var2 = this.mAnchorInfo;
                c3[] c3VarArr = this.mSpans;
                x2Var2.getClass();
                int length = c3VarArr.length;
                int[] iArr = x2Var2.f2358f;
                if (iArr == null || iArr.length < length) {
                    x2Var2.f2358f = new int[x2Var2.f2359g.mSpans.length];
                }
                for (int i17 = 0; i17 < length; i17++) {
                    x2Var2.f2358f[i17] = c3VarArr[i17].j(Integer.MIN_VALUE);
                }
            } else {
                for (int i18 = 0; i18 < this.mSpanCount; i18++) {
                    c3 c3Var4 = this.mSpans[i18];
                    c3Var4.d();
                    int i19 = this.mAnchorInfo.f2358f[i18];
                    c3Var4.f2053b = i19;
                    c3Var4.f2054c = i19;
                }
            }
        }
        detachAndScrapAttachedViews(g2Var);
        this.mLayoutState.f2320a = false;
        this.mLaidOutInvalidFullSpan = false;
        updateMeasureSpecs(this.mSecondaryOrientation.l());
        t(x2Var.f2353a, n2Var);
        if (x2Var.f2355c) {
            r(-1);
            e(g2Var, this.mLayoutState, n2Var);
            r(1);
            v0 v0Var = this.mLayoutState;
            v0Var.f2322c = x2Var.f2353a + v0Var.f2323d;
            e(g2Var, v0Var, n2Var);
        } else {
            r(1);
            e(g2Var, this.mLayoutState, n2Var);
            r(-1);
            v0 v0Var2 = this.mLayoutState;
            v0Var2.f2322c = x2Var.f2353a + v0Var2.f2323d;
            e(g2Var, v0Var2, n2Var);
        }
        if (this.mSecondaryOrientation.i() != 1073741824) {
            int childCount = getChildCount();
            float fMax = 0.0f;
            for (int i20 = 0; i20 < childCount; i20++) {
                View childAt = getChildAt(i20);
                float fC = this.mSecondaryOrientation.c(childAt);
                if (fC >= fMax) {
                    if (((y2) childAt.getLayoutParams()).f2376b) {
                        fC = (fC * 1.0f) / this.mSpanCount;
                    }
                    fMax = Math.max(fMax, fC);
                }
            }
            int i21 = this.mSizePerSpan;
            int iRound = Math.round(fMax * this.mSpanCount);
            if (this.mSecondaryOrientation.i() == Integer.MIN_VALUE) {
                iRound = Math.min(iRound, this.mSecondaryOrientation.l());
            }
            updateMeasureSpecs(iRound);
            if (this.mSizePerSpan != i21) {
                for (int i22 = 0; i22 < childCount; i22++) {
                    View childAt2 = getChildAt(i22);
                    y2 y2Var = (y2) childAt2.getLayoutParams();
                    if (!y2Var.f2376b) {
                        if (isLayoutRTL() && this.mOrientation == 1) {
                            int i23 = -((this.mSpanCount - 1) - y2Var.f2375a.f2056e);
                            childAt2.offsetLeftAndRight((this.mSizePerSpan * i23) - (i23 * i21));
                        } else {
                            int i24 = y2Var.f2375a.f2056e;
                            int i25 = this.mSizePerSpan * i24;
                            int i26 = i24 * i21;
                            if (this.mOrientation == 1) {
                                childAt2.offsetLeftAndRight(i25 - i26);
                            } else {
                                childAt2.offsetTopAndBottom(i25 - i26);
                            }
                        }
                    }
                }
            }
        }
        if (getChildCount() > 0) {
            if (this.mShouldReverseLayout) {
                f(g2Var, n2Var, true);
                g(g2Var, n2Var, false);
            } else {
                g(g2Var, n2Var, true);
                f(g2Var, n2Var, false);
            }
        }
        if (!z || n2Var.f2205g || this.mGapStrategy == 0 || getChildCount() <= 0 || (!this.mLaidOutInvalidFullSpan && hasGapsToFix() == null)) {
            z4 = false;
        } else {
            removeCallbacks(this.mCheckForGapsRunnable);
            if (!checkForGaps()) {
            }
        }
        if (n2Var.f2205g) {
            this.mAnchorInfo.a();
        }
        this.mLastLayoutFromEnd = x2Var.f2355c;
        this.mLastLayoutRTL = isLayoutRTL();
        if (z4) {
            this.mAnchorInfo.a();
            l(g2Var, n2Var, false);
        }
    }

    public final boolean m(int i10) {
        if (this.mOrientation == 0) {
            return (i10 == -1) != this.mShouldReverseLayout;
        }
        return ((i10 == -1) == this.mShouldReverseLayout) == isLayoutRTL();
    }

    public final void n(g2 g2Var, v0 v0Var) {
        if (!v0Var.f2320a || v0Var.f2328i) {
            return;
        }
        if (v0Var.f2321b == 0) {
            if (v0Var.f2324e == -1) {
                o(v0Var.f2326g, g2Var);
                return;
            } else {
                p(v0Var.f2325f, g2Var);
                return;
            }
        }
        int i10 = 1;
        if (v0Var.f2324e == -1) {
            int i11 = v0Var.f2325f;
            int iJ = this.mSpans[0].j(i11);
            while (i10 < this.mSpanCount) {
                int iJ2 = this.mSpans[i10].j(i11);
                if (iJ2 > iJ) {
                    iJ = iJ2;
                }
                i10++;
            }
            int i12 = i11 - iJ;
            o(i12 < 0 ? v0Var.f2326g : v0Var.f2326g - Math.min(i12, v0Var.f2321b), g2Var);
            return;
        }
        int i13 = v0Var.f2326g;
        int iH = this.mSpans[0].h(i13);
        while (i10 < this.mSpanCount) {
            int iH2 = this.mSpans[i10].h(i13);
            if (iH2 < iH) {
                iH = iH2;
            }
            i10++;
        }
        int i14 = iH - v0Var.f2326g;
        p(i14 < 0 ? v0Var.f2325f : Math.min(i14, v0Var.f2321b) + v0Var.f2325f, g2Var);
    }

    public final void o(int i10, g2 g2Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.mPrimaryOrientation.e(childAt) < i10 || this.mPrimaryOrientation.o(childAt) < i10) {
                return;
            }
            y2 y2Var = (y2) childAt.getLayoutParams();
            if (y2Var.f2376b) {
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    if (this.mSpans[i11].f2052a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                    this.mSpans[i12].k();
                }
            } else if (y2Var.f2375a.f2052a.size() == 1) {
                return;
            } else {
                y2Var.f2375a.k();
            }
            removeAndRecycleView(childAt, g2Var);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i10) {
        super.offsetChildrenHorizontal(i10);
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            c3 c3Var = this.mSpans[i11];
            int i12 = c3Var.f2053b;
            if (i12 != Integer.MIN_VALUE) {
                c3Var.f2053b = i12 + i10;
            }
            int i13 = c3Var.f2054c;
            if (i13 != Integer.MIN_VALUE) {
                c3Var.f2054c = i13 + i10;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i10) {
        super.offsetChildrenVertical(i10);
        for (int i11 = 0; i11 < this.mSpanCount; i11++) {
            c3 c3Var = this.mSpans[i11];
            int i12 = c3Var.f2053b;
            if (i12 != Integer.MIN_VALUE) {
                c3Var.f2053b = i12 + i10;
            }
            int i13 = c3Var.f2054c;
            if (i13 != Integer.MIN_VALUE) {
                c3Var.f2054c = i13 + i10;
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(m1 m1Var, m1 m1Var2) {
        this.mLazySpanLookup.b();
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].d();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
        super.onDetachedFromWindow(recyclerView, g2Var);
        removeCallbacks(this.mCheckForGapsRunnable);
        for (int i10 = 0; i10 < this.mSpanCount; i10++) {
            this.mSpans[i10].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004e  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i10, g2 g2Var, n2 n2Var) {
        View viewFindContainingItemView;
        int i11;
        View viewI;
        if (getChildCount() == 0 || (viewFindContainingItemView = findContainingItemView(view)) == null) {
            return null;
        }
        q();
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 17) {
                    if (i10 != 33) {
                        if (i10 == 66 ? this.mOrientation == 0 : !(i10 != 130 || this.mOrientation != 1)) {
                            i11 = 1;
                        }
                    } else if (this.mOrientation == 1) {
                        i11 = -1;
                    }
                    i11 = Integer.MIN_VALUE;
                } else if (this.mOrientation != 0) {
                    i11 = Integer.MIN_VALUE;
                }
            } else if (this.mOrientation != 1 && isLayoutRTL()) {
            }
        } else if (this.mOrientation != 1 && isLayoutRTL()) {
        }
        if (i11 == Integer.MIN_VALUE) {
            return null;
        }
        y2 y2Var = (y2) viewFindContainingItemView.getLayoutParams();
        boolean z = y2Var.f2376b;
        c3 c3Var = y2Var.f2375a;
        int lastChildPosition = i11 == 1 ? getLastChildPosition() : getFirstChildPosition();
        t(lastChildPosition, n2Var);
        r(i11);
        v0 v0Var = this.mLayoutState;
        v0Var.f2322c = v0Var.f2323d + lastChildPosition;
        v0Var.f2321b = (int) (this.mPrimaryOrientation.l() * MAX_SCROLL_FACTOR);
        v0 v0Var2 = this.mLayoutState;
        v0Var2.f2327h = true;
        v0Var2.f2320a = false;
        e(g2Var, v0Var2, n2Var);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        if (!z && (viewI = c3Var.i(lastChildPosition, i11)) != null && viewI != viewFindContainingItemView) {
            return viewI;
        }
        if (m(i11)) {
            for (int i12 = this.mSpanCount - 1; i12 >= 0; i12--) {
                View viewI2 = this.mSpans[i12].i(lastChildPosition, i11);
                if (viewI2 != null && viewI2 != viewFindContainingItemView) {
                    return viewI2;
                }
            }
        } else {
            for (int i13 = 0; i13 < this.mSpanCount; i13++) {
                View viewI3 = this.mSpans[i13].i(lastChildPosition, i11);
                if (viewI3 != null && viewI3 != viewFindContainingItemView) {
                    return viewI3;
                }
            }
        }
        boolean z4 = (this.mReverseLayout ^ true) == (i11 == -1);
        if (!z) {
            View viewFindViewByPosition = findViewByPosition(z4 ? c3Var.e() : c3Var.f());
            if (viewFindViewByPosition != null && viewFindViewByPosition != viewFindContainingItemView) {
                return viewFindViewByPosition;
            }
        }
        if (m(i11)) {
            for (int i14 = this.mSpanCount - 1; i14 >= 0; i14--) {
                if (i14 != c3Var.f2056e) {
                    View viewFindViewByPosition2 = findViewByPosition(z4 ? this.mSpans[i14].e() : this.mSpans[i14].f());
                    if (viewFindViewByPosition2 != null && viewFindViewByPosition2 != viewFindContainingItemView) {
                        return viewFindViewByPosition2;
                    }
                }
            }
        } else {
            for (int i15 = 0; i15 < this.mSpanCount; i15++) {
                View viewFindViewByPosition3 = findViewByPosition(z4 ? this.mSpans[i15].e() : this.mSpans[i15].f());
                if (viewFindViewByPosition3 != null && viewFindViewByPosition3 != viewFindContainingItemView) {
                    return viewFindViewByPosition3;
                }
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewFindFirstVisibleItemClosestToStart = findFirstVisibleItemClosestToStart(false);
            View viewFindFirstVisibleItemClosestToEnd = findFirstVisibleItemClosestToEnd(false);
            if (viewFindFirstVisibleItemClosestToStart == null || viewFindFirstVisibleItemClosestToEnd == null) {
                return;
            }
            int position = getPosition(viewFindFirstVisibleItemClosestToStart);
            int position2 = getPosition(viewFindFirstVisibleItemClosestToEnd);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        j(i10, i11, 1);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mLazySpanLookup.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        j(i10, i11, 8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        j(i10, i11, 2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        j(i10, i11, 4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        l(g2Var, n2Var, true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(n2 n2Var) {
        super.onLayoutCompleted(n2Var);
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo.a();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof b3) {
            b3 b3Var = (b3) parcelable;
            this.mPendingSavedState = b3Var;
            if (this.mPendingScrollPosition != -1) {
                b3Var.f2043d = null;
                b3Var.f2042c = 0;
                b3Var.f2040a = -1;
                b3Var.f2041b = -1;
                b3Var.f2043d = null;
                b3Var.f2042c = 0;
                b3Var.f2044e = 0;
                b3Var.f2045f = null;
                b3Var.f2046g = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        int iJ;
        int iK;
        int[] iArr;
        b3 b3Var = this.mPendingSavedState;
        if (b3Var != null) {
            return new b3(b3Var);
        }
        b3 b3Var2 = new b3();
        b3Var2.f2047h = this.mReverseLayout;
        b3Var2.f2048i = this.mLastLayoutFromEnd;
        b3Var2.f2049j = this.mLastLayoutRTL;
        a3 a3Var = this.mLazySpanLookup;
        if (a3Var == null || (iArr = a3Var.f2028a) == null) {
            b3Var2.f2044e = 0;
        } else {
            b3Var2.f2045f = iArr;
            b3Var2.f2044e = iArr.length;
            b3Var2.f2046g = a3Var.f2029b;
        }
        if (getChildCount() > 0) {
            b3Var2.f2040a = this.mLastLayoutFromEnd ? getLastChildPosition() : getFirstChildPosition();
            b3Var2.f2041b = findFirstVisibleItemPositionInt();
            int i10 = this.mSpanCount;
            b3Var2.f2042c = i10;
            b3Var2.f2043d = new int[i10];
            for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                if (this.mLastLayoutFromEnd) {
                    iJ = this.mSpans[i11].h(Integer.MIN_VALUE);
                    if (iJ != Integer.MIN_VALUE) {
                        iK = this.mPrimaryOrientation.g();
                        iJ -= iK;
                    }
                } else {
                    iJ = this.mSpans[i11].j(Integer.MIN_VALUE);
                    if (iJ != Integer.MIN_VALUE) {
                        iK = this.mPrimaryOrientation.k();
                        iJ -= iK;
                    }
                }
                b3Var2.f2043d[i11] = iJ;
            }
        } else {
            b3Var2.f2040a = -1;
            b3Var2.f2041b = -1;
            b3Var2.f2042c = 0;
        }
        return b3Var2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            checkForGaps();
        }
    }

    public final void p(int i10, g2 g2Var) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mPrimaryOrientation.b(childAt) > i10 || this.mPrimaryOrientation.n(childAt) > i10) {
                return;
            }
            y2 y2Var = (y2) childAt.getLayoutParams();
            if (y2Var.f2376b) {
                for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                    if (this.mSpans[i11].f2052a.size() == 1) {
                        return;
                    }
                }
                for (int i12 = 0; i12 < this.mSpanCount; i12++) {
                    this.mSpans[i12].l();
                }
            } else if (y2Var.f2375a.f2052a.size() == 1) {
                return;
            } else {
                y2Var.f2375a.l();
            }
            removeAndRecycleView(childAt, g2Var);
        }
    }

    public void prepareLayoutStateForDelta(int i10, n2 n2Var) {
        int firstChildPosition;
        int i11;
        if (i10 > 0) {
            firstChildPosition = getLastChildPosition();
            i11 = 1;
        } else {
            firstChildPosition = getFirstChildPosition();
            i11 = -1;
        }
        this.mLayoutState.f2320a = true;
        t(firstChildPosition, n2Var);
        r(i11);
        v0 v0Var = this.mLayoutState;
        v0Var.f2322c = firstChildPosition + v0Var.f2323d;
        v0Var.f2321b = Math.abs(i10);
    }

    public final void q() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    public final void r(int i10) {
        v0 v0Var = this.mLayoutState;
        v0Var.f2324e = i10;
        v0Var.f2323d = this.mShouldReverseLayout != (i10 == -1) ? -1 : 1;
    }

    public final void s(int i10, int i11) {
        for (int i12 = 0; i12 < this.mSpanCount; i12++) {
            if (!this.mSpans[i12].f2052a.isEmpty()) {
                u(this.mSpans[i12], i10, i11);
            }
        }
    }

    public int scrollBy(int i10, g2 g2Var, n2 n2Var) {
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        prepareLayoutStateForDelta(i10, n2Var);
        int iE = e(g2Var, this.mLayoutState, n2Var);
        if (this.mLayoutState.f2321b >= iE) {
            i10 = i10 < 0 ? -iE : iE;
        }
        this.mPrimaryOrientation.p(-i10);
        this.mLastLayoutFromEnd = this.mShouldReverseLayout;
        v0 v0Var = this.mLayoutState;
        v0Var.f2321b = 0;
        n(g2Var, v0Var);
        return i10;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        return scrollBy(i10, g2Var, n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        b3 b3Var = this.mPendingSavedState;
        if (b3Var != null && b3Var.f2040a != i10) {
            b3Var.f2043d = null;
            b3Var.f2042c = 0;
            b3Var.f2040a = -1;
            b3Var.f2041b = -1;
        }
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        requestLayout();
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        b3 b3Var = this.mPendingSavedState;
        if (b3Var != null) {
            b3Var.f2043d = null;
            b3Var.f2042c = 0;
            b3Var.f2040a = -1;
            b3Var.f2041b = -1;
        }
        this.mPendingScrollPosition = i10;
        this.mPendingScrollPositionOffset = i11;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        return scrollBy(i10, g2Var, n2Var);
    }

    public void setGapStrategy(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 == this.mGapStrategy) {
            return;
        }
        if (i10 != 0 && i10 != 2) {
            throw new IllegalArgumentException("invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS");
        }
        this.mGapStrategy = i10;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, rect.height() + paddingBottom, getMinimumHeight());
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, (this.mSizePerSpan * this.mSpanCount) + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, rect.width() + paddingRight, getMinimumWidth());
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, (this.mSizePerSpan * this.mSpanCount) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setOrientation(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i10 == this.mOrientation) {
            return;
        }
        this.mOrientation = i10;
        f1 f1Var = this.mPrimaryOrientation;
        this.mPrimaryOrientation = this.mSecondaryOrientation;
        this.mSecondaryOrientation = f1Var;
        requestLayout();
    }

    public void setReverseLayout(boolean z) {
        assertNotInLayoutOrScroll(null);
        b3 b3Var = this.mPendingSavedState;
        if (b3Var != null && b3Var.f2047h != z) {
            b3Var.f2047h = z;
        }
        this.mReverseLayout = z;
        requestLayout();
    }

    public void setSpanCount(int i10) {
        assertNotInLayoutOrScroll(null);
        if (i10 != this.mSpanCount) {
            invalidateSpanAssignments();
            this.mSpanCount = i10;
            this.mRemainingSpans = new BitSet(this.mSpanCount);
            this.mSpans = new c3[this.mSpanCount];
            for (int i11 = 0; i11 < this.mSpanCount; i11++) {
                this.mSpans[i11] = new c3(this, i11);
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        a1 a1Var = new a1(recyclerView.getContext());
        a1Var.setTargetPosition(i10);
        startSmoothScroll(a1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t(int i10, n2 n2Var) {
        int iL;
        int iL2;
        int i11;
        v0 v0Var = this.mLayoutState;
        boolean z = false;
        v0Var.f2321b = 0;
        v0Var.f2322c = i10;
        if (!isSmoothScrolling() || (i11 = n2Var.f2199a) == -1) {
            iL = 0;
        } else {
            if (this.mShouldReverseLayout != (i11 < i10)) {
                iL2 = this.mPrimaryOrientation.l();
                iL = 0;
                if (getClipToPadding()) {
                    this.mLayoutState.f2326g = this.mPrimaryOrientation.f() + iL;
                    this.mLayoutState.f2325f = -iL2;
                } else {
                    this.mLayoutState.f2325f = this.mPrimaryOrientation.k() - iL2;
                    this.mLayoutState.f2326g = this.mPrimaryOrientation.g() + iL;
                }
                v0 v0Var2 = this.mLayoutState;
                v0Var2.f2327h = false;
                v0Var2.f2320a = true;
                if (this.mPrimaryOrientation.i() == 0 && this.mPrimaryOrientation.f() == 0) {
                    z = true;
                }
                v0Var2.f2328i = z;
            }
            iL = this.mPrimaryOrientation.l();
        }
        iL2 = 0;
        if (getClipToPadding()) {
        }
        v0 v0Var22 = this.mLayoutState;
        v0Var22.f2327h = false;
        v0Var22.f2320a = true;
        if (this.mPrimaryOrientation.i() == 0) {
            z = true;
        }
        v0Var22.f2328i = z;
    }

    public final void u(c3 c3Var, int i10, int i11) {
        int i12 = c3Var.f2055d;
        int i13 = c3Var.f2056e;
        if (i10 == -1) {
            int i14 = c3Var.f2053b;
            if (i14 == Integer.MIN_VALUE) {
                c3Var.c();
                i14 = c3Var.f2053b;
            }
            if (i14 + i12 <= i11) {
                this.mRemainingSpans.set(i13, false);
                return;
            }
            return;
        }
        int i15 = c3Var.f2054c;
        if (i15 == Integer.MIN_VALUE) {
            c3Var.b();
            i15 = c3Var.f2054c;
        }
        if (i15 - i12 >= i11) {
            this.mRemainingSpans.set(i13, false);
        }
    }

    public boolean updateAnchorFromPendingData(n2 n2Var, x2 x2Var) {
        int i10;
        if (!n2Var.f2205g && (i10 = this.mPendingScrollPosition) != -1) {
            if (i10 >= 0 && i10 < n2Var.b()) {
                b3 b3Var = this.mPendingSavedState;
                if (b3Var == null || b3Var.f2040a == -1 || b3Var.f2042c < 1) {
                    View viewFindViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (viewFindViewByPosition != null) {
                        x2Var.f2353a = this.mShouldReverseLayout ? getLastChildPosition() : getFirstChildPosition();
                        if (this.mPendingScrollPositionOffset != Integer.MIN_VALUE) {
                            if (x2Var.f2355c) {
                                x2Var.f2354b = (this.mPrimaryOrientation.g() - this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.b(viewFindViewByPosition);
                            } else {
                                x2Var.f2354b = (this.mPrimaryOrientation.k() + this.mPendingScrollPositionOffset) - this.mPrimaryOrientation.e(viewFindViewByPosition);
                            }
                            return true;
                        }
                        if (this.mPrimaryOrientation.c(viewFindViewByPosition) > this.mPrimaryOrientation.l()) {
                            x2Var.f2354b = x2Var.f2355c ? this.mPrimaryOrientation.g() : this.mPrimaryOrientation.k();
                            return true;
                        }
                        int iE = this.mPrimaryOrientation.e(viewFindViewByPosition) - this.mPrimaryOrientation.k();
                        if (iE < 0) {
                            x2Var.f2354b = -iE;
                            return true;
                        }
                        int iG = this.mPrimaryOrientation.g() - this.mPrimaryOrientation.b(viewFindViewByPosition);
                        if (iG < 0) {
                            x2Var.f2354b = iG;
                            return true;
                        }
                        x2Var.f2354b = Integer.MIN_VALUE;
                    } else {
                        int i11 = this.mPendingScrollPosition;
                        x2Var.f2353a = i11;
                        int i12 = this.mPendingScrollPositionOffset;
                        StaggeredGridLayoutManager staggeredGridLayoutManager = x2Var.f2359g;
                        if (i12 == Integer.MIN_VALUE) {
                            boolean z = a(i11) == 1;
                            x2Var.f2355c = z;
                            x2Var.f2354b = z ? staggeredGridLayoutManager.mPrimaryOrientation.g() : staggeredGridLayoutManager.mPrimaryOrientation.k();
                        } else if (x2Var.f2355c) {
                            x2Var.f2354b = staggeredGridLayoutManager.mPrimaryOrientation.g() - i12;
                        } else {
                            x2Var.f2354b = staggeredGridLayoutManager.mPrimaryOrientation.k() + i12;
                        }
                        x2Var.f2356d = true;
                    }
                } else {
                    x2Var.f2354b = Integer.MIN_VALUE;
                    x2Var.f2353a = this.mPendingScrollPosition;
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    public void updateAnchorInfoForLayout(n2 n2Var, x2 x2Var) {
        if (updateAnchorFromPendingData(n2Var, x2Var)) {
            return;
        }
        int i10 = 0;
        if (!this.mLastLayoutFromEnd) {
            int iB = n2Var.b();
            int childCount = getChildCount();
            int i11 = 0;
            while (true) {
                if (i11 < childCount) {
                    int position = getPosition(getChildAt(i11));
                    if (position >= 0 && position < iB) {
                        i10 = position;
                        break;
                    }
                    i11++;
                } else {
                    break;
                }
            }
        } else {
            int iB2 = n2Var.b();
            int childCount2 = getChildCount() - 1;
            while (true) {
                if (childCount2 >= 0) {
                    int position2 = getPosition(getChildAt(childCount2));
                    if (position2 >= 0 && position2 < iB2) {
                        i10 = position2;
                        break;
                    }
                    childCount2--;
                } else {
                    break;
                }
            }
        }
        x2Var.f2353a = i10;
        x2Var.f2354b = Integer.MIN_VALUE;
    }

    public void updateMeasureSpecs(int i10) {
        this.mSizePerSpan = i10 / this.mSpanCount;
        this.mFullSizeSpec = View.MeasureSpec.makeMeasureSpec(i10, this.mSecondaryOrientation.i());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new y2((ViewGroup.MarginLayoutParams) layoutParams) : new y2(layoutParams);
    }

    public StaggeredGridLayoutManager(int i10, int i11) {
        this.mOrientation = i11;
        setSpanCount(i10);
        this.mLayoutState = new v0();
        this.mPrimaryOrientation = f1.a(this, this.mOrientation);
        this.mSecondaryOrientation = f1.a(this, 1 - this.mOrientation);
    }
}

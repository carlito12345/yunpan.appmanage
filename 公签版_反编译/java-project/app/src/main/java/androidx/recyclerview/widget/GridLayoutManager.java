package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SPAN_COUNT = -1;
    private static final String TAG = "GridLayoutManager";
    int[] mCachedBorders;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    View[] mSet;
    int mSpanCount;
    j0 mSpanSizeLookup;
    private boolean mUsingSpansToEstimateScrollBarDimensions;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new h0();
        this.mDecorInsets = new Rect();
        setSpanCount(RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11).f2383b);
    }

    public static int[] calculateItemBorders(int[] iArr, int i10, int i11) {
        int i12;
        if (iArr == null || iArr.length != i10 + 1 || iArr[iArr.length - 1] != i11) {
            iArr = new int[i10 + 1];
        }
        int i13 = 0;
        iArr[0] = 0;
        int i14 = i11 / i10;
        int i15 = i11 % i10;
        int i16 = 0;
        for (int i17 = 1; i17 <= i10; i17++) {
            i13 += i15;
            if (i13 <= 0 || i10 - i13 >= i15) {
                i12 = i14;
            } else {
                i12 = i14 + 1;
                i13 -= i10;
            }
            i16 += i12;
            iArr[i17] = i16;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof i0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void collectPrefetchPositionsForLayoutState(n2 n2Var, y0 y0Var, y1 y1Var) {
        int i10;
        int iC = this.mSpanCount;
        for (int i11 = 0; i11 < this.mSpanCount && (i10 = y0Var.f2367d) >= 0 && i10 < n2Var.b() && iC > 0; i11++) {
            int i12 = y0Var.f2367d;
            ((e0) y1Var).a(i12, Math.max(0, y0Var.f2370g));
            iC -= this.mSpanSizeLookup.c(i12);
            y0Var.f2367d += y0Var.f2368e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(n2 n2Var) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? o(n2Var) : super.computeHorizontalScrollOffset(n2Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(n2 n2Var) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? p(n2Var) : super.computeHorizontalScrollRange(n2Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(n2 n2Var) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? o(n2Var) : super.computeVerticalScrollOffset(n2Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(n2 n2Var) {
        return this.mUsingSpansToEstimateScrollBarDimensions ? p(n2Var) : super.computeVerticalScrollRange(n2Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public View findReferenceChild(g2 g2Var, n2 n2Var, boolean z, boolean z4) {
        int i10;
        int childCount;
        int childCount2 = getChildCount();
        int i11 = 1;
        if (z4) {
            childCount = getChildCount() - 1;
            i10 = -1;
            i11 = -1;
        } else {
            i10 = childCount2;
            childCount = 0;
        }
        int iB = n2Var.b();
        ensureLayoutState();
        int iK = this.mOrientationHelper.k();
        int iG = this.mOrientationHelper.g();
        View view = null;
        View view2 = null;
        while (childCount != i10) {
            View childAt = getChildAt(childCount);
            int position = getPosition(childAt);
            if (position >= 0 && position < iB && s(position, g2Var, n2Var) == 0) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.e(childAt) < iG && this.mOrientationHelper.b(childAt) >= iK) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            childCount += i11;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new i0(-2, -1) : new i0(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new i0(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getColumnCountForAccessibility(g2 g2Var, n2 n2Var) {
        if (this.mOrientation == 1) {
            return this.mSpanCount;
        }
        if (n2Var.b() < 1) {
            return 0;
        }
        return r(n2Var.b() - 1, g2Var, n2Var) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getRowCountForAccessibility(g2 g2Var, n2 n2Var) {
        if (this.mOrientation == 0) {
            return this.mSpanCount;
        }
        if (n2Var.b() < 1) {
            return 0;
        }
        return r(n2Var.b() - 1, g2Var, n2Var) + 1;
    }

    public int getSpaceForSpanRange(int i10, int i11) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i11 + i10] - iArr[i10];
        }
        int[] iArr2 = this.mCachedBorders;
        int i12 = this.mSpanCount;
        return iArr2[i12 - i10] - iArr2[(i12 - i10) - i11];
    }

    public int getSpanCount() {
        return this.mSpanCount;
    }

    public j0 getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    public boolean isUsingSpansToEstimateScrollbarDimensions() {
        return this.mUsingSpansToEstimateScrollBarDimensions;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void layoutChunk(g2 g2Var, n2 n2Var, y0 y0Var, x0 x0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int iD;
        int iD2;
        int i17;
        int iD3;
        int childMeasureSpec;
        int childMeasureSpec2;
        boolean z;
        int i18;
        View viewB;
        int iJ = this.mOrientationHelper.j();
        boolean z4 = iJ != 1073741824;
        int i19 = getChildCount() > 0 ? this.mCachedBorders[this.mSpanCount] : 0;
        if (z4) {
            v();
        }
        boolean z10 = y0Var.f2368e == 1;
        int iS = this.mSpanCount;
        if (!z10) {
            iS = s(y0Var.f2367d, g2Var, n2Var) + t(y0Var.f2367d, g2Var, n2Var);
        }
        int i20 = 0;
        while (i20 < this.mSpanCount && (i18 = y0Var.f2367d) >= 0 && i18 < n2Var.b() && iS > 0) {
            int i21 = y0Var.f2367d;
            int iT = t(i21, g2Var, n2Var);
            if (iT > this.mSpanCount) {
                throw new IllegalArgumentException(android.support.v4.media.session.a.s(ta.q.o(i21, iT, "Item at position ", " requires ", " spans but GridLayoutManager has only "), this.mSpanCount, " spans."));
            }
            iS -= iT;
            if (iS < 0 || (viewB = y0Var.b(g2Var)) == null) {
                break;
            }
            this.mSet[i20] = viewB;
            i20++;
        }
        if (i20 == 0) {
            x0Var.f2349b = true;
            return;
        }
        if (z10) {
            i11 = i20;
            i10 = 0;
            i12 = 1;
        } else {
            i10 = i20 - 1;
            i11 = -1;
            i12 = -1;
        }
        int i22 = 0;
        while (i10 != i11) {
            View view = this.mSet[i10];
            i0 i0Var = (i0) view.getLayoutParams();
            int iT2 = t(getPosition(view), g2Var, n2Var);
            i0Var.f2153b = iT2;
            i0Var.f2152a = i22;
            i22 += iT2;
            i10 += i12;
        }
        float f10 = 0.0f;
        int i23 = 0;
        for (int i24 = 0; i24 < i20; i24++) {
            View view2 = this.mSet[i24];
            if (y0Var.f2374k != null) {
                z = false;
                if (z10) {
                    addDisappearingView(view2);
                } else {
                    addDisappearingView(view2, 0);
                }
            } else if (z10) {
                addView(view2);
                z = false;
            } else {
                z = false;
                addView(view2, 0);
            }
            calculateItemDecorationsForChild(view2, this.mDecorInsets);
            u(view2, iJ, z);
            int iC = this.mOrientationHelper.c(view2);
            if (iC > i23) {
                i23 = iC;
            }
            float fD = (this.mOrientationHelper.d(view2) * 1.0f) / ((i0) view2.getLayoutParams()).f2153b;
            if (fD > f10) {
                f10 = fD;
            }
        }
        if (z4) {
            this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, Math.max(Math.round(f10 * this.mSpanCount), i19));
            i23 = 0;
            for (int i25 = 0; i25 < i20; i25++) {
                View view3 = this.mSet[i25];
                u(view3, 1073741824, true);
                int iC2 = this.mOrientationHelper.c(view3);
                if (iC2 > i23) {
                    i23 = iC2;
                }
            }
        }
        for (int i26 = 0; i26 < i20; i26++) {
            View view4 = this.mSet[i26];
            if (this.mOrientationHelper.c(view4) != i23) {
                i0 i0Var2 = (i0) view4.getLayoutParams();
                Rect rect = i0Var2.mDecorInsets;
                int i27 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) i0Var2).topMargin + ((ViewGroup.MarginLayoutParams) i0Var2).bottomMargin;
                int i28 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) i0Var2).leftMargin + ((ViewGroup.MarginLayoutParams) i0Var2).rightMargin;
                int spaceForSpanRange = getSpaceForSpanRange(i0Var2.f2152a, i0Var2.f2153b);
                if (this.mOrientation == 1) {
                    childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, i28, ((ViewGroup.MarginLayoutParams) i0Var2).width, false);
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec(i23 - i27, 1073741824);
                } else {
                    int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i23 - i28, 1073741824);
                    childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, 1073741824, i27, ((ViewGroup.MarginLayoutParams) i0Var2).height, false);
                    childMeasureSpec2 = iMakeMeasureSpec;
                }
                if (shouldReMeasureChild(view4, childMeasureSpec2, childMeasureSpec, (RecyclerView.LayoutParams) view4.getLayoutParams())) {
                    view4.measure(childMeasureSpec2, childMeasureSpec);
                }
            }
        }
        int i29 = 0;
        x0Var.f2348a = i23;
        if (this.mOrientation != 1) {
            if (y0Var.f2369f == -1) {
                int i30 = y0Var.f2365b;
                i14 = i30 - i23;
                i13 = i30;
            } else {
                int i31 = y0Var.f2365b;
                i13 = i31 + i23;
                i14 = i31;
            }
            i15 = 0;
            i16 = 0;
        } else if (y0Var.f2369f == -1) {
            i16 = y0Var.f2365b;
            i15 = i16 - i23;
            i14 = 0;
            i13 = 0;
        } else {
            int i32 = y0Var.f2365b;
            i15 = i32;
            i13 = 0;
            i16 = i32 + i23;
            i14 = 0;
        }
        while (i29 < i20) {
            View view5 = this.mSet[i29];
            i0 i0Var3 = (i0) view5.getLayoutParams();
            if (this.mOrientation != 1) {
                int paddingTop = getPaddingTop() + this.mCachedBorders[i0Var3.f2152a];
                iD = i14;
                iD2 = i13;
                i17 = paddingTop;
                iD3 = this.mOrientationHelper.d(view5) + paddingTop;
            } else if (isLayoutRTL()) {
                int paddingLeft = getPaddingLeft() + this.mCachedBorders[this.mSpanCount - i0Var3.f2152a];
                iD2 = paddingLeft;
                i17 = i15;
                iD3 = i16;
                iD = paddingLeft - this.mOrientationHelper.d(view5);
            } else {
                int paddingLeft2 = getPaddingLeft() + this.mCachedBorders[i0Var3.f2152a];
                iD2 = this.mOrientationHelper.d(view5) + paddingLeft2;
                i17 = i15;
                iD3 = i16;
                iD = paddingLeft2;
            }
            layoutDecoratedWithMargins(view5, iD, i17, iD2, iD3);
            if (i0Var3.isItemRemoved() || i0Var3.isItemChanged()) {
                x0Var.f2350c = true;
            }
            x0Var.f2351d |= view5.hasFocusable();
            i29++;
            i14 = iD;
            i13 = iD2;
            i15 = i17;
            i16 = iD3;
        }
        Arrays.fill(this.mSet, (Object) null);
    }

    public final int o(n2 n2Var) {
        if (getChildCount() != 0 && n2Var.b() != 0) {
            ensureLayoutState();
            boolean zIsSmoothScrollbarEnabled = isSmoothScrollbarEnabled();
            boolean z = !zIsSmoothScrollbarEnabled;
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(z, true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(z, true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                int iA = this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount);
                int iA2 = this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount);
                int iMax = this.mShouldReverseLayout ? Math.max(0, ((this.mSpanSizeLookup.a(n2Var.b() - 1, this.mSpanCount) + 1) - Math.max(iA, iA2)) - 1) : Math.max(0, Math.min(iA, iA2));
                if (zIsSmoothScrollbarEnabled) {
                    return Math.round((iMax * (Math.abs(this.mOrientationHelper.b(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart)) / ((this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount)) + 1))) + (this.mOrientationHelper.k() - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart)));
                }
                return iMax;
            }
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void onAnchorReady(g2 g2Var, n2 n2Var, w0 w0Var, int i10) {
        super.onAnchorReady(g2Var, n2Var, w0Var, i10);
        v();
        if (n2Var.b() > 0 && !n2Var.f2205g) {
            boolean z = i10 == 1;
            int iS = s(w0Var.f2336b, g2Var, n2Var);
            if (z) {
                while (iS > 0) {
                    int i11 = w0Var.f2336b;
                    if (i11 <= 0) {
                        break;
                    }
                    int i12 = i11 - 1;
                    w0Var.f2336b = i12;
                    iS = s(i12, g2Var, n2Var);
                }
            } else {
                int iB = n2Var.b() - 1;
                int i13 = w0Var.f2336b;
                while (i13 < iB) {
                    int i14 = i13 + 1;
                    int iS2 = s(i14, g2Var, n2Var);
                    if (iS2 <= iS) {
                        break;
                    }
                    i13 = i14;
                    iS = iS2;
                }
                w0Var.f2336b = i13;
            }
        }
        q();
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d1, code lost:
    
        if (r13 == (r2 > r15)) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010f  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View onFocusSearchFailed(View view, int i10, g2 g2Var, n2 n2Var) {
        int childCount;
        int childCount2;
        int i11;
        View view2;
        View view3;
        int i12;
        int i13;
        int i14;
        int i15;
        g2 g2Var2 = g2Var;
        n2 n2Var2 = n2Var;
        View viewFindContainingItemView = findContainingItemView(view);
        View view4 = null;
        if (viewFindContainingItemView == null) {
            return null;
        }
        i0 i0Var = (i0) viewFindContainingItemView.getLayoutParams();
        int i16 = i0Var.f2152a;
        int i17 = i0Var.f2153b + i16;
        if (super.onFocusSearchFailed(view, i10, g2Var, n2Var) == null) {
            return null;
        }
        if ((convertFocusDirectionToLayoutDirection(i10) == 1) != this.mShouldReverseLayout) {
            childCount2 = getChildCount() - 1;
            childCount = -1;
            i11 = -1;
        } else {
            childCount = getChildCount();
            childCount2 = 0;
            i11 = 1;
        }
        boolean z = this.mOrientation == 1 && isLayoutRTL();
        int iR = r(childCount2, g2Var2, n2Var2);
        int i18 = childCount2;
        int iMin = 0;
        int i19 = -1;
        int i20 = -1;
        int iMin2 = 0;
        View view5 = null;
        while (i18 != childCount) {
            int iR2 = r(i18, g2Var2, n2Var2);
            View childAt = getChildAt(i18);
            if (childAt == viewFindContainingItemView) {
                break;
            }
            if (!childAt.hasFocusable() || iR2 == iR) {
                i0 i0Var2 = (i0) childAt.getLayoutParams();
                int i21 = i0Var2.f2152a;
                view2 = viewFindContainingItemView;
                int i22 = i0Var2.f2153b + i21;
                if (childAt.hasFocusable() && i21 == i16 && i22 == i17) {
                    return childAt;
                }
                if (!(childAt.hasFocusable() && view4 == null) && (childAt.hasFocusable() || view5 != null)) {
                    view3 = view5;
                    int iMin3 = Math.min(i22, i17) - Math.max(i21, i16);
                    if (!childAt.hasFocusable()) {
                        if (view4 == null) {
                            i12 = iMin;
                            i13 = childCount;
                            if (isViewPartiallyVisible(childAt, false, true)) {
                                i14 = iMin2;
                                if (iMin3 > i14) {
                                    i15 = i20;
                                } else if (iMin3 == i14) {
                                    i15 = i20;
                                    if (z == (i21 > i15)) {
                                    }
                                    i18 += i11;
                                    g2Var2 = g2Var;
                                    n2Var2 = n2Var;
                                    viewFindContainingItemView = view2;
                                    childCount = i13;
                                } else {
                                    i15 = i20;
                                }
                                if (childAt.hasFocusable()) {
                                    int i23 = i0Var2.f2152a;
                                    iMin2 = Math.min(i22, i17) - Math.max(i21, i16);
                                    i20 = i23;
                                    iMin = i12;
                                    view5 = childAt;
                                } else {
                                    i19 = i0Var2.f2152a;
                                    i20 = i15;
                                    iMin2 = i14;
                                    view5 = view3;
                                    view4 = childAt;
                                    iMin = Math.min(i22, i17) - Math.max(i21, i16);
                                }
                                i18 += i11;
                                g2Var2 = g2Var;
                                n2Var2 = n2Var;
                                viewFindContainingItemView = view2;
                                childCount = i13;
                            }
                            i20 = i15;
                            iMin2 = i14;
                            iMin = i12;
                            view5 = view3;
                            i18 += i11;
                            g2Var2 = g2Var;
                            n2Var2 = n2Var;
                            viewFindContainingItemView = view2;
                            childCount = i13;
                        }
                        i15 = i20;
                        i14 = iMin2;
                        i20 = i15;
                        iMin2 = i14;
                        iMin = i12;
                        view5 = view3;
                        i18 += i11;
                        g2Var2 = g2Var;
                        n2Var2 = n2Var;
                        viewFindContainingItemView = view2;
                        childCount = i13;
                    } else if (iMin3 <= iMin) {
                        if (iMin3 == iMin) {
                        }
                    }
                } else {
                    view3 = view5;
                }
                i12 = iMin;
                i13 = childCount;
                i15 = i20;
                i14 = iMin2;
                if (childAt.hasFocusable()) {
                }
                i18 += i11;
                g2Var2 = g2Var;
                n2Var2 = n2Var;
                viewFindContainingItemView = view2;
                childCount = i13;
            } else {
                if (view4 != null) {
                    break;
                }
                view2 = viewFindContainingItemView;
                view3 = view5;
            }
            i12 = iMin;
            i13 = childCount;
            i15 = i20;
            i14 = iMin2;
            i20 = i15;
            iMin2 = i14;
            iMin = i12;
            view5 = view3;
            i18 += i11;
            g2Var2 = g2Var;
            n2Var2 = n2Var;
            viewFindContainingItemView = view2;
            childCount = i13;
        }
        return view4 != null ? view4 : view5;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfo(g2 g2Var, n2 n2Var, y0.n nVar) {
        super.onInitializeAccessibilityNodeInfo(g2Var, n2Var, nVar);
        nVar.j(GridView.class.getName());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onInitializeAccessibilityNodeInfoForItem(g2 g2Var, n2 n2Var, View view, y0.n nVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof i0)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, nVar);
            return;
        }
        i0 i0Var = (i0) layoutParams;
        int iR = r(i0Var.getViewLayoutPosition(), g2Var, n2Var);
        if (this.mOrientation == 0) {
            nVar.l(y0.m.a(i0Var.f2152a, i0Var.f2153b, iR, 1, false));
        } else {
            nVar.l(y0.m.a(iR, 1, i0Var.f2152a, i0Var.f2153b, false));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        this.mSpanSizeLookup.d();
        this.mSpanSizeLookup.f2162b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.d();
        this.mSpanSizeLookup.f2162b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        this.mSpanSizeLookup.d();
        this.mSpanSizeLookup.f2162b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        this.mSpanSizeLookup.d();
        this.mSpanSizeLookup.f2162b.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
        this.mSpanSizeLookup.d();
        this.mSpanSizeLookup.f2162b.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        if (n2Var.f2205g) {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                i0 i0Var = (i0) getChildAt(i10).getLayoutParams();
                int viewLayoutPosition = i0Var.getViewLayoutPosition();
                this.mPreLayoutSpanSizeCache.put(viewLayoutPosition, i0Var.f2153b);
                this.mPreLayoutSpanIndexCache.put(viewLayoutPosition, i0Var.f2152a);
            }
        }
        super.onLayoutChildren(g2Var, n2Var);
        this.mPreLayoutSpanSizeCache.clear();
        this.mPreLayoutSpanIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(n2 n2Var) {
        super.onLayoutCompleted(n2Var);
        this.mPendingSpanCountChange = false;
    }

    public final int p(n2 n2Var) {
        if (getChildCount() != 0 && n2Var.b() != 0) {
            ensureLayoutState();
            View viewFindFirstVisibleChildClosestToStart = findFirstVisibleChildClosestToStart(!isSmoothScrollbarEnabled(), true);
            View viewFindFirstVisibleChildClosestToEnd = findFirstVisibleChildClosestToEnd(!isSmoothScrollbarEnabled(), true);
            if (viewFindFirstVisibleChildClosestToStart != null && viewFindFirstVisibleChildClosestToEnd != null) {
                if (!isSmoothScrollbarEnabled()) {
                    return this.mSpanSizeLookup.a(n2Var.b() - 1, this.mSpanCount) + 1;
                }
                int iB = this.mOrientationHelper.b(viewFindFirstVisibleChildClosestToEnd) - this.mOrientationHelper.e(viewFindFirstVisibleChildClosestToStart);
                int iA = this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToStart), this.mSpanCount);
                return (int) ((iB / ((this.mSpanSizeLookup.a(getPosition(viewFindFirstVisibleChildClosestToEnd), this.mSpanCount) - iA) + 1)) * (this.mSpanSizeLookup.a(n2Var.b() - 1, this.mSpanCount) + 1));
            }
        }
        return 0;
    }

    public final void q() {
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    public final int r(int i10, g2 g2Var, n2 n2Var) {
        if (!n2Var.f2205g) {
            return this.mSpanSizeLookup.a(i10, this.mSpanCount);
        }
        int iB = g2Var.b(i10);
        if (iB == -1) {
            return 0;
        }
        return this.mSpanSizeLookup.a(iB, this.mSpanCount);
    }

    public final int s(int i10, g2 g2Var, n2 n2Var) {
        if (!n2Var.f2205g) {
            return this.mSpanSizeLookup.b(i10, this.mSpanCount);
        }
        int i11 = this.mPreLayoutSpanIndexCache.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iB = g2Var.b(i10);
        if (iB == -1) {
            return 0;
        }
        return this.mSpanSizeLookup.b(iB, this.mSpanCount);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        v();
        q();
        return super.scrollHorizontallyBy(i10, g2Var, n2Var);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        v();
        q();
        return super.scrollVerticallyBy(i10, g2Var, n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void setMeasuredDimension(Rect rect, int i10, int i11) {
        int iChooseSize;
        int iChooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i10, i11);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, rect.height() + paddingBottom, getMinimumHeight());
            int[] iArr = this.mCachedBorders;
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, iArr[iArr.length - 1] + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = RecyclerView.LayoutManager.chooseSize(i10, rect.width() + paddingRight, getMinimumWidth());
            int[] iArr2 = this.mCachedBorders;
            iChooseSize2 = RecyclerView.LayoutManager.chooseSize(i11, iArr2[iArr2.length - 1] + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    public void setSpanCount(int i10) {
        if (i10 == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i10 < 1) {
            throw new IllegalArgumentException(da.b.a(i10, "Span count should be at least 1. Provided "));
        }
        this.mSpanCount = i10;
        this.mSpanSizeLookup.d();
        requestLayout();
    }

    public void setSpanSizeLookup(j0 j0Var) {
        this.mSpanSizeLookup = j0Var;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    public void setUsingSpansToEstimateScrollbarDimensions(boolean z) {
        this.mUsingSpansToEstimateScrollBarDimensions = z;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    public final int t(int i10, g2 g2Var, n2 n2Var) {
        if (!n2Var.f2205g) {
            return this.mSpanSizeLookup.c(i10);
        }
        int i11 = this.mPreLayoutSpanSizeCache.get(i10, -1);
        if (i11 != -1) {
            return i11;
        }
        int iB = g2Var.b(i10);
        if (iB == -1) {
            return 1;
        }
        return this.mSpanSizeLookup.c(iB);
    }

    public final void u(View view, int i10, boolean z) {
        int childMeasureSpec;
        int childMeasureSpec2;
        i0 i0Var = (i0) view.getLayoutParams();
        Rect rect = i0Var.mDecorInsets;
        int i11 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) i0Var).topMargin + ((ViewGroup.MarginLayoutParams) i0Var).bottomMargin;
        int i12 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) i0Var).leftMargin + ((ViewGroup.MarginLayoutParams) i0Var).rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(i0Var.f2152a, i0Var.f2153b);
        if (this.mOrientation == 1) {
            childMeasureSpec2 = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, i10, i12, ((ViewGroup.MarginLayoutParams) i0Var).width, false);
            childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.l(), getHeightMode(), i11, ((ViewGroup.MarginLayoutParams) i0Var).height, true);
        } else {
            int childMeasureSpec3 = RecyclerView.LayoutManager.getChildMeasureSpec(spaceForSpanRange, i10, i11, ((ViewGroup.MarginLayoutParams) i0Var).height, false);
            int childMeasureSpec4 = RecyclerView.LayoutManager.getChildMeasureSpec(this.mOrientationHelper.l(), getWidthMode(), i12, ((ViewGroup.MarginLayoutParams) i0Var).width, true);
            childMeasureSpec = childMeasureSpec3;
            childMeasureSpec2 = childMeasureSpec4;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (z ? shouldReMeasureChild(view, childMeasureSpec2, childMeasureSpec, layoutParams) : shouldMeasureChild(view, childMeasureSpec2, childMeasureSpec, layoutParams)) {
            view.measure(childMeasureSpec2, childMeasureSpec);
        }
    }

    public final void v() {
        int height;
        int paddingTop;
        if (getOrientation() == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        this.mCachedBorders = calculateItemBorders(this.mCachedBorders, this.mSpanCount, height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new i0((ViewGroup.MarginLayoutParams) layoutParams) : new i0(layoutParams);
    }

    public GridLayoutManager(int i10) {
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new h0();
        this.mDecorInsets = new Rect();
        setSpanCount(i10);
    }

    public GridLayoutManager(int i10, int i11, boolean z) {
        super(i11, z);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new h0();
        this.mDecorInsets = new Rect();
        setSpanCount(i10);
    }
}

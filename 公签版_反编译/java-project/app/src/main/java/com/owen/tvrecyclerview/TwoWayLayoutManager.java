package com.owen.tvrecyclerview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a1;
import androidx.recyclerview.widget.g2;
import androidx.recyclerview.widget.l2;
import androidx.recyclerview.widget.m1;
import androidx.recyclerview.widget.n2;
import com.owen.tvrecyclerview.widget.TvRecyclerView;
import java.util.List;
import w9.a;

/* loaded from: classes.dex */
public abstract class TwoWayLayoutManager extends RecyclerView.LayoutManager implements l2 {
    private static final String LOGTAG = "TwoWayLayoutManager";
    protected boolean mIsVertical;
    private int mLayoutEnd;
    private int mLayoutStart;
    private SavedState mPendingSavedState;
    private int mPendingScrollOffset;
    private int mPendingScrollPosition;
    protected RecyclerView mRecyclerView;

    public enum Direction {
        START,
        END
    }

    public enum Orientation {
        HORIZONTAL,
        VERTICAL
    }

    public TwoWayLayoutManager(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void adjustViewsStartOrEnd() {
        if (getChildCount() == 0) {
            return;
        }
        int startWithPadding = this.mLayoutStart - getStartWithPadding();
        if (startWithPadding < 0) {
            startWithPadding = 0;
        }
        if (startWithPadding != 0) {
            offsetChildren(-startWithPadding);
        }
    }

    private void correctTooHigh(int i10, g2 g2Var, n2 n2Var) {
        if (getLastVisiblePosition() != n2Var.b() - 1 || i10 == 0) {
            return;
        }
        int startWithPadding = getStartWithPadding();
        int endWithPadding = getEndWithPadding();
        int firstVisiblePosition = getFirstVisiblePosition();
        int iMin = endWithPadding - this.mLayoutEnd;
        if (iMin > 0) {
            if (firstVisiblePosition > 0 || this.mLayoutStart < startWithPadding) {
                if (firstVisiblePosition == 0) {
                    iMin = Math.min(iMin, startWithPadding - this.mLayoutStart);
                }
                offsetChildren(iMin);
                if (firstVisiblePosition > 0) {
                    fillBefore(firstVisiblePosition - 1, g2Var);
                    adjustViewsStartOrEnd();
                }
            }
        }
    }

    private void correctTooLow(int i10, g2 g2Var, n2 n2Var) {
        if (getFirstVisiblePosition() != 0 || i10 == 0) {
            return;
        }
        int startWithPadding = getStartWithPadding();
        int endWithPadding = getEndWithPadding();
        int iB = n2Var.b();
        int lastVisiblePosition = getLastVisiblePosition();
        int iMin = this.mLayoutStart - startWithPadding;
        if (iMin > 0) {
            int i11 = iB - 1;
            if (lastVisiblePosition >= i11 && this.mLayoutEnd <= endWithPadding) {
                if (lastVisiblePosition == i11) {
                    adjustViewsStartOrEnd();
                    return;
                }
                return;
            }
            if (lastVisiblePosition == i11) {
                iMin = Math.min(iMin, this.mLayoutEnd - endWithPadding);
            }
            offsetChildren(-iMin);
            if (lastVisiblePosition < i11) {
                fillAfter(lastVisiblePosition + 1, g2Var, n2Var);
                adjustViewsStartOrEnd();
            }
        }
    }

    private void fillAfter(int i10, g2 g2Var, n2 n2Var) {
        fillAfter(i10, g2Var, n2Var, 0);
    }

    private void fillBefore(int i10, g2 g2Var) {
        fillBefore(i10, g2Var, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x001e -> B:5:0x000d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0020 -> B:5:0x000d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void fillFromScrapList(List<RecyclerView.ViewHolder> list, Direction direction) {
        int childCount;
        View viewFindNextScrapView;
        int firstVisiblePosition = getFirstVisiblePosition();
        if (direction == Direction.END) {
            childCount = getChildCount();
            childCount += firstVisiblePosition;
            viewFindNextScrapView = findNextScrapView(list, direction, childCount);
            if (viewFindNextScrapView != null) {
                setupChild(viewFindNextScrapView, direction);
                firstVisiblePosition = direction == Direction.END ? 1 : -1;
                childCount += firstVisiblePosition;
                viewFindNextScrapView = findNextScrapView(list, direction, childCount);
                if (viewFindNextScrapView != null) {
                }
            }
        } else {
            childCount = firstVisiblePosition - 1;
            viewFindNextScrapView = findNextScrapView(list, direction, childCount);
            if (viewFindNextScrapView != null) {
            }
        }
    }

    private void fillGap(Direction direction, g2 g2Var, n2 n2Var) {
        int childCount = getChildCount();
        int extraLayoutSpace = getExtraLayoutSpace(n2Var);
        int firstVisiblePosition = getFirstVisiblePosition();
        if (direction == Direction.END) {
            fillAfter(firstVisiblePosition + childCount, g2Var, n2Var, extraLayoutSpace);
            correctTooHigh(childCount, g2Var, n2Var);
        } else {
            fillBefore(firstVisiblePosition - 1, g2Var, extraLayoutSpace);
            correctTooLow(childCount, g2Var, n2Var);
        }
    }

    private void fillSpecific(int i10, g2 g2Var, n2 n2Var) {
        if (n2Var.b() <= 0) {
            return;
        }
        makeAndAddView(i10, Direction.END, g2Var);
        int extraLayoutSpace = getExtraLayoutSpace(n2Var);
        int i11 = 0;
        if (n2Var.f2199a >= i10) {
            i11 = extraLayoutSpace;
            extraLayoutSpace = 0;
        }
        fillBefore(i10 - 1, g2Var, extraLayoutSpace);
        adjustViewsStartOrEnd();
        fillAfter(i10 + 1, g2Var, n2Var, i11);
        correctTooHigh(getChildCount(), g2Var, n2Var);
    }

    private int findFirstValidChildPosition(int i10) {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            int position = getPosition(getChildAt(i11));
            if (position >= 0 && position < i10) {
                return position;
            }
        }
        return 0;
    }

    private static View findNextScrapView(List<RecyclerView.ViewHolder> list, Direction direction, int i10) {
        int iAbs;
        int size = list.size();
        int i11 = Integer.MAX_VALUE;
        RecyclerView.ViewHolder viewHolder = null;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.ViewHolder viewHolder2 = list.get(i12);
            int position = viewHolder2.getPosition() - i10;
            if ((position >= 0 || direction != Direction.END) && ((position <= 0 || direction != Direction.START) && (iAbs = Math.abs(position)) < i11)) {
                viewHolder = viewHolder2;
                if (position == 0) {
                    break;
                }
                i11 = iAbs;
            }
        }
        if (viewHolder != null) {
            return viewHolder.itemView;
        }
        return null;
    }

    private Bundle getPendingItemSelectionState() {
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            return savedState.itemSelectionState;
        }
        return null;
    }

    private int getTotalSpace() {
        int width;
        int paddingLeft;
        if (this.mIsVertical) {
            width = getHeight() - getPaddingBottom();
            paddingLeft = getPaddingTop();
        } else {
            width = getWidth() - getPaddingRight();
            paddingLeft = getPaddingLeft();
        }
        return width - paddingLeft;
    }

    private void handleUpdate() {
        int firstVisiblePosition = getFirstVisiblePosition();
        if (findViewByPosition(firstVisiblePosition) != null) {
            setPendingScrollPositionWithOffset(firstVisiblePosition, this.mLayoutStart);
        } else {
            setPendingScrollPositionWithOffset(-1, 0);
        }
    }

    private View makeAndAddView(int i10, Direction direction, g2 g2Var) {
        View viewD = g2Var.d(i10);
        boolean zIsItemRemoved = ((RecyclerView.LayoutParams) viewD.getLayoutParams()).isItemRemoved();
        if (!zIsItemRemoved) {
            addView(viewD, direction == Direction.END ? -1 : 0);
        }
        setupChild(viewD, direction);
        if (!zIsItemRemoved) {
            updateLayoutEdgesFromNewChild(viewD);
        }
        return viewD;
    }

    private void offsetChildren(int i10) {
        if (this.mIsVertical) {
            offsetChildrenVertical(i10);
        } else {
            offsetChildrenHorizontal(i10);
        }
        this.mLayoutStart += i10;
        this.mLayoutEnd += i10;
    }

    private void recycleChildrenFromEnd(Direction direction, g2 g2Var) {
        int endWithPadding = getEndWithPadding();
        int i10 = 0;
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (getChildStart(childAt) <= endWithPadding) {
                break;
            }
            i10++;
            detachChild(childAt, direction);
            i11 = childCount;
        }
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            View childAt2 = getChildAt(i11);
            removeAndRecycleViewAt(i11, g2Var);
            updateLayoutEdgesFromRemovedChild(childAt2, direction);
        }
    }

    private void recycleChildrenFromStart(Direction direction, g2 g2Var) {
        int childCount = getChildCount();
        int startWithPadding = getStartWithPadding();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (getChildEnd(childAt) >= startWithPadding) {
                break;
            }
            i10++;
            detachChild(childAt, direction);
        }
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            View childAt2 = getChildAt(0);
            removeAndRecycleView(childAt2, g2Var);
            updateLayoutEdgesFromRemovedChild(childAt2, direction);
        }
    }

    private void recycleChildrenOutOfBounds(Direction direction, g2 g2Var) {
        if (direction == Direction.END) {
            recycleChildrenFromStart(direction, g2Var);
        } else {
            recycleChildrenFromEnd(direction, g2Var);
        }
    }

    private void resetLayoutEdges() {
        int startWithPadding = getStartWithPadding();
        this.mLayoutStart = startWithPadding;
        this.mLayoutEnd = startWithPadding;
    }

    private int scrollBy(int i10, g2 g2Var, n2 n2Var) {
        int childCount = getChildCount();
        if (childCount == 0 || i10 == 0) {
            return 0;
        }
        int startWithPadding = getStartWithPadding();
        int endWithPadding = getEndWithPadding();
        int firstVisiblePosition = getFirstVisiblePosition();
        int totalSpace = getTotalSpace();
        int iMax = i10 < 0 ? Math.max(-(totalSpace - 1), i10) : Math.min(totalSpace - 1, i10);
        boolean z = firstVisiblePosition == 0 && this.mLayoutStart >= startWithPadding && iMax <= 0;
        if ((firstVisiblePosition + childCount == n2Var.b() && this.mLayoutEnd <= endWithPadding && iMax >= 0) || z) {
            return 0;
        }
        offsetChildren(-iMax);
        Direction direction = iMax > 0 ? Direction.END : Direction.START;
        recycleChildrenOutOfBounds(direction, g2Var);
        int iAbs = Math.abs(iMax);
        if (canAddMoreViews(Direction.START, startWithPadding - iAbs) || canAddMoreViews(Direction.END, endWithPadding + iAbs)) {
            fillGap(direction, g2Var, n2Var);
        }
        return iMax;
    }

    private void setupChild(View view, Direction direction) {
        measureChild(view, direction);
        layoutChild(view, direction);
    }

    private void updateLayoutEdgesFromNewChild(View view) {
        int childStart = getChildStart(view);
        if (childStart < this.mLayoutStart) {
            this.mLayoutStart = childStart;
        }
        int childEnd = getChildEnd(view);
        if (childEnd > this.mLayoutEnd) {
            this.mLayoutEnd = childEnd;
        }
    }

    private void updateLayoutEdgesFromRemovedChild(View view, Direction direction) {
        int i10;
        int childCount = getChildCount();
        if (childCount == 0) {
            resetLayoutEdges();
            return;
        }
        int childStart = getChildStart(view);
        int childEnd = getChildEnd(view);
        if (childStart <= this.mLayoutStart || childEnd >= this.mLayoutEnd) {
            if (direction == Direction.END) {
                this.mLayoutStart = Integer.MAX_VALUE;
                i10 = 0;
            } else {
                this.mLayoutEnd = Integer.MIN_VALUE;
                i10 = childCount - 1;
                childEnd = childStart;
            }
            while (i10 >= 0 && i10 <= childCount - 1) {
                View childAt = getChildAt(i10);
                if (direction == Direction.END) {
                    int childStart2 = getChildStart(childAt);
                    if (childStart2 < this.mLayoutStart) {
                        this.mLayoutStart = childStart2;
                    }
                    if (childStart2 >= childEnd) {
                        return;
                    } else {
                        i10++;
                    }
                } else {
                    int childEnd2 = getChildEnd(childAt);
                    if (childEnd2 > this.mLayoutEnd) {
                        this.mLayoutEnd = childEnd2;
                    }
                    if (childEnd2 <= childEnd) {
                        return;
                    } else {
                        i10--;
                    }
                }
            }
        }
    }

    public abstract boolean canAddMoreViews(Direction direction, int i10);

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return !this.mIsVertical;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mIsVertical;
    }

    public boolean cannotScrollBackward(int i10) {
        return getChildCount() + getFirstVisiblePosition() == getItemCount() && this.mLayoutEnd <= getEndWithPadding() && i10 >= 0;
    }

    public boolean cannotScrollForward(int i10) {
        return getFirstVisiblePosition() == 0 && this.mLayoutStart >= getStartWithPadding() && i10 <= 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(n2 n2Var) {
        return getChildCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(n2 n2Var) {
        return n2Var.b();
    }

    @Override // androidx.recyclerview.widget.l2
    public PointF computeScrollVectorForPosition(int i10) {
        if (getChildCount() == 0) {
            return null;
        }
        int i11 = i10 < getPosition(getChildAt(0)) ? -1 : 1;
        return !this.mIsVertical ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(n2 n2Var) {
        return getChildCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(n2 n2Var) {
        return n2Var.b();
    }

    public void detachChild(View view, Direction direction) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.mIsVertical ? new RecyclerView.LayoutParams(-1, -2) : new RecyclerView.LayoutParams(-2, -1);
    }

    public m1 getAdapter() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getAdapter();
        }
        return null;
    }

    public int getAnchorItemPosition(n2 n2Var) {
        int iB = n2Var.b();
        int pendingScrollPosition = getPendingScrollPosition();
        if (pendingScrollPosition != -1 && (pendingScrollPosition < 0 || pendingScrollPosition >= iB)) {
            pendingScrollPosition = -1;
        }
        if (pendingScrollPosition != -1) {
            return pendingScrollPosition;
        }
        if (getChildCount() > 0) {
            return findFirstValidChildPosition(iB);
        }
        return 0;
    }

    public int getChildEnd(View view) {
        return this.mIsVertical ? getDecoratedBottom(view) : getDecoratedRight(view);
    }

    public int getChildStart(View view) {
        return this.mIsVertical ? getDecoratedTop(view) : getDecoratedLeft(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedBottom(View view) {
        return super.getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedLeft(View view) {
        return super.getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedMeasuredHeight(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return super.getDecoratedMeasuredHeight(view) + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedMeasuredWidth(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return super.getDecoratedMeasuredWidth(view) + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedRight(View view) {
        return super.getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).rightMargin;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int getDecoratedTop(View view) {
        return super.getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).topMargin;
    }

    public int getEndWithPadding() {
        int width;
        int paddingRight;
        if (this.mIsVertical) {
            width = getHeight();
            paddingRight = getPaddingBottom();
        } else {
            width = getWidth();
            paddingRight = getPaddingRight();
        }
        return width - paddingRight;
    }

    public int getExtraLayoutSpace(n2 n2Var) {
        if (n2Var.f2199a != -1) {
            return getTotalSpace();
        }
        return 0;
    }

    public int getFirstVisiblePosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public int getLastVisiblePosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    public Orientation getOrientation() {
        return this.mIsVertical ? Orientation.VERTICAL : Orientation.HORIZONTAL;
    }

    public int getPendingScrollOffset() {
        if (this.mPendingSavedState != null) {
            return 0;
        }
        return (this.mPendingScrollOffset != 0 || getFirstVisiblePosition() <= 0) ? this.mPendingScrollOffset : this.mLayoutStart;
    }

    public int getPendingScrollPosition() {
        SavedState savedState = this.mPendingSavedState;
        return savedState != null ? savedState.anchorItemPosition : this.mPendingScrollPosition;
    }

    public int getStartWithPadding() {
        return this.mIsVertical ? getPaddingTop() : getPaddingLeft();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isVertical() {
        return this.mIsVertical;
    }

    public abstract void layoutChild(View view, Direction direction);

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void layoutDecorated(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        super.layoutDecorated(view, i10 + marginLayoutParams.leftMargin, i11 + marginLayoutParams.topMargin, i12 - marginLayoutParams.rightMargin, i13 - marginLayoutParams.bottomMargin);
    }

    public abstract void measureChild(View view, Direction direction);

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(m1 m1Var, m1 m1Var2) {
        super.onAdapterChanged(m1Var, m1Var2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mRecyclerView = recyclerView;
        if (this.mLayoutStart == 0) {
            this.mLayoutStart = getStartWithPadding();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
        super.onDetachedFromWindow(recyclerView, g2Var);
        this.mRecyclerView = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        handleUpdate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        handleUpdate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        handleUpdate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        int anchorItemPosition = getAnchorItemPosition(n2Var);
        detachAndScrapAttachedViews(g2Var);
        fillSpecific(anchorItemPosition, g2Var, n2Var);
        onLayoutScrapList(g2Var, n2Var);
        setPendingScrollPositionWithOffset(-1, 0);
        this.mPendingSavedState = null;
    }

    public void onLayoutScrapList(g2 g2Var, n2 n2Var) {
        if (getChildCount() == 0 || n2Var.f2205g || !supportsPredictiveItemAnimations()) {
            return;
        }
        List<RecyclerView.ViewHolder> list = g2Var.f2133d;
        fillFromScrapList(list, Direction.START);
        fillFromScrapList(list, Direction.END);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(g2 g2Var, n2 n2Var, int i10, int i11) {
        super.onMeasure(g2Var, n2Var, i10, i11);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mPendingSavedState = (SavedState) parcelable;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(SavedState.EMPTY_STATE);
        int pendingScrollPosition = getPendingScrollPosition();
        if (pendingScrollPosition == -1) {
            pendingScrollPosition = getFirstVisiblePosition();
        }
        savedState.anchorItemPosition = pendingScrollPosition;
        savedState.itemSelectionState = Bundle.EMPTY;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
        return recyclerView instanceof TvRecyclerView ? recyclerView.requestChildRectangleOnScreen(view, rect, z) : super.requestChildRectangleOnScreen(recyclerView, view, rect, z, z4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (this.mIsVertical) {
            return 0;
        }
        return scrollBy(i10, g2Var, n2Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        scrollToPositionWithOffset(i10, 0);
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        setPendingScrollPositionWithOffset(i10, i11);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
        if (this.mIsVertical) {
            return scrollBy(i10, g2Var, n2Var);
        }
        return 0;
    }

    public void setOrientation(Orientation orientation) {
        boolean z = orientation == Orientation.VERTICAL;
        if (this.mIsVertical == z) {
            return;
        }
        this.mIsVertical = z;
        requestLayout();
    }

    public void setPendingScrollPositionWithOffset(int i10, int i11) {
        this.mPendingScrollPosition = i10;
        this.mPendingScrollOffset = i11;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        a1 a1Var = new a1(recyclerView.getContext()) { // from class: com.owen.tvrecyclerview.TwoWayLayoutManager.1
            @Override // androidx.recyclerview.widget.a1
            public int calculateDtToFit(int i11, int i12, int i13, int i14, int i15) {
                return i13 - i11;
            }
        };
        a1Var.setTargetPosition(i10);
        startSmoothScroll(a1Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public static class SavedState implements Parcelable {
        private int anchorItemPosition;
        private Bundle itemSelectionState;
        private final Parcelable superState;
        protected static final SavedState EMPTY_STATE = new SavedState();
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.owen.tvrecyclerview.TwoWayLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        };

        private SavedState() {
            this.superState = null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Parcelable getSuperState() {
            return this.superState;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.anchorItemPosition);
            parcel.writeParcelable(this.itemSelectionState, i10);
        }

        public SavedState(Parcelable parcelable) {
            if (parcelable != null) {
                this.superState = parcelable == EMPTY_STATE ? null : parcelable;
                return;
            }
            throw new IllegalArgumentException("superState must not be null");
        }

        public SavedState(Parcel parcel) {
            this.superState = EMPTY_STATE;
            this.anchorItemPosition = parcel.readInt();
            this.itemSelectionState = (Bundle) parcel.readParcelable(getClass().getClassLoader());
        }
    }

    public TwoWayLayoutManager(Context context, AttributeSet attributeSet, int i10) {
        int i11;
        this.mIsVertical = true;
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollOffset = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17648b, i10, 0);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i12 = 0; i12 < indexCount; i12++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i12);
            if (index == 0 && (i11 = typedArrayObtainStyledAttributes.getInt(index, -1)) >= 0) {
                setOrientation(Orientation.values()[i11]);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void fillAfter(int i10, g2 g2Var, n2 n2Var, int i11) {
        int endWithPadding = getEndWithPadding() + i11;
        int iB = n2Var.b();
        while (true) {
            Direction direction = Direction.END;
            if (!canAddMoreViews(direction, endWithPadding) || i10 >= iB) {
                return;
            }
            makeAndAddView(i10, direction, g2Var);
            i10++;
        }
    }

    private void fillBefore(int i10, g2 g2Var, int i11) {
        int startWithPadding = getStartWithPadding() - i11;
        while (true) {
            Direction direction = Direction.START;
            if (!canAddMoreViews(direction, startWithPadding) || i10 < 0) {
                return;
            }
            makeAndAddView(i10, direction, g2Var);
            i10--;
        }
    }

    public TwoWayLayoutManager(Orientation orientation) {
        this.mIsVertical = true;
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollOffset = 0;
        this.mIsVertical = orientation == Orientation.VERTICAL;
    }
}

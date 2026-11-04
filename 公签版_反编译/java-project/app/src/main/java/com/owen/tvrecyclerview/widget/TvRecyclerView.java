package com.owen.tvrecyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a1;
import androidx.recyclerview.widget.j2;
import androidx.recyclerview.widget.k2;
import androidx.recyclerview.widget.m1;
import androidx.recyclerview.widget.n2;
import androidx.recyclerview.widget.o1;
import androidx.recyclerview.widget.u2;
import com.owen.tvrecyclerview.BaseLayoutManager;
import com.owen.tvrecyclerview.TwoWayLayoutManager;
import com.owen.tvrecyclerview.utils.Loger;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.WeakHashMap;
import ta.q;
import w9.a;
import x0.b1;
import x0.i0;

/* loaded from: classes.dex */
public class TvRecyclerView extends RecyclerView implements View.OnClickListener, View.OnFocusChangeListener {
    private static final int DEFAULT_LOAD_MORE_BEFOREHAND_COUNT = 4;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class, Integer.TYPE};
    private final IRecyclerViewDataObserver mDataObserver;
    private boolean mHasFocusWithPrevious;
    private boolean mHasMoreData;
    public int mHorizontalSpacingWithMargins;
    private boolean mIsMemoryFocus;
    private boolean mIsMenu;
    private int mLoadMoreBeforehandCount;
    private boolean mLoadingMore;
    private int mOldHorizontalSpacingWithMargins;
    private int mOldVerticalSpacingWithMargins;
    private OnInBorderKeyEventListener mOnInBorderKeyEventListener;
    private OnItemListener mOnItemListener;
    private OnLoadMoreListener mOnLoadMoreListener;
    private boolean mOptimizeLayout;
    private Point mScrollPoint;
    protected int mScrollX;
    protected int mScrollY;
    private boolean mSelectedItemCentered;
    private int mSelectedItemOffsetEnd;
    private int mSelectedItemOffsetStart;
    private int mSelectedPosition;
    private boolean mShouldReverseLayout;
    private final Rect mTempRect;
    public int mVerticalSpacingWithMargins;

    public class IRecyclerViewDataObserver extends o1 {
        public /* synthetic */ IRecyclerViewDataObserver(TvRecyclerView tvRecyclerView, int i10) {
            this();
        }

        @Override // androidx.recyclerview.widget.o1
        public void onChanged() {
            Loger.i("RecyclerView Data Changed!!!");
            TvRecyclerView.this.mShouldReverseLayout = true;
        }

        private IRecyclerViewDataObserver() {
        }
    }

    public static class ISavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<ISavedState> CREATOR = new Parcelable.Creator<ISavedState>() { // from class: com.owen.tvrecyclerview.widget.TvRecyclerView.ISavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ISavedState createFromParcel(Parcel parcel) {
                return new ISavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ISavedState[] newArray(int i10) {
                return new ISavedState[i10];
            }
        };
        private boolean mHasMoreData;
        private int mHorizontalSpacingWithMargins;
        private Parcelable mISuperState;
        private boolean mIsMenu;
        private boolean mIsSelectFirstVisiblePosition;
        private int mOldHorizontalSpacingWithMargins;
        private int mOldVerticalSpacingWithMargins;
        private boolean mSelectedItemCentered;
        private int mSelectedItemOffsetEnd;
        private int mSelectedItemOffsetStart;
        private int mSelectedPosition;
        private int mVerticalSpacingWithMargins;

        public ISavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.mISuperState, 0);
            parcel.writeInt(this.mSelectedPosition);
            parcel.writeInt(this.mVerticalSpacingWithMargins);
            parcel.writeInt(this.mHorizontalSpacingWithMargins);
            parcel.writeInt(this.mOldVerticalSpacingWithMargins);
            parcel.writeInt(this.mOldHorizontalSpacingWithMargins);
            parcel.writeInt(this.mSelectedItemOffsetStart);
            parcel.writeInt(this.mSelectedItemOffsetEnd);
            parcel.writeBooleanArray(new boolean[]{this.mSelectedItemCentered, this.mIsMenu, this.mHasMoreData, this.mIsSelectFirstVisiblePosition});
        }

        public ISavedState(Parcel parcel) {
            super(parcel);
            this.mISuperState = parcel.readParcelable(RecyclerView.class.getClassLoader());
            this.mSelectedPosition = parcel.readInt();
            this.mVerticalSpacingWithMargins = parcel.readInt();
            this.mHorizontalSpacingWithMargins = parcel.readInt();
            this.mOldVerticalSpacingWithMargins = parcel.readInt();
            this.mOldHorizontalSpacingWithMargins = parcel.readInt();
            this.mSelectedItemOffsetStart = parcel.readInt();
            this.mSelectedItemOffsetEnd = parcel.readInt();
            boolean[] zArr = new boolean[4];
            parcel.readBooleanArray(zArr);
            this.mSelectedItemCentered = zArr[0];
            this.mIsMenu = zArr[1];
            this.mHasMoreData = zArr[2];
            this.mIsSelectFirstVisiblePosition = zArr[3];
        }
    }

    public interface OnInBorderKeyEventListener {
        boolean onInBorderKeyEvent(int i10, View view);
    }

    public interface OnItemListener {
        void onItemClick(TvRecyclerView tvRecyclerView, View view, int i10);

        void onItemPreSelected(TvRecyclerView tvRecyclerView, View view, int i10);

        void onItemSelected(TvRecyclerView tvRecyclerView, View view, int i10);
    }

    public interface OnLoadMoreListener {
        void onLoadMore();
    }

    public class TvSmoothScroller extends a1 {
        private boolean mIsSmooth;
        private int mOffset;
        private boolean mRequestFocus;

        public TvSmoothScroller(Context context, boolean z, boolean z4, int i10) {
            super(context);
            this.mRequestFocus = z;
            this.mIsSmooth = z4;
            this.mOffset = i10;
        }

        @Override // androidx.recyclerview.widget.a1
        public int calculateDtToFit(int i10, int i11, int i12, int i13, int i14) {
            StringBuilder sbO = q.o(i10, i12, "zsq viewStart=", " boxStart=", " mOffset=");
            sbO.append(this.mOffset);
            Loger.i(sbO.toString());
            int i15 = (i12 - i10) + this.mOffset;
            Loger.i("zsq dt=" + i15);
            return i15;
        }

        @Override // androidx.recyclerview.widget.a1
        public int calculateTimeForScrolling(int i10) {
            if (this.mIsSmooth) {
                return super.calculateTimeForScrolling(i10);
            }
            return (int) Math.ceil((4.0f / TvRecyclerView.this.getContext().getResources().getDisplayMetrics().densityDpi) * Math.abs(i10));
        }

        @Override // androidx.recyclerview.widget.a1, androidx.recyclerview.widget.m2
        public void onStop() {
            Loger.i("zzssqq SmoothScroller onStop");
            if (this.mRequestFocus) {
                final int targetPosition = getTargetPosition();
                TvRecyclerView.this.postDelayed(new Runnable() { // from class: com.owen.tvrecyclerview.widget.TvRecyclerView.TvSmoothScroller.1
                    @Override // java.lang.Runnable
                    public void run() {
                        View viewFindViewByPosition = TvRecyclerView.this.getLayoutManager().findViewByPosition(targetPosition);
                        if (viewFindViewByPosition == null) {
                            Loger.i("zzssqq itemView is null position=" + targetPosition);
                        } else {
                            Loger.i("zzssqq position=" + targetPosition);
                            if (!TvRecyclerView.this.hasFocus()) {
                                TvRecyclerView.this.onFocusChanged(true, 130, null);
                            }
                            viewFindViewByPosition.requestFocus();
                        }
                    }
                }, this.mIsSmooth ? 400L : 100L);
            }
            super.onStop();
        }

        @Override // androidx.recyclerview.widget.a1, androidx.recyclerview.widget.m2
        public void onTargetFound(View view, n2 n2Var, k2 k2Var) {
            int freeHeight;
            int iHeight;
            if (TvRecyclerView.this.mSelectedItemCentered && getLayoutManager() != null) {
                TvRecyclerView tvRecyclerView = TvRecyclerView.this;
                tvRecyclerView.getDecoratedBoundsWithMargins(view, tvRecyclerView.mTempRect);
                if (getLayoutManager().canScrollHorizontally()) {
                    freeHeight = TvRecyclerView.this.getFreeWidth();
                    iHeight = TvRecyclerView.this.mTempRect.width();
                } else {
                    freeHeight = TvRecyclerView.this.getFreeHeight();
                    iHeight = TvRecyclerView.this.mTempRect.height();
                }
                this.mOffset = (freeHeight - iHeight) / 2;
            }
            super.onTargetFound(view, n2Var, k2Var);
        }
    }

    public TvRecyclerView(Context context) {
        this(context, null);
    }

    private void adjustPadding() {
        int i10 = this.mVerticalSpacingWithMargins;
        if (i10 >= 0 || this.mHorizontalSpacingWithMargins >= 0) {
            int i11 = i10 / 2;
            int i12 = this.mHorizontalSpacingWithMargins / 2;
            int i13 = this.mOldVerticalSpacingWithMargins / 2;
            int i14 = this.mOldHorizontalSpacingWithMargins / 2;
            setPadding((getPaddingLeft() + i14) - i12, (getPaddingTop() + i13) - i11, (getPaddingRight() + i14) - i12, (getPaddingBottom() + i13) - i11);
        }
    }

    private int computeScrollOffset(int i10, int i11, int i12, int i13) {
        StringBuilder sbO = q.o(i10, i11, "zsq start=", " end=", " offsetStart=");
        sbO.append(i12);
        sbO.append(" offsetEnd=");
        sbO.append(i13);
        Loger.i(sbO.toString());
        Loger.i("zsq canScrollHorizontally( -1)=" + canScrollHorizontally(-1) + " canScrollVertically( -1)=" + canScrollVertically(-1));
        if (i11 > 0) {
            return getLastVisiblePosition() != getItemCount() - 1 ? i11 + i13 : i11;
        }
        if (i10 < 0) {
            return getFirstVisiblePosition() != 0 ? i10 - i12 : i10;
        }
        if (i10 > 0 && i10 < i12 && (canScrollHorizontally(-1) || canScrollVertically(-1))) {
            return i10 - i12;
        }
        if (Math.abs(i11) <= 0 || Math.abs(i11) >= i13) {
            return 0;
        }
        if (canScrollHorizontally(1) || canScrollVertically(1)) {
            return i13 - Math.abs(i11);
        }
        return 0;
    }

    private void createLayoutManager(Context context, String str, AttributeSet attributeSet, int i10) throws NoSuchMethodException, SecurityException {
        Object[] objArr;
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.length() != 0) {
                String fullClassName = getFullClassName(context, strTrim);
                try {
                    Class<? extends U> clsAsSubclass = (isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).loadClass(fullClassName).asSubclass(RecyclerView.LayoutManager.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i10)};
                    } catch (NoSuchMethodException e7) {
                        objArr = null;
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e10) {
                            e10.initCause(e7);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + fullClassName, e10);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((RecyclerView.LayoutManager) constructor.newInstance(objArr));
                } catch (ClassCastException e11) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + fullClassName, e11);
                } catch (ClassNotFoundException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + fullClassName, e12);
                } catch (IllegalAccessException e13) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + fullClassName, e13);
                } catch (InstantiationException e14) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e14);
                } catch (InvocationTargetException e15) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + fullClassName, e15);
                }
            }
        }
    }

    private View findNextFocus(int i10) {
        return FocusFinder.getInstance().findNextFocus(this, getFocusedChild(), i10);
    }

    private int[] getChildRectangleOnScreenScrollAmount2(View view, Rect rect, int i10, int i11) {
        int i12;
        int iComputeScrollOffset;
        int i13 = 0;
        if (getLayoutManager() != null) {
            getDecoratedBoundsWithMargins(view, this.mTempRect);
            if (getLayoutManager().canScrollHorizontally()) {
                int paddingRight = (getPaddingRight() + this.mTempRect.right) - getWidth();
                int paddingLeft = this.mTempRect.left - getPaddingLeft();
                Loger.i("zsq left=" + paddingLeft + " right=" + paddingRight);
                iComputeScrollOffset = computeScrollOffset(paddingLeft, paddingRight, i10, i11);
            } else {
                iComputeScrollOffset = 0;
            }
            if (getLayoutManager().canScrollVertically()) {
                int paddingBottom = (getPaddingBottom() + this.mTempRect.bottom) - getHeight();
                int paddingTop = this.mTempRect.top - getPaddingTop();
                Loger.i("zsq top=" + paddingTop + " bottom=" + paddingBottom);
                int iComputeScrollOffset2 = computeScrollOffset(paddingTop, paddingBottom, i10, i11);
                i13 = iComputeScrollOffset;
                i12 = iComputeScrollOffset2;
            } else {
                i13 = iComputeScrollOffset;
                i12 = 0;
            }
        } else {
            i12 = 0;
        }
        Loger.i("zsq dx=" + i13 + " dy=" + i12);
        return new int[]{i13, i12};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFreeHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFreeWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private String getFullClassName(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return TvRecyclerView.class.getPackage().getName() + '.' + str;
    }

    private boolean hasInBorder(int i10, View view, View view2) {
        if (i10 == 17) {
            if (view2 != null) {
                return false;
            }
            return !canScrollHorizontally(-1);
        }
        if (i10 == 33) {
            if (view2 != null) {
                return false;
            }
            return !canScrollVertically(-1);
        }
        if (i10 == 66) {
            boolean zCanScrollHorizontally = canScrollHorizontally(1);
            if (view2 == null || zCanScrollHorizontally) {
                return !zCanScrollHorizontally;
            }
            if (view == null) {
                return false;
            }
            int iAbs = Math.abs(((getWidth() - view.getRight()) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).rightMargin) - getPaddingRight());
            Loger.i("zsq offset=" + iAbs);
            return iAbs <= 2;
        }
        if (i10 != 130) {
            return false;
        }
        boolean zCanScrollVertically = canScrollVertically(1);
        if (view2 == null || zCanScrollVertically) {
            return !zCanScrollVertically;
        }
        if (view == null) {
            return false;
        }
        int iAbs2 = Math.abs(((getHeight() - view.getBottom()) - ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin) - getPaddingBottom());
        Loger.i("zsq offset=" + iAbs2);
        return iAbs2 <= 2;
    }

    private void init(Context context) {
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setHasFixedSize(true);
        setOverScrollMode(2);
        setClipChildren(false);
        setClipToPadding(false);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (getItemAnimator() != null) {
            ((u2) getItemAnimator()).f2316g = false;
        }
    }

    private void resetAdapter(m1 m1Var, boolean z) {
        m1 adapter = getAdapter();
        if (adapter != null) {
            adapter.f2188a.unregisterObserver(this.mDataObserver);
            this.mShouldReverseLayout = true;
        }
        m1Var.o(this.mDataObserver);
        View childAt = getChildAt(0);
        if (childAt == null || adapter == null || !(getLayoutManager() instanceof BaseLayoutManager)) {
            this.mSelectedPosition = getFirstVisibleAndFocusablePosition();
        } else {
            this.mHasFocusWithPrevious = hasFocus();
            int decoratedTop = (getLayoutManager().canScrollVertically() ? getLayoutManager().getDecoratedTop(childAt) : getLayoutManager().getDecoratedLeft(childAt)) - (getLayoutManager().canScrollVertically() ? getPaddingTop() : getPaddingLeft());
            scrollBy(decoratedTop, decoratedTop);
        }
        if (z) {
            this.mSelectedPosition = -1;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        if (hasFocus() || !isFocusable()) {
            super.addFocusables(arrayList, i10, i11);
        } else {
            arrayList.add(this);
        }
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (getLayoutManager() == null || !(getLayoutManager() instanceof TwoWayLayoutManager)) {
            return super.canScrollHorizontally(i10);
        }
        TwoWayLayoutManager twoWayLayoutManager = (TwoWayLayoutManager) getLayoutManager();
        return twoWayLayoutManager.canScrollHorizontally() && (i10 <= 0 ? !twoWayLayoutManager.cannotScrollForward(i10) : !twoWayLayoutManager.cannotScrollBackward(i10));
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i10) {
        if (getLayoutManager() == null || !(getLayoutManager() instanceof TwoWayLayoutManager)) {
            return super.canScrollVertically(i10);
        }
        TwoWayLayoutManager twoWayLayoutManager = (TwoWayLayoutManager) getLayoutManager();
        return twoWayLayoutManager.canScrollVertically() && (i10 <= 0 ? !twoWayLayoutManager.cannotScrollForward(i10) : !twoWayLayoutManager.cannotScrollBackward(i10));
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        int i10;
        boolean zCheckLayoutParams = super.checkLayoutParams(layoutParams);
        if (zCheckLayoutParams && ((i10 = this.mVerticalSpacingWithMargins) >= 0 || this.mHorizontalSpacingWithMargins >= 0)) {
            int i11 = i10 / 2;
            int i12 = this.mHorizontalSpacingWithMargins / 2;
            ((RecyclerView.LayoutParams) layoutParams).setMargins(i12, i11, i12, i11);
        }
        return zCheckLayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i10) {
        return super.dispatchUnhandledMove(view, i10);
    }

    public void finishLoadMore() {
        this.mLoadingMore = false;
    }

    public void finishLoadMoreWithNoMore() {
        this.mLoadingMore = false;
        setHasMoreData(false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View viewFindNextFocus = findNextFocus(i10);
        if (!hasInBorder(i10, view, viewFindNextFocus)) {
            return viewFindNextFocus;
        }
        OnInBorderKeyEventListener onInBorderKeyEventListener = this.mOnInBorderKeyEventListener;
        if (onInBorderKeyEventListener == null || !onInBorderKeyEventListener.onInBorderKeyEvent(i10, view)) {
            return super.focusSearch(view, i10);
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        View focusedChild = getFocusedChild();
        if (focusedChild != null) {
            int iIndexOfChild = indexOfChild(focusedChild);
            int i12 = i10 - 1;
            if (i11 == i12) {
                return iIndexOfChild > i11 ? i11 : iIndexOfChild;
            }
            if (iIndexOfChild == i11) {
                return i12;
            }
        }
        return i11;
    }

    public int getFirstVisibleAndFocusablePosition() {
        for (int firstVisiblePosition = getFirstVisiblePosition(); firstVisiblePosition < getChildCount(); firstVisiblePosition++) {
            View viewFindViewByPosition = getLayoutManager().findViewByPosition(firstVisiblePosition);
            if (viewFindViewByPosition != null && viewFindViewByPosition.isFocusable()) {
                return firstVisiblePosition;
            }
        }
        return -1;
    }

    public int getFirstVisiblePosition() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getLayoutManager() instanceof LinearLayoutManager ? ((LinearLayoutManager) getLayoutManager()).findFirstVisibleItemPosition() : getChildAdapterPosition(getChildAt(0));
    }

    public int getItemCount() {
        if (getAdapter() != null) {
            return getAdapter().b();
        }
        return 0;
    }

    public int getLastVisibleAndFocusablePosition() {
        int firstVisiblePosition = getFirstVisiblePosition();
        for (int lastVisiblePosition = getLastVisiblePosition(); lastVisiblePosition >= firstVisiblePosition; lastVisiblePosition--) {
            View viewFindViewByPosition = getLayoutManager().findViewByPosition(lastVisiblePosition);
            if (viewFindViewByPosition != null && viewFindViewByPosition.isFocusable()) {
                return lastVisiblePosition;
            }
        }
        return -1;
    }

    public int getLastVisiblePosition() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getLayoutManager() instanceof LinearLayoutManager ? ((LinearLayoutManager) getLayoutManager()).findLastVisibleItemPosition() : getChildAdapterPosition(getChildAt(childCount - 1));
    }

    public int getLoadMoreBeforehandCount() {
        return this.mLoadMoreBeforehandCount;
    }

    public int getSelectedItemOffsetEnd() {
        return this.mSelectedItemOffsetEnd;
    }

    public int getSelectedItemOffsetStart() {
        return this.mSelectedItemOffsetStart;
    }

    public int getSelectedPosition() {
        return this.mSelectedPosition;
    }

    public boolean hasMoreData() {
        return this.mHasMoreData;
    }

    @Override // android.view.View
    public boolean isInEditMode() {
        return true;
    }

    public boolean isLoadingMore() {
        return this.mLoadingMore;
    }

    public boolean isMemoryFocus() {
        return this.mIsMemoryFocus;
    }

    public boolean isMenu() {
        return this.mIsMenu;
    }

    public boolean isScrolling() {
        return getScrollState() != 0;
    }

    public boolean isSelectedItemCentered() {
        return this.mSelectedItemCentered;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onChildAttachedToWindow(View view) {
        if (view.isClickable()) {
            WeakHashMap weakHashMap = b1.f17953a;
            if (!i0.a(view)) {
                view.setOnClickListener(this);
            }
        }
        if (view.isFocusable() && view.getOnFocusChangeListener() == null) {
            view.setOnFocusChangeListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnItemListener onItemListener = this.mOnItemListener;
        if (onItemListener == null || this == view) {
            return;
        }
        onItemListener.onItemClick(this, view, getChildAdapterPosition(view));
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(final View view, boolean z) {
        if (view != null) {
            int childAdapterPosition = getChildAdapterPosition(view);
            final boolean z4 = view instanceof RecyclerView;
            if (!z4) {
                view.setSelected(z);
            }
            if (!z) {
                view.postDelayed(new Runnable() { // from class: com.owen.tvrecyclerview.widget.TvRecyclerView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (TvRecyclerView.this.hasFocus()) {
                            return;
                        }
                        if (TvRecyclerView.this.mIsMenu && !z4) {
                            view.setActivated(true);
                        }
                        if (TvRecyclerView.this.getOnFocusChangeListener() != null) {
                            TvRecyclerView.this.getOnFocusChangeListener().onFocusChange(TvRecyclerView.this, false);
                        }
                    }
                }, 6L);
                OnItemListener onItemListener = this.mOnItemListener;
                if (onItemListener == null || z4) {
                    return;
                }
                onItemListener.onItemPreSelected(this, view, childAdapterPosition);
                return;
            }
            this.mSelectedPosition = childAdapterPosition;
            if (z4) {
                return;
            }
            if (this.mIsMenu && view.isActivated()) {
                view.setActivated(false);
            }
            OnItemListener onItemListener2 = this.mOnItemListener;
            if (onItemListener2 != null) {
                onItemListener2.onItemSelected(this, view, childAdapterPosition);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        boolean zHasFocus;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.mHasFocusWithPrevious = this.mHasFocusWithPrevious || hasFocus();
        Loger.i("onLayout...start hasFocus()=" + this.mHasFocusWithPrevious + " changed=" + z + " ,mShouldReverseLayout=" + this.mShouldReverseLayout);
        if (!this.mOptimizeLayout || z || this.mShouldReverseLayout) {
            super.onLayout(z, i10, i11, i12, i13);
            this.mShouldReverseLayout = false;
            zHasFocus = hasFocus();
            if (!zHasFocus) {
                int i14 = this.mSelectedPosition;
                if (i14 < 0) {
                    this.mSelectedPosition = getFirstVisibleAndFocusablePosition();
                } else if (i14 >= getItemCount()) {
                    this.mSelectedPosition = getLastVisibleAndFocusablePosition();
                }
                if (this.mHasFocusWithPrevious && getPreserveFocusAfterLayout()) {
                    requestDefaultFocus();
                } else if (this.mIsMenu) {
                    setItemActivated(this.mSelectedPosition);
                }
            }
        } else {
            zHasFocus = hasFocus();
        }
        this.mHasFocusWithPrevious = false;
        Loger.i("onLayout...end layoutAfterFocus=" + zHasFocus + ". used time " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0f) + "s");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onMeasure(int i10, int i11) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Loger.i("onMeasure...start");
        super.onMeasure(i10, i11);
        Loger.i("onMeasure...end. used time " + ((System.currentTimeMillis() - jCurrentTimeMillis) / 1000.0f) + "s");
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int firstVisibleAndFocusablePosition = this.mSelectedPosition;
        if (firstVisibleAndFocusablePosition == -1 || !this.mIsMemoryFocus) {
            firstVisibleAndFocusablePosition = getFirstVisibleAndFocusablePosition();
        }
        View viewFindViewByPosition = getLayoutManager() != null ? getLayoutManager().findViewByPosition(firstVisibleAndFocusablePosition) : null;
        if (viewFindViewByPosition == null) {
            return super.onRequestFocusInDescendants(i10, rect);
        }
        if (getOnFocusChangeListener() != null) {
            getOnFocusChangeListener().onFocusChange(this, true);
        }
        return viewFindViewByPosition.requestFocus(i10, rect);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable != null) {
            if (!(parcelable instanceof ISavedState)) {
                super.onRestoreInstanceState(parcelable);
                return;
            }
            ISavedState iSavedState = (ISavedState) parcelable;
            this.mSelectedPosition = iSavedState.mSelectedPosition;
            this.mVerticalSpacingWithMargins = iSavedState.mVerticalSpacingWithMargins;
            this.mHorizontalSpacingWithMargins = iSavedState.mHorizontalSpacingWithMargins;
            this.mOldVerticalSpacingWithMargins = iSavedState.mOldVerticalSpacingWithMargins;
            this.mOldHorizontalSpacingWithMargins = iSavedState.mOldHorizontalSpacingWithMargins;
            this.mSelectedItemOffsetStart = iSavedState.mSelectedItemOffsetStart;
            this.mSelectedItemOffsetEnd = iSavedState.mSelectedItemOffsetEnd;
            this.mSelectedItemCentered = iSavedState.mSelectedItemCentered;
            this.mIsMenu = iSavedState.mIsMenu;
            this.mHasMoreData = iSavedState.mHasMoreData;
            this.mIsMemoryFocus = iSavedState.mIsSelectFirstVisiblePosition;
            try {
                super.onRestoreInstanceState(iSavedState.mISuperState);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public Parcelable onSaveInstanceState() {
        j2 j2Var = (j2) super.onSaveInstanceState();
        ISavedState iSavedState = new ISavedState(j2Var.f4709a);
        iSavedState.mISuperState = j2Var;
        iSavedState.mSelectedPosition = this.mSelectedPosition;
        iSavedState.mVerticalSpacingWithMargins = this.mVerticalSpacingWithMargins;
        iSavedState.mHorizontalSpacingWithMargins = this.mHorizontalSpacingWithMargins;
        iSavedState.mOldVerticalSpacingWithMargins = this.mOldVerticalSpacingWithMargins;
        iSavedState.mOldHorizontalSpacingWithMargins = this.mOldHorizontalSpacingWithMargins;
        iSavedState.mSelectedItemOffsetStart = this.mSelectedItemOffsetStart;
        iSavedState.mSelectedItemOffsetEnd = this.mSelectedItemOffsetEnd;
        iSavedState.mSelectedItemCentered = this.mSelectedItemCentered;
        iSavedState.mIsMenu = this.mIsMenu;
        iSavedState.mHasMoreData = this.mHasMoreData;
        iSavedState.mIsSelectFirstVisiblePosition = this.mIsMemoryFocus;
        return iSavedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i10) {
        if (i10 == 0) {
            setScrollValue(0, 0);
            if (this.mOnLoadMoreListener == null || this.mLoadingMore || !this.mHasMoreData || getLastVisiblePosition() < getAdapter().b() - (this.mLoadMoreBeforehandCount + 1)) {
                return;
            }
            this.mLoadingMore = true;
            this.mOnLoadMoreListener.onLoadMore();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int freeHeight;
        int iHeight;
        if (view == null || getLayoutManager() == null) {
            return false;
        }
        if (this.mSelectedItemCentered) {
            getDecoratedBoundsWithMargins(view, this.mTempRect);
            if (getLayoutManager().canScrollHorizontally()) {
                freeHeight = getFreeWidth();
                iHeight = this.mTempRect.width();
            } else {
                freeHeight = getFreeHeight();
                iHeight = this.mTempRect.height();
            }
            int i10 = (freeHeight - iHeight) / 2;
            this.mSelectedItemOffsetStart = i10;
            this.mSelectedItemOffsetEnd = i10;
        }
        int[] childRectangleOnScreenScrollAmount2 = getChildRectangleOnScreenScrollAmount2(view, rect, this.mSelectedItemOffsetStart, this.mSelectedItemOffsetEnd);
        int i11 = childRectangleOnScreenScrollAmount2[0];
        int i12 = childRectangleOnScreenScrollAmount2[1];
        Loger.i("dx=" + i11 + " dy=" + i12);
        smoothScrollBy(i11, i12);
        if (i11 != 0 || i12 != 0) {
            return true;
        }
        postInvalidate();
        return false;
    }

    public void requestDefaultFocus() {
        Loger.i("zqq requestDefaultFocus");
        if (!this.mIsMenu && !this.mIsMemoryFocus) {
            setSelection(getFirstVisibleAndFocusablePosition());
            return;
        }
        if (this.mSelectedPosition < 0) {
            this.mSelectedPosition = getFirstVisibleAndFocusablePosition();
        }
        setSelection(this.mSelectedPosition);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void scrollToPosition(int i10) {
        scrollToPositionWithOffset(i10, this.mSelectedItemOffsetStart);
    }

    public void scrollToPositionWithOffset(int i10, int i11) {
        scrollToPositionWithOffset(i10, i11, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setAdapter(m1 m1Var) {
        if (m1Var == null) {
            return;
        }
        resetAdapter(m1Var, false);
        super.setAdapter(m1Var);
    }

    public void setHasMoreData(boolean z) {
        this.mHasMoreData = z;
    }

    public void setItemActivated(int i10) {
        int i11 = this.mSelectedPosition;
        if (i10 != i11) {
            RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = findViewHolderForLayoutPosition(i11);
            if (viewHolderFindViewHolderForLayoutPosition != null && viewHolderFindViewHolderForLayoutPosition.itemView.isActivated()) {
                viewHolderFindViewHolderForLayoutPosition.itemView.setActivated(false);
            }
            this.mSelectedPosition = i10;
        }
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition2 = findViewHolderForLayoutPosition(i10);
        if (viewHolderFindViewHolderForLayoutPosition2 == null || viewHolderFindViewHolderForLayoutPosition2.itemView.isActivated()) {
            return;
        }
        viewHolderFindViewHolderForLayoutPosition2.itemView.setActivated(true);
    }

    public void setLoadMoreBeforehandCount(int i10) {
        this.mLoadMoreBeforehandCount = i10;
    }

    public void setMemoryFocus(boolean z) {
        this.mIsMemoryFocus = z;
    }

    public void setMenu(boolean z) {
        this.mIsMenu = z;
    }

    public void setOnInBorderKeyEventListener(OnInBorderKeyEventListener onInBorderKeyEventListener) {
        this.mOnInBorderKeyEventListener = onInBorderKeyEventListener;
    }

    public void setOnItemListener(OnItemListener onItemListener) {
        this.mOnItemListener = onItemListener;
    }

    public void setOnLoadMoreListener(OnLoadMoreListener onLoadMoreListener) {
        this.mOnLoadMoreListener = onLoadMoreListener;
    }

    public void setScrollValue(int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            setTag(null);
        } else {
            this.mScrollPoint.set(i10, i11);
            setTag(this.mScrollPoint);
        }
    }

    public void setSelectedItemAtCentered(boolean z) {
        this.mSelectedItemCentered = z;
    }

    public void setSelectedItemOffset(int i10, int i11) {
        this.mSelectedItemOffsetStart = i10;
        this.mSelectedItemOffsetEnd = i11;
    }

    public void setSelectedPosition(int i10) {
        this.mSelectedPosition = i10;
    }

    public void setSelection(final int i10) {
        post(new Runnable() { // from class: com.owen.tvrecyclerview.widget.TvRecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                int i11;
                if (TvRecyclerView.this.getAdapter() == null || (i11 = i10) < 0 || i11 >= TvRecyclerView.this.getItemCount()) {
                    return;
                }
                TvRecyclerView.this.mSelectedPosition = i10;
                View viewFindViewByPosition = TvRecyclerView.this.getLayoutManager() != null ? TvRecyclerView.this.getLayoutManager().findViewByPosition(i10) : null;
                if (viewFindViewByPosition != null) {
                    if (!TvRecyclerView.this.hasFocus()) {
                        TvRecyclerView.this.onFocusChanged(true, 130, null);
                    }
                    viewFindViewByPosition.requestFocus();
                } else {
                    TvRecyclerView tvRecyclerView = TvRecyclerView.this;
                    TvSmoothScroller tvSmoothScroller = tvRecyclerView.new TvSmoothScroller(tvRecyclerView.getContext(), true, false, TvRecyclerView.this.mSelectedItemOffsetStart);
                    tvSmoothScroller.setTargetPosition(i10);
                    TvRecyclerView.this.getLayoutManager().startSmoothScroll(tvSmoothScroller);
                }
            }
        });
    }

    public void setSelectionWithSmooth(int i10) {
        if (getAdapter() == null || i10 < 0 || i10 >= getItemCount()) {
            return;
        }
        this.mSelectedPosition = i10;
        TvSmoothScroller tvSmoothScroller = new TvSmoothScroller(getContext(), true, true, this.mSelectedItemOffsetStart);
        tvSmoothScroller.setTargetPosition(i10);
        getLayoutManager().startSmoothScroll(tvSmoothScroller);
    }

    public void setSpacingWithMargins(int i10, int i11) {
        int i12 = this.mVerticalSpacingWithMargins;
        if (i12 == i10 && this.mHorizontalSpacingWithMargins == i11) {
            return;
        }
        this.mOldVerticalSpacingWithMargins = i12;
        this.mOldHorizontalSpacingWithMargins = this.mHorizontalSpacingWithMargins;
        this.mVerticalSpacingWithMargins = i10;
        this.mHorizontalSpacingWithMargins = i11;
        adjustPadding();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollBy(int i10, int i11, Interpolator interpolator) {
        setScrollValue(i10, i11);
        super.smoothScrollBy(i10, i11, interpolator);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void smoothScrollToPosition(int i10) {
        smoothScrollToPositionWithOffset(i10, this.mSelectedItemOffsetStart);
    }

    public void smoothScrollToPositionWithOffset(int i10, int i11) {
        smoothScrollToPositionWithOffset(i10, i11, false);
    }

    public void swapAdapter(m1 m1Var, boolean z) {
        if (m1Var == null) {
            return;
        }
        resetAdapter(m1Var, false);
        setLayoutFrozen(false);
        p(m1Var, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public TvRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void scrollToPosition(int i10, boolean z, boolean z4, int i11) {
        this.mSelectedPosition = i10;
        TvSmoothScroller tvSmoothScroller = new TvSmoothScroller(getContext(), z, z4, i11);
        tvSmoothScroller.setTargetPosition(i10);
        getLayoutManager().startSmoothScroll(tvSmoothScroller);
    }

    public void scrollToPositionWithOffset(int i10, int i11, boolean z) {
        scrollToPosition(i10, z, false, i11);
    }

    public void smoothScrollToPositionWithOffset(int i10, int i11, boolean z) {
        scrollToPosition(i10, z, true, i11);
    }

    public TvRecyclerView(Context context, AttributeSet attributeSet, int i10) throws NoSuchMethodException, SecurityException {
        super(context, attributeSet, i10);
        this.mVerticalSpacingWithMargins = 0;
        this.mHorizontalSpacingWithMargins = 0;
        this.mOldVerticalSpacingWithMargins = 0;
        this.mOldHorizontalSpacingWithMargins = 0;
        this.mHasMoreData = true;
        this.mLoadingMore = false;
        this.mSelectedPosition = -1;
        this.mHasFocusWithPrevious = false;
        this.mTempRect = new Rect();
        this.mDataObserver = new IRecyclerViewDataObserver(this, 0);
        this.mShouldReverseLayout = true;
        this.mScrollPoint = new Point();
        init(context);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f17648b, i10, 0);
        String string = typedArrayObtainStyledAttributes.getString(6);
        if (!TextUtils.isEmpty(string)) {
            createLayoutManager(context, string, attributeSet, i10);
        }
        this.mSelectedItemCentered = typedArrayObtainStyledAttributes.getBoolean(11, false);
        this.mIsMenu = typedArrayObtainStyledAttributes.getBoolean(4, false);
        this.mIsMemoryFocus = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.mLoadMoreBeforehandCount = typedArrayObtainStyledAttributes.getInt(7, 4);
        this.mSelectedItemOffsetStart = typedArrayObtainStyledAttributes.getDimensionPixelOffset(13, 0);
        this.mSelectedItemOffsetEnd = typedArrayObtainStyledAttributes.getDimensionPixelOffset(12, 0);
        this.mOptimizeLayout = typedArrayObtainStyledAttributes.getBoolean(10, false);
        setSpacingWithMargins(typedArrayObtainStyledAttributes.getDimensionPixelOffset(14, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAdapter(m1 m1Var, boolean z) {
        if (m1Var == null) {
            return;
        }
        resetAdapter(m1Var, z);
        super.setAdapter(m1Var);
    }
}

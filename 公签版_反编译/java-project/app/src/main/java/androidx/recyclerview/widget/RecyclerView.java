package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import io.github.muntashirakon.adb.AndroidPubkey;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements x0.s {
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC;
    static final boolean ALLOW_THREAD_GAP_WORK;
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    private static final boolean FORCE_ABS_FOCUS_SEARCH_DIRECTION;
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final boolean IGNORE_DETACHED_FOCUSED_CHILD;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    static final boolean POST_UPDATES_ON_ANIMATION;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_BIND_VIEW_TAG = "RV OnBindView";
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    static final String TRACE_NESTED_PREFETCH_TAG = "RV Nested Prefetch";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled = false;
    static final o2 sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled = false;
    s2 mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    m1 mAdapter;
    b mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private p1 mChildDrawingOrderCallback;
    i mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private q1 mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    g0 mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private c2 mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    t1 mItemAnimator;
    private r1 mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<v1> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    LayoutManager mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final i2 mObserver;
    private List<a2> mOnChildAttachStateListeners;
    private b2 mOnFlingListener;
    private final ArrayList<c2> mOnItemTouchListeners;
    final List<ViewHolder> mPendingAccessibilityImportanceChange;
    j2 mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    e0 mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final g2 mRecycler;
    h2 mRecyclerListener;
    final List<h2> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    private float mScaledHorizontalScrollFactor;
    private float mScaledVerticalScrollFactor;
    private d2 mScrollListener;
    private List<d2> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private x0.t mScrollingChildHelper;
    final n2 mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final q2 mViewFlinger;
    private final h3 mViewInfoProcessCallback;
    final i3 mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));

    public static abstract class LayoutManager {
        boolean mAutoMeasure;
        i mChildHelper;
        private int mHeight;
        private int mHeightMode;
        f3 mHorizontalBoundCheck;
        private final e3 mHorizontalBoundCheckCallback;
        boolean mIsAttachedToWindow;
        private boolean mItemPrefetchEnabled;
        private boolean mMeasurementCacheEnabled;
        int mPrefetchMaxCountObserved;
        boolean mPrefetchMaxObservedInInitialPrefetch;
        RecyclerView mRecyclerView;
        boolean mRequestedSimpleAnimations;
        m2 mSmoothScroller;
        f3 mVerticalBoundCheck;
        private final e3 mVerticalBoundCheckCallback;
        private int mWidth;
        private int mWidthMode;

        public LayoutManager() {
            w1 w1Var = new w1(this);
            this.mHorizontalBoundCheckCallback = w1Var;
            x1 x1Var = new x1(this);
            this.mVerticalBoundCheckCallback = x1Var;
            this.mHorizontalBoundCheck = new f3(w1Var);
            this.mVerticalBoundCheck = new f3(x1Var);
            this.mRequestedSimpleAnimations = false;
            this.mIsAttachedToWindow = false;
            this.mAutoMeasure = false;
            this.mMeasurementCacheEnabled = true;
            this.mItemPrefetchEnabled = true;
        }

        private void addViewInt(View view, int i10, boolean z) {
            ViewHolder viewHolder;
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                a0.t tVar = this.mRecyclerView.mViewInfoStore.f2157a;
                g3 g3VarA = (g3) tVar.get(childViewHolderInt);
                if (g3VarA == null) {
                    g3VarA = g3.a();
                    tVar.put(childViewHolderInt, g3VarA);
                }
                g3VarA.f2139a |= 1;
            } else {
                this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.mChildHelper.b(view, i10, view.getLayoutParams(), false);
            } else if (view.getParent() == this.mRecyclerView) {
                int iJ = this.mChildHelper.j(view);
                if (i10 == -1) {
                    i10 = this.mChildHelper.e();
                }
                if (iJ == -1) {
                    StringBuilder sb2 = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb2.append(this.mRecyclerView.indexOfChild(view));
                    throw new IllegalStateException(android.support.v4.media.session.a.m(this.mRecyclerView, sb2));
                }
                if (iJ != i10) {
                    this.mRecyclerView.mLayout.moveView(iJ, i10);
                }
            } else {
                this.mChildHelper.a(view, i10, false);
                layoutParams.mInsetsDirty = true;
                m2 m2Var = this.mSmoothScroller;
                if (m2Var != null && m2Var.isRunning()) {
                    this.mSmoothScroller.onChildAttachedToWindow(view);
                }
            }
            if (layoutParams.mPendingInvalidate) {
                if (RecyclerView.sVerboseLoggingEnabled && (viewHolder = layoutParams.mViewHolder) != null) {
                    viewHolder.toString();
                }
                childViewHolderInt.itemView.invalidate();
                layoutParams.mPendingInvalidate = false;
            }
        }

        public static int chooseSize(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i11, i12) : size : Math.min(size, Math.max(i11, i12));
        }

        private void detachViewInternal(int i10, View view) {
            this.mChildHelper.c(i10);
        }

        /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
        @Deprecated
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static int getChildMeasureSpec(int i10, int i11, int i12, boolean z) {
            int i13 = i10 - i11;
            int i14 = 0;
            int iMax = Math.max(0, i13);
            if (z) {
                if (i12 >= 0) {
                    i14 = 1073741824;
                } else {
                    i12 = 0;
                }
            } else if (i12 < 0) {
                if (i12 != -1) {
                    i14 = i12 == -2 ? Integer.MIN_VALUE : 1073741824;
                    i12 = 0;
                }
                i12 = iMax;
            }
            return View.MeasureSpec.makeMeasureSpec(i12, i14);
        }

        private int[] getChildRectangleOnScreenScrollAmount(View view, Rect rect) {
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - paddingLeft;
            int iMin = Math.min(0, i10);
            int i11 = top - paddingTop;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - width;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - height);
            if (getLayoutDirection() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            return new int[]{iMax, iMin2};
        }

        public static z1 getProperties(Context context, AttributeSet attributeSet, int i10, int i11) {
            z1 z1Var = new z1();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z3.a.f19432a, i10, i11);
            z1Var.f2382a = typedArrayObtainStyledAttributes.getInt(0, 1);
            z1Var.f2383b = typedArrayObtainStyledAttributes.getInt(10, 1);
            z1Var.f2384c = typedArrayObtainStyledAttributes.getBoolean(9, false);
            z1Var.f2385d = typedArrayObtainStyledAttributes.getBoolean(11, false);
            typedArrayObtainStyledAttributes.recycle();
            return z1Var;
        }

        private boolean isFocusedChildVisibleAfterScrolling(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int paddingLeft = getPaddingLeft();
            int paddingTop = getPaddingTop();
            int width = getWidth() - getPaddingRight();
            int height = getHeight() - getPaddingBottom();
            Rect rect = this.mRecyclerView.mTempRect;
            getDecoratedBoundsWithMargins(focusedChild, rect);
            return rect.left - i10 < width && rect.right - i10 > paddingLeft && rect.top - i11 < height && rect.bottom - i11 > paddingTop;
        }

        private static boolean isMeasurementUpToDate(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        private void scrapOrRecycleView(g2 g2Var, int i10, View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.shouldIgnore()) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
            } else if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !this.mRecyclerView.mAdapter.f2189b) {
                removeViewAt(i10);
                g2Var.k(childViewHolderInt);
            } else {
                detachViewAt(i10);
                g2Var.l(view);
                this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view) {
            addDisappearingView(view, -1);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view) {
            addView(view, -1);
        }

        public void assertInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertInLayoutOrScroll(str);
            }
        }

        @SuppressLint({"UnknownNullness"})
        public void assertNotInLayoutOrScroll(String str) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public void attachView(View view, int i10, LayoutParams layoutParams) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt.isRemoved()) {
                a0.t tVar = this.mRecyclerView.mViewInfoStore.f2157a;
                g3 g3VarA = (g3) tVar.get(childViewHolderInt);
                if (g3VarA == null) {
                    g3VarA = g3.a();
                    tVar.put(childViewHolderInt, g3VarA);
                }
                g3VarA.f2139a |= 1;
            } else {
                this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
            }
            this.mChildHelper.b(view, i10, layoutParams, childViewHolderInt.isRemoved());
        }

        public void calculateItemDecorationsForChild(View view, Rect rect) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public boolean canScrollHorizontally() {
            return false;
        }

        public boolean canScrollVertically() {
            return false;
        }

        public boolean checkLayoutParams(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        @SuppressLint({"UnknownNullness"})
        public void collectAdjacentPrefetchPositions(int i10, int i11, n2 n2Var, y1 y1Var) {
        }

        @SuppressLint({"UnknownNullness"})
        public void collectInitialPrefetchPositions(int i10, y1 y1Var) {
        }

        public int computeHorizontalScrollExtent(n2 n2Var) {
            return 0;
        }

        public int computeHorizontalScrollOffset(n2 n2Var) {
            return 0;
        }

        public int computeHorizontalScrollRange(n2 n2Var) {
            return 0;
        }

        public int computeVerticalScrollExtent(n2 n2Var) {
            return 0;
        }

        public int computeVerticalScrollOffset(n2 n2Var) {
            return 0;
        }

        public int computeVerticalScrollRange(n2 n2Var) {
            return 0;
        }

        public void detachAndScrapAttachedViews(g2 g2Var) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                scrapOrRecycleView(g2Var, childCount, getChildAt(childCount));
            }
        }

        public void detachAndScrapView(View view, g2 g2Var) {
            scrapOrRecycleView(g2Var, this.mChildHelper.j(view), view);
        }

        public void detachAndScrapViewAt(int i10, g2 g2Var) {
            scrapOrRecycleView(g2Var, i10, getChildAt(i10));
        }

        public void detachView(View view) {
            int iJ = this.mChildHelper.j(view);
            if (iJ >= 0) {
                detachViewInternal(iJ, view);
            }
        }

        public void detachViewAt(int i10) {
            detachViewInternal(i10, getChildAt(i10));
        }

        public void dispatchAttachedToWindow(RecyclerView recyclerView) {
            this.mIsAttachedToWindow = true;
            onAttachedToWindow(recyclerView);
        }

        public void dispatchDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
            this.mIsAttachedToWindow = false;
            onDetachedFromWindow(recyclerView, g2Var);
        }

        @SuppressLint({"UnknownNullness"})
        public void endAnimation(View view) {
            t1 t1Var = this.mRecyclerView.mItemAnimator;
            if (t1Var != null) {
                t1Var.d(RecyclerView.getChildViewHolderInt(view));
            }
        }

        public View findContainingItemView(View view) {
            View viewFindContainingItemView;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (viewFindContainingItemView = recyclerView.findContainingItemView(view)) == null || this.mChildHelper.f2149c.contains(viewFindContainingItemView)) {
                return null;
            }
            return viewFindContainingItemView;
        }

        public View findViewByPosition(int i10) {
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i10 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.f2205g || !childViewHolderInt.isRemoved())) {
                    return childAt;
                }
            }
            return null;
        }

        @SuppressLint({"UnknownNullness"})
        public abstract LayoutParams generateDefaultLayoutParams();

        @SuppressLint({"UnknownNullness"})
        public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        public int getBaseline() {
            return -1;
        }

        public int getBottomDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.bottom;
        }

        public View getChildAt(int i10) {
            i iVar = this.mChildHelper;
            if (iVar != null) {
                return iVar.d(i10);
            }
            return null;
        }

        public int getChildCount() {
            i iVar = this.mChildHelper;
            if (iVar != null) {
                return iVar.e();
            }
            return 0;
        }

        public boolean getClipToPadding() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int getColumnCountForAccessibility(g2 g2Var, n2 n2Var) {
            return -1;
        }

        public int getDecoratedBottom(View view) {
            return getBottomDecorationHeight(view) + view.getBottom();
        }

        public void getDecoratedBoundsWithMargins(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public int getDecoratedLeft(View view) {
            return view.getLeft() - getLeftDecorationWidth(view);
        }

        public int getDecoratedMeasuredHeight(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public int getDecoratedMeasuredWidth(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public int getDecoratedRight(View view) {
            return getRightDecorationWidth(view) + view.getRight();
        }

        public int getDecoratedTop(View view) {
            return view.getTop() - getTopDecorationHeight(view);
        }

        public View getFocusedChild() {
            View focusedChild;
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.mChildHelper.f2149c.contains(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getHeightMode() {
            return this.mHeightMode;
        }

        public int getItemCount() {
            RecyclerView recyclerView = this.mRecyclerView;
            m1 adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.b();
            }
            return 0;
        }

        public int getItemViewType(View view) {
            return RecyclerView.getChildViewHolderInt(view).getItemViewType();
        }

        public int getLayoutDirection() {
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            return x0.k0.d(recyclerView);
        }

        public int getLeftDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.left;
        }

        public int getMinimumHeight() {
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            return x0.j0.d(recyclerView);
        }

        public int getMinimumWidth() {
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = x0.b1.f17953a;
            return x0.j0.e(recyclerView);
        }

        public int getPaddingBottom() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public int getPaddingEnd() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return 0;
            }
            WeakHashMap weakHashMap = x0.b1.f17953a;
            return x0.k0.e(recyclerView);
        }

        public int getPaddingLeft() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public int getPaddingRight() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public int getPaddingStart() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null) {
                return 0;
            }
            WeakHashMap weakHashMap = x0.b1.f17953a;
            return x0.k0.f(recyclerView);
        }

        public int getPaddingTop() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int getPosition(View view) {
            return ((LayoutParams) view.getLayoutParams()).getViewLayoutPosition();
        }

        public int getRightDecorationWidth(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.right;
        }

        public int getRowCountForAccessibility(g2 g2Var, n2 n2Var) {
            return -1;
        }

        public int getSelectionModeForAccessibility(g2 g2Var, n2 n2Var) {
            return 0;
        }

        public int getTopDecorationHeight(View view) {
            return ((LayoutParams) view.getLayoutParams()).mDecorInsets.top;
        }

        public void getTransformedBoundingBox(View view, boolean z, Rect rect) {
            Matrix matrix;
            if (z) {
                Rect rect2 = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.mRecyclerView.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public int getWidth() {
            return this.mWidth;
        }

        public int getWidthMode() {
            return this.mWidthMode;
        }

        public boolean hasFlexibleChildInBothOrientations() {
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                ViewGroup.LayoutParams layoutParams = getChildAt(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public boolean hasFocus() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.hasFocus();
        }

        public void ignoreView(View view) {
            ViewParent parent = view.getParent();
            RecyclerView recyclerView = this.mRecyclerView;
            if (parent != recyclerView || recyclerView.indexOfChild(view) == -1) {
                throw new IllegalArgumentException(android.support.v4.media.session.a.m(this.mRecyclerView, new StringBuilder("View should be fully attached to be ignored")));
            }
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.addFlags(128);
            this.mRecyclerView.mViewInfoStore.d(childViewHolderInt);
        }

        public boolean isAttachedToWindow() {
            return this.mIsAttachedToWindow;
        }

        public boolean isAutoMeasureEnabled() {
            return this.mAutoMeasure;
        }

        public boolean isFocused() {
            RecyclerView recyclerView = this.mRecyclerView;
            return recyclerView != null && recyclerView.isFocused();
        }

        public final boolean isItemPrefetchEnabled() {
            return this.mItemPrefetchEnabled;
        }

        public boolean isLayoutHierarchical(g2 g2Var, n2 n2Var) {
            return false;
        }

        public boolean isMeasurementCacheEnabled() {
            return this.mMeasurementCacheEnabled;
        }

        public boolean isSmoothScrolling() {
            m2 m2Var = this.mSmoothScroller;
            return m2Var != null && m2Var.isRunning();
        }

        public boolean isViewPartiallyVisible(View view, boolean z, boolean z4) {
            boolean z10 = this.mHorizontalBoundCheck.b(view) && this.mVerticalBoundCheck.b(view);
            return z ? z10 : !z10;
        }

        public void layoutDecorated(View view, int i10, int i11, int i12, int i13) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).mDecorInsets;
            view.layout(i10 + rect.left, i11 + rect.top, i12 - rect.right, i13 - rect.bottom);
        }

        public void layoutDecoratedWithMargins(View view, int i10, int i11, int i12, int i13) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.mDecorInsets;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public void measureChild(View view, int i10, int i11) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i10;
            int i13 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i11;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + i12, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + i13, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void measureChildWithMargins(View view, int i10, int i11) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
            int i12 = itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + i10;
            int i13 = itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + i11;
            int childMeasureSpec = getChildMeasureSpec(getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i12, ((ViewGroup.MarginLayoutParams) layoutParams).width, canScrollHorizontally());
            int childMeasureSpec2 = getChildMeasureSpec(getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) layoutParams).height, canScrollVertically());
            if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, layoutParams)) {
                view.measure(childMeasureSpec, childMeasureSpec2);
            }
        }

        public void moveView(int i10, int i11) {
            View childAt = getChildAt(i10);
            if (childAt != null) {
                detachViewAt(i10);
                attachView(childAt, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.mRecyclerView.toString());
            }
        }

        public void offsetChildrenHorizontal(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i10);
            }
        }

        public void offsetChildrenVertical(int i10) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i10);
            }
        }

        public void onAdapterChanged(m1 m1Var, m1 m1Var2) {
        }

        public boolean onAddFocusables(RecyclerView recyclerView, ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        public void onAttachedToWindow(RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDetachedFromWindow(RecyclerView recyclerView) {
        }

        public View onFocusSearchFailed(View view, int i10, g2 g2Var, n2 n2Var) {
            return null;
        }

        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityEvent(recyclerView.mRecycler, recyclerView.mState, accessibilityEvent);
        }

        public void onInitializeAccessibilityNodeInfo(y0.n nVar) {
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfo(recyclerView.mRecycler, recyclerView.mState, nVar);
        }

        public void onInitializeAccessibilityNodeInfoForItem(View view, y0.n nVar) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved()) {
                return;
            }
            i iVar = this.mChildHelper;
            if (iVar.f2149c.contains(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.mRecyclerView;
            onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, nVar);
        }

        public View onInterceptFocusSearch(View view, int i10) {
            return null;
        }

        public void onItemsAdded(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsChanged(RecyclerView recyclerView) {
        }

        public void onItemsMoved(RecyclerView recyclerView, int i10, int i11, int i12) {
        }

        public void onItemsRemoved(RecyclerView recyclerView, int i10, int i11) {
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11) {
        }

        @SuppressLint({"UnknownNullness"})
        public void onLayoutChildren(g2 g2Var, n2 n2Var) {
        }

        @SuppressLint({"UnknownNullness"})
        public void onLayoutCompleted(n2 n2Var) {
        }

        public void onMeasure(g2 g2Var, n2 n2Var, int i10, int i11) {
            this.mRecyclerView.defaultOnMeasure(i10, i11);
        }

        @Deprecated
        public boolean onRequestChildFocus(RecyclerView recyclerView, View view, View view2) {
            return isSmoothScrolling() || recyclerView.isComputingLayout();
        }

        @SuppressLint({"UnknownNullness"})
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public void onScrollStateChanged(int i10) {
        }

        public void onSmoothScrollerStopped(m2 m2Var) {
            if (this.mSmoothScroller == m2Var) {
                this.mSmoothScroller = null;
            }
        }

        public boolean performAccessibilityAction(int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityAction(recyclerView.mRecycler, recyclerView.mState, i10, bundle);
        }

        public boolean performAccessibilityActionForItem(g2 g2Var, n2 n2Var, View view, int i10, Bundle bundle) {
            return false;
        }

        public void postOnAnimation(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                WeakHashMap weakHashMap = x0.b1.f17953a;
                x0.j0.m(recyclerView, runnable);
            }
        }

        public void removeAllViews() {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                this.mChildHelper.k(childCount);
            }
        }

        public void removeAndRecycleAllViews(g2 g2Var) {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                    removeAndRecycleViewAt(childCount, g2Var);
                }
            }
        }

        public void removeAndRecycleScrapInt(g2 g2Var) {
            ArrayList arrayList;
            int size = g2Var.f2130a.size();
            int i10 = size - 1;
            while (true) {
                arrayList = g2Var.f2130a;
                if (i10 < 0) {
                    break;
                }
                View view = ((ViewHolder) arrayList.get(i10)).itemView;
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.mRecyclerView.removeDetachedView(view, false);
                    }
                    t1 t1Var = this.mRecyclerView.mItemAnimator;
                    if (t1Var != null) {
                        t1Var.d(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    g2Var.k(childViewHolderInt2);
                }
                i10--;
            }
            arrayList.clear();
            ArrayList arrayList2 = g2Var.f2131b;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.mRecyclerView.invalidate();
            }
        }

        public void removeAndRecycleView(View view, g2 g2Var) {
            removeView(view);
            g2Var.j(view);
        }

        public void removeAndRecycleViewAt(int i10, g2 g2Var) {
            View childAt = getChildAt(i10);
            removeViewAt(i10);
            g2Var.j(childAt);
        }

        public boolean removeCallbacks(Runnable runnable) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void removeDetachedView(View view) {
            this.mRecyclerView.removeDetachedView(view, false);
        }

        @SuppressLint({"UnknownNullness"})
        public void removeView(View view) {
            i iVar = this.mChildHelper;
            k1 k1Var = iVar.f2147a;
            int i10 = iVar.f2150d;
            if (i10 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i10 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                iVar.f2150d = 1;
                iVar.f2151e = view;
                int iIndexOfChild = k1Var.f2168a.indexOfChild(view);
                if (iIndexOfChild >= 0) {
                    if (iVar.f2148b.p(iIndexOfChild)) {
                        iVar.l(view);
                    }
                    k1Var.a(iIndexOfChild);
                }
                iVar.f2150d = 0;
                iVar.f2151e = null;
            } catch (Throwable th2) {
                iVar.f2150d = 0;
                iVar.f2151e = null;
                throw th2;
            }
        }

        public void removeViewAt(int i10) {
            if (getChildAt(i10) != null) {
                this.mChildHelper.k(i10);
            }
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z) {
            return requestChildRectangleOnScreen(recyclerView, view, rect, z, false);
        }

        public void requestLayout() {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public void requestSimpleAnimationsInNextLayout() {
            this.mRequestedSimpleAnimations = true;
        }

        @SuppressLint({"UnknownNullness"})
        public int scrollHorizontallyBy(int i10, g2 g2Var, n2 n2Var) {
            return 0;
        }

        public void scrollToPosition(int i10) {
            int i11 = RecyclerView.HORIZONTAL;
        }

        @SuppressLint({"UnknownNullness"})
        public int scrollVerticallyBy(int i10, g2 g2Var, n2 n2Var) {
            return 0;
        }

        @Deprecated
        public void setAutoMeasureEnabled(boolean z) {
            this.mAutoMeasure = z;
        }

        public void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
            setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void setItemPrefetchEnabled(boolean z) {
            if (z != this.mItemPrefetchEnabled) {
                this.mItemPrefetchEnabled = z;
                this.mPrefetchMaxCountObserved = 0;
                RecyclerView recyclerView = this.mRecyclerView;
                if (recyclerView != null) {
                    recyclerView.mRecycler.o();
                }
            }
        }

        public void setMeasureSpecs(int i10, int i11) {
            this.mWidth = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.mWidthMode = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.mWidth = 0;
            }
            this.mHeight = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mHeightMode = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.mHeight = 0;
        }

        public void setMeasuredDimension(Rect rect, int i10, int i11) {
            setMeasuredDimension(chooseSize(i10, getPaddingRight() + getPaddingLeft() + rect.width(), getMinimumWidth()), chooseSize(i11, getPaddingBottom() + getPaddingTop() + rect.height(), getMinimumHeight()));
        }

        public void setMeasuredDimensionFromChildren(int i10, int i11) {
            int childCount = getChildCount();
            if (childCount == 0) {
                this.mRecyclerView.defaultOnMeasure(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = Integer.MAX_VALUE;
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < childCount; i16++) {
                View childAt = getChildAt(i16);
                Rect rect = this.mRecyclerView.mTempRect;
                getDecoratedBoundsWithMargins(childAt, rect);
                int i17 = rect.left;
                if (i17 < i14) {
                    i14 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i15) {
                    i15 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i13) {
                    i13 = i20;
                }
            }
            this.mRecyclerView.mTempRect.set(i14, i15, i12, i13);
            setMeasuredDimension(this.mRecyclerView.mTempRect, i10, i11);
        }

        public void setMeasurementCacheEnabled(boolean z) {
            this.mMeasurementCacheEnabled = z;
        }

        public void setRecyclerView(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.mRecyclerView = null;
                this.mChildHelper = null;
                this.mWidth = 0;
                this.mHeight = 0;
            } else {
                this.mRecyclerView = recyclerView;
                this.mChildHelper = recyclerView.mChildHelper;
                this.mWidth = recyclerView.getWidth();
                this.mHeight = recyclerView.getHeight();
            }
            this.mWidthMode = 1073741824;
            this.mHeightMode = 1073741824;
        }

        public boolean shouldMeasureChild(View view, int i10, int i11, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public boolean shouldMeasureTwice() {
            return false;
        }

        public boolean shouldReMeasureChild(View view, int i10, int i11, LayoutParams layoutParams) {
            return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        @SuppressLint({"UnknownNullness"})
        public void smoothScrollToPosition(RecyclerView recyclerView, n2 n2Var, int i10) {
        }

        @SuppressLint({"UnknownNullness"})
        public void startSmoothScroll(m2 m2Var) {
            m2 m2Var2 = this.mSmoothScroller;
            if (m2Var2 != null && m2Var != m2Var2 && m2Var2.isRunning()) {
                this.mSmoothScroller.stop();
            }
            this.mSmoothScroller = m2Var;
            m2Var.start(this.mRecyclerView, this);
        }

        public void stopIgnoringView(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            childViewHolderInt.stopIgnoring();
            childViewHolderInt.resetInternal();
            childViewHolderInt.addFlags(4);
        }

        public void stopSmoothScroller() {
            m2 m2Var = this.mSmoothScroller;
            if (m2Var != null) {
                m2Var.stop();
            }
        }

        public boolean supportsPredictiveItemAnimations() {
            return false;
        }

        @SuppressLint({"UnknownNullness"})
        public void addDisappearingView(View view, int i10) {
            addViewInt(view, i10, true);
        }

        @SuppressLint({"UnknownNullness"})
        public void addView(View view, int i10) {
            addViewInt(view, i10, false);
        }

        @SuppressLint({"UnknownNullness"})
        public void onDetachedFromWindow(RecyclerView recyclerView, g2 g2Var) {
            onDetachedFromWindow(recyclerView);
        }

        public void onInitializeAccessibilityEvent(g2 g2Var, n2 n2Var, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.mRecyclerView;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            m1 m1Var = this.mRecyclerView.mAdapter;
            if (m1Var != null) {
                accessibilityEvent.setItemCount(m1Var.b());
            }
        }

        public void onInitializeAccessibilityNodeInfo(g2 g2Var, n2 n2Var, y0.n nVar) {
            if (this.mRecyclerView.canScrollVertically(-1) || this.mRecyclerView.canScrollHorizontally(-1)) {
                nVar.a(8192);
                nVar.n(true);
            }
            if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
                nVar.a(4096);
                nVar.n(true);
            }
            nVar.k(kh.h.b(getRowCountForAccessibility(g2Var, n2Var), getColumnCountForAccessibility(g2Var, n2Var), getSelectionModeForAccessibility(g2Var, n2Var), isLayoutHierarchical(g2Var, n2Var)));
        }

        public void onItemsUpdated(RecyclerView recyclerView, int i10, int i11, Object obj) {
            onItemsUpdated(recyclerView, i10, i11);
        }

        public boolean onRequestChildFocus(RecyclerView recyclerView, n2 n2Var, View view, View view2) {
            return onRequestChildFocus(recyclerView, view, view2);
        }

        public boolean performAccessibilityAction(g2 g2Var, n2 n2Var, int i10, Bundle bundle) {
            int paddingTop;
            int paddingLeft;
            int i11;
            int i12;
            if (this.mRecyclerView == null) {
                return false;
            }
            int height = getHeight();
            int width = getWidth();
            Rect rect = new Rect();
            if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
                height = rect.height();
                width = rect.width();
            }
            if (i10 == 4096) {
                paddingTop = this.mRecyclerView.canScrollVertically(1) ? (height - getPaddingTop()) - getPaddingBottom() : 0;
                if (this.mRecyclerView.canScrollHorizontally(1)) {
                    paddingLeft = (width - getPaddingLeft()) - getPaddingRight();
                    i11 = paddingTop;
                    i12 = paddingLeft;
                }
                i11 = paddingTop;
                i12 = 0;
            } else if (i10 != 8192) {
                i12 = 0;
                i11 = 0;
            } else {
                paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((height - getPaddingTop()) - getPaddingBottom()) : 0;
                if (this.mRecyclerView.canScrollHorizontally(-1)) {
                    paddingLeft = -((width - getPaddingLeft()) - getPaddingRight());
                    i11 = paddingTop;
                    i12 = paddingLeft;
                }
                i11 = paddingTop;
                i12 = 0;
            }
            if (i11 == 0 && i12 == 0) {
                return false;
            }
            this.mRecyclerView.smoothScrollBy(i12, i11, null, Integer.MIN_VALUE, true);
            return true;
        }

        public boolean performAccessibilityActionForItem(View view, int i10, Bundle bundle) {
            RecyclerView recyclerView = this.mRecyclerView;
            return performAccessibilityActionForItem(recyclerView.mRecycler, recyclerView.mState, view, i10, bundle);
        }

        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z4) {
            int[] childRectangleOnScreenScrollAmount = getChildRectangleOnScreenScrollAmount(view, rect);
            int i10 = childRectangleOnScreenScrollAmount[0];
            int i11 = childRectangleOnScreenScrollAmount[1];
            if ((z4 && !isFocusedChildVisibleAfterScrolling(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.smoothScrollBy(i10, i11);
            }
            return true;
        }

        public static int getChildMeasureSpec(int i10, int i11, int i12, int i13, boolean z) {
            int iMax = Math.max(0, i10 - i12);
            if (z) {
                if (i13 < 0) {
                    if (i13 != -1 || (i11 != Integer.MIN_VALUE && (i11 == 0 || i11 != 1073741824))) {
                        i11 = 0;
                        i13 = 0;
                    } else {
                        i13 = iMax;
                    }
                }
                i11 = 1073741824;
            } else {
                if (i13 < 0) {
                    if (i13 != -1) {
                        if (i13 == -2) {
                            i11 = (i11 == Integer.MIN_VALUE || i11 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i11 = 0;
                        i13 = 0;
                    }
                    i13 = iMax;
                }
                i11 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        @SuppressLint({"UnknownNullness"})
        public LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public void onInitializeAccessibilityNodeInfoForItem(g2 g2Var, n2 n2Var, View view, y0.n nVar) {
        }

        public void setMeasuredDimension(int i10, int i11) {
            this.mRecyclerView.setMeasuredDimension(i10, i11);
        }

        public void attachView(View view, int i10) {
            attachView(view, i10, (LayoutParams) view.getLayoutParams());
        }

        public void attachView(View view) {
            attachView(view, -1);
        }
    }

    public static abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.emptyList();
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        m1 mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        g2 mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public ViewHolder(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.itemView = view;
        }

        private void createPayloadsIfNeeded() {
            if (this.mPayloads == null) {
                ArrayList arrayList = new ArrayList();
                this.mPayloads = arrayList;
                this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
            } else if ((1024 & this.mFlags) == 0) {
                createPayloadsIfNeeded();
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i10) {
            this.mFlags = i10 | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                if (x0.j0.i(view)) {
                    return true;
                }
            }
            return false;
        }

        public void flagRemovedAndOffsetPosition(int i10, int i11, boolean z) {
            addFlags(8);
            offsetPosition(i11, z);
            this.mPosition = i10;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final m1 getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            m1 adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1 || this.mBindingAdapter != adapter) {
                return -1;
            }
            return adapterPositionInRecyclerView;
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i10 = this.mPreLayoutPosition;
            return i10 == -1 ? this.mPosition : i10;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i10) {
            return (i10 & this.mFlags) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) == 0) {
                View view = this.itemView;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                if (!x0.j0.i(view)) {
                    return true;
                }
            }
            return false;
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i10, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i10;
            }
            this.mPosition += i10;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).mInsetsDirty = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i10 = this.mPendingAccessibilityState;
            if (i10 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i10;
            } else {
                View view = this.itemView;
                WeakHashMap weakHashMap = x0.b1.f17953a;
                this.mWasImportantForAccessibilityBeforeHidden = x0.j0.c(view);
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            if (RecyclerView.sDebugAssertionsEnabled && isTmpDetached()) {
                throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
            }
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i10, int i11) {
            this.mFlags = (i10 & i11) | (this.mFlags & (i11 ^ (-1)));
        }

        public final void setIsRecyclable(boolean z) {
            int i10 = this.mIsRecyclableCount;
            int i11 = z ? i10 - 1 : i10 + 1;
            this.mIsRecyclableCount = i11;
            if (i11 < 0) {
                this.mIsRecyclableCount = 0;
                if (RecyclerView.sDebugAssertionsEnabled) {
                    throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                }
                toString();
            } else if (!z && i11 == 1) {
                this.mFlags |= 16;
            } else if (z && i11 == 0) {
                this.mFlags &= -17;
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                toString();
            }
        }

        public void setScrapContainer(g2 g2Var, boolean z) {
            this.mScrapContainer = g2Var;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sbB = d0.f.b(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            sbB.append(Integer.toHexString(hashCode()));
            sbB.append(" position=");
            sbB.append(this.mPosition);
            sbB.append(" id=");
            sbB.append(this.mItemId);
            sbB.append(", oldPos=");
            sbB.append(this.mOldPosition);
            sbB.append(", pLpos:");
            sbB.append(this.mPreLayoutPosition);
            StringBuilder sb2 = new StringBuilder(sbB.toString());
            if (isScrap()) {
                sb2.append(" scrap ");
                sb2.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb2.append(" invalid");
            }
            if (!isBound()) {
                sb2.append(" unbound");
            }
            if (needsUpdate()) {
                sb2.append(" update");
            }
            if (isRemoved()) {
                sb2.append(" removed");
            }
            if (shouldIgnore()) {
                sb2.append(" ignored");
            }
            if (isTmpDetached()) {
                sb2.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb2.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb2.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb2.append(" no parent");
            }
            sb2.append("}");
            return sb2.toString();
        }

        public void unScrap() {
            this.mScrapContainer.n(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        FORCE_INVALIDATE_DISPLAY_LIST = i10 == 18 || i10 == 19 || i10 == 20;
        ALLOW_SIZE_IN_UNSPECIFIED_SPEC = i10 >= 23;
        POST_UPDATES_ON_ANIMATION = true;
        ALLOW_THREAD_GAP_WORK = i10 >= 21;
        FORCE_ABS_FOCUS_SEARCH_DIRECTION = false;
        IGNORE_DETACHED_FOCUSED_CHILD = false;
        Class<?> cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new o0(2);
        sDefaultEdgeEffectFactory = new o2();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.yunpan.appmanage.R.attr.recyclerViewStyle);
    }

    public static int c(int i10, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i11) {
        if (i10 > 0 && edgeEffect != null && com.bumptech.glide.c.B(edgeEffect) != 0.0f) {
            int iRound = Math.round(com.bumptech.glide.c.Q(edgeEffect, ((-i10) * FLING_DESTRETCH_FACTOR) / i11, 0.5f) * ((-i11) / FLING_DESTRETCH_FACTOR));
            if (iRound != i10) {
                edgeEffect.finish();
            }
            return i10 - iRound;
        }
        if (i10 >= 0 || edgeEffect2 == null || com.bumptech.glide.c.B(edgeEffect2) == 0.0f) {
            return i10;
        }
        float f10 = i11;
        int iRound2 = Math.round(com.bumptech.glide.c.Q(edgeEffect2, (i10 * FLING_DESTRETCH_FACTOR) / f10, 0.5f) * (f10 / FLING_DESTRETCH_FACTOR));
        if (iRound2 != i10) {
            edgeEffect2.finish();
        }
        return i10 - iRound2;
    }

    public static void clearNestedRecyclerViewIfNotNested(ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == viewHolder.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            viewHolder.mNestedRecyclerView = null;
        }
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i10));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    public static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).mViewHolder;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.mDecorInsets;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private x0.t getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new x0.t(this);
        }
        return this.mScrollingChildHelper;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        sDebugAssertionsEnabled = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        sVerboseLoggingEnabled = z;
    }

    public void absorbGlows(int i10, int i11) {
        if (i10 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i10);
            }
        }
        if (i11 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i11);
            }
        } else if (i11 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i11);
            }
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        WeakHashMap weakHashMap = x0.b1.f17953a;
        x0.j0.k(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i10, int i11) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || !layoutManager.onAddFocusables(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    public void addItemDecoration(v1 v1Var, int i10) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.mItemDecorations.add(v1Var);
        } else {
            this.mItemDecorations.add(i10, v1Var);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(a2 a2Var) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(a2Var);
    }

    public void addOnItemTouchListener(c2 c2Var) {
        this.mOnItemTouchListeners.add(c2Var);
    }

    public void addOnScrollListener(d2 d2Var) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(d2Var);
    }

    public void addRecyclerListener(h2 h2Var) {
        s1.g.j("'listener' arg cannot be null.", h2Var != null);
        this.mRecyclerListeners.add(h2Var);
    }

    public void animateAppearance(ViewHolder viewHolder, s1 s1Var, s1 s1Var2) {
        boolean zG;
        int i10;
        int i11;
        viewHolder.setIsRecyclable(false);
        u2 u2Var = (u2) this.mItemAnimator;
        u2Var.getClass();
        if (s1Var == null || ((i10 = s1Var.f2271a) == (i11 = s1Var2.f2271a) && s1Var.f2272b == s1Var2.f2272b)) {
            s sVar = (s) u2Var;
            sVar.l(viewHolder);
            viewHolder.itemView.setAlpha(0.0f);
            sVar.f2251i.add(viewHolder);
            zG = true;
        } else {
            zG = u2Var.g(viewHolder, i10, s1Var.f2272b, i11, s1Var2.f2272b);
        }
        if (zG) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(ViewHolder viewHolder, s1 s1Var, s1 s1Var2) {
        boolean zG;
        b(viewHolder);
        viewHolder.setIsRecyclable(false);
        u2 u2Var = (u2) this.mItemAnimator;
        u2Var.getClass();
        int i10 = s1Var.f2271a;
        int i11 = s1Var.f2272b;
        View view = viewHolder.itemView;
        int left = s1Var2 == null ? view.getLeft() : s1Var2.f2271a;
        int top = s1Var2 == null ? view.getTop() : s1Var2.f2272b;
        if (viewHolder.isRemoved() || (i10 == left && i11 == top)) {
            s sVar = (s) u2Var;
            sVar.l(viewHolder);
            sVar.f2250h.add(viewHolder);
            zG = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            zG = u2Var.g(viewHolder, i10, i11, left, top);
        }
        if (zG) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str != null) {
            throw new IllegalStateException(android.support.v4.media.session.a.m(this, g.b.m(str)));
        }
        throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.mDispatchScrollCounter > 0) {
            new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("")));
        }
    }

    public final void b(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.n(getChildViewHolder(view));
        if (viewHolder.isTmpDetached()) {
            this.mChildHelper.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.mChildHelper.a(view, -1, true);
            return;
        }
        i iVar = this.mChildHelper;
        int iIndexOfChild = iVar.f2147a.f2168a.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            iVar.f2148b.t(iIndexOfChild);
            iVar.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public boolean canReuseUpdatedViewHolder(ViewHolder viewHolder) {
        t1 t1Var = this.mItemAnimator;
        if (t1Var != null) {
            s sVar = (s) t1Var;
            if (viewHolder.getUnmodifiedPayloads().isEmpty() && sVar.f2316g && !viewHolder.isInvalid()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.checkLayoutParams((LayoutParams) layoutParams);
    }

    public void clearOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i10));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        g2 g2Var = this.mRecycler;
        ArrayList arrayList = g2Var.f2132c;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ViewHolder) arrayList.get(i11)).clearOldPosition();
        }
        ArrayList arrayList2 = g2Var.f2130a;
        int size2 = arrayList2.size();
        for (int i12 = 0; i12 < size2; i12++) {
            ((ViewHolder) arrayList2.get(i12)).clearOldPosition();
        }
        ArrayList arrayList3 = g2Var.f2131b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i13 = 0; i13 < size3; i13++) {
                ((ViewHolder) g2Var.f2131b.get(i13)).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<a2> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<d2> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollHorizontally()) {
            return this.mLayout.computeHorizontalScrollRange(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollExtent(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollOffset(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.canScrollVertically()) {
            return this.mLayout.computeVerticalScrollRange(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.k(this);
        }
    }

    public int consumeFlingInHorizontalStretch(int i10) {
        return c(i10, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i10) {
        return c(i10, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            t0.o.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            t0.o.b();
            return;
        }
        if (this.mAdapterHelper.g()) {
            b bVar = this.mAdapterHelper;
            int i10 = bVar.f2035f;
            if ((i10 & 4) == 0 || (i10 & 11) != 0) {
                if (bVar.g()) {
                    t0.o.a(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    t0.o.b();
                    return;
                }
                return;
            }
            t0.o.a(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.j();
            if (!this.mLayoutWasDefered) {
                int iE = this.mChildHelper.e();
                int i11 = 0;
                while (true) {
                    if (i11 < iE) {
                        ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i11));
                        if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                            dispatchLayout();
                            break;
                        }
                        i11++;
                    } else {
                        this.mAdapterHelper.b();
                        break;
                    }
                }
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            t0.o.b();
        }
    }

    public final void d() {
        g3 g3Var;
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f2207i = false;
        startInterceptRequestLayout();
        i3 i3Var = this.mViewInfoStore;
        i3Var.f2157a.clear();
        i3Var.f2158b.b();
        onEnterLayoutOrScroll();
        k();
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        ViewHolder viewHolderFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        if (viewHolderFindContainingViewHolder == null) {
            n2 n2Var = this.mState;
            n2Var.f2210m = -1L;
            n2Var.l = -1;
            n2Var.f2211n = -1;
        } else {
            this.mState.f2210m = this.mAdapter.f2189b ? viewHolderFindContainingViewHolder.getItemId() : -1L;
            this.mState.l = this.mDataSetHasChangedAfterLayout ? -1 : viewHolderFindContainingViewHolder.isRemoved() ? viewHolderFindContainingViewHolder.mOldPosition : viewHolderFindContainingViewHolder.getAbsoluteAdapterPosition();
            n2 n2Var2 = this.mState;
            View focusedChild2 = viewHolderFindContainingViewHolder.itemView;
            int id2 = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id2 = focusedChild2.getId();
                }
            }
            n2Var2.f2211n = id2;
        }
        n2 n2Var3 = this.mState;
        n2Var3.f2206h = n2Var3.f2208j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        n2Var3.f2205g = n2Var3.f2209k;
        n2Var3.f2203e = this.mAdapter.b();
        g(this.mMinMaxLayoutPositions);
        if (this.mState.f2208j) {
            int iE = this.mChildHelper.e();
            for (int i10 = 0; i10 < iE; i10++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i10));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.f2189b)) {
                    t1 t1Var = this.mItemAnimator;
                    t1.b(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    t1Var.getClass();
                    s1 s1Var = new s1();
                    s1Var.a(childViewHolderInt);
                    a0.t tVar = this.mViewInfoStore.f2157a;
                    g3 g3VarA = (g3) tVar.get(childViewHolderInt);
                    if (g3VarA == null) {
                        g3VarA = g3.a();
                        tVar.put(childViewHolderInt, g3VarA);
                    }
                    g3VarA.f2140b = s1Var;
                    g3VarA.f2139a |= 4;
                    if (this.mState.f2206h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.f2158b.h(childViewHolderInt, getChangedHolderKey(childViewHolderInt));
                    }
                }
            }
        }
        if (this.mState.f2209k) {
            saveOldPositions();
            n2 n2Var4 = this.mState;
            boolean z = n2Var4.f2204f;
            n2Var4.f2204f = false;
            this.mLayout.onLayoutChildren(this.mRecycler, n2Var4);
            this.mState.f2204f = z;
            for (int i11 = 0; i11 < this.mChildHelper.e(); i11++) {
                ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i11));
                if (!childViewHolderInt2.shouldIgnore() && ((g3Var = (g3) this.mViewInfoStore.f2157a.get(childViewHolderInt2)) == null || (g3Var.f2139a & 4) == 0)) {
                    t1.b(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    t1 t1Var2 = this.mItemAnimator;
                    childViewHolderInt2.getUnmodifiedPayloads();
                    t1Var2.getClass();
                    s1 s1Var2 = new s1();
                    s1Var2.a(childViewHolderInt2);
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, s1Var2);
                    } else {
                        a0.t tVar2 = this.mViewInfoStore.f2157a;
                        g3 g3VarA2 = (g3) tVar2.get(childViewHolderInt2);
                        if (g3VarA2 == null) {
                            g3VarA2 = g3.a();
                            tVar2.put(childViewHolderInt2, g3VarA2);
                        }
                        g3VarA2.f2139a |= 2;
                        g3VarA2.f2140b = s1Var2;
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.f2202d = 2;
    }

    public void defaultOnMeasure(int i10, int i11) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = x0.b1.f17953a;
        setMeasuredDimension(LayoutManager.chooseSize(i10, paddingRight, x0.j0.e(this)), LayoutManager.chooseSize(i11, getPaddingBottom() + getPaddingTop(), x0.j0.d(this)));
    }

    public void dispatchChildAttached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        m1 m1Var = this.mAdapter;
        if (m1Var != null && childViewHolderInt != null) {
            m1Var.l(childViewHolderInt);
        }
        List<a2> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        m1 m1Var = this.mAdapter;
        if (m1Var != null && childViewHolderInt != null) {
            m1Var.m(childViewHolderInt);
        }
        List<a2> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).a(view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:168:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0396  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dispatchLayout() {
        View viewFindViewById;
        boolean zG;
        if (this.mAdapter == null || this.mLayout == null) {
            return;
        }
        this.mState.f2207i = false;
        boolean z = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.f2202d == 1) {
            d();
            this.mLayout.setExactMeasureSpecsFrom(this);
            e();
        } else {
            b bVar = this.mAdapterHelper;
            if ((bVar.f2032c.isEmpty() || bVar.f2031b.isEmpty()) && !z && this.mLayout.getWidth() == getWidth() && this.mLayout.getHeight() == getHeight()) {
                this.mLayout.setExactMeasureSpecsFrom(this);
            } else {
                this.mLayout.setExactMeasureSpecsFrom(this);
                e();
            }
        }
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        n2 n2Var = this.mState;
        n2Var.f2202d = 1;
        View view = null;
        if (n2Var.f2208j) {
            for (int iE = this.mChildHelper.e() - 1; iE >= 0; iE--) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(iE));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    s1 s1Var = new s1();
                    s1Var.a(childViewHolderInt);
                    ViewHolder viewHolder = (ViewHolder) this.mViewInfoStore.f2158b.d(changedHolderKey);
                    if (viewHolder == null || viewHolder.shouldIgnore()) {
                        this.mViewInfoStore.a(childViewHolderInt, s1Var);
                    } else {
                        g3 g3Var = (g3) this.mViewInfoStore.f2157a.get(viewHolder);
                        boolean z4 = (g3Var == null || (g3Var.f2139a & 1) == 0) ? false : true;
                        g3 g3Var2 = (g3) this.mViewInfoStore.f2157a.get(childViewHolderInt);
                        boolean z10 = (g3Var2 == null || (g3Var2.f2139a & 1) == 0) ? false : true;
                        if (z4 && viewHolder == childViewHolderInt) {
                            this.mViewInfoStore.a(childViewHolderInt, s1Var);
                        } else {
                            s1 s1VarB = this.mViewInfoStore.b(viewHolder, 4);
                            this.mViewInfoStore.a(childViewHolderInt, s1Var);
                            s1 s1VarB2 = this.mViewInfoStore.b(childViewHolderInt, 8);
                            if (s1VarB == null) {
                                int iE2 = this.mChildHelper.e();
                                for (int i10 = 0; i10 < iE2; i10++) {
                                    ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.d(i10));
                                    if (childViewHolderInt2 != childViewHolderInt && getChangedHolderKey(childViewHolderInt2) == changedHolderKey) {
                                        m1 m1Var = this.mAdapter;
                                        if (m1Var == null || !m1Var.f2189b) {
                                            StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb2.append(childViewHolderInt2);
                                            sb2.append(" \n View Holder 2:");
                                            sb2.append(childViewHolderInt);
                                            throw new IllegalStateException(android.support.v4.media.session.a.m(this, sb2));
                                        }
                                        StringBuilder sb3 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb3.append(childViewHolderInt2);
                                        sb3.append(" \n View Holder 2:");
                                        sb3.append(childViewHolderInt);
                                        throw new IllegalStateException(android.support.v4.media.session.a.m(this, sb3));
                                    }
                                }
                                viewHolder.toString();
                                childViewHolderInt.toString();
                                exceptionLabel();
                            } else {
                                viewHolder.setIsRecyclable(false);
                                if (z4) {
                                    b(viewHolder);
                                }
                                if (viewHolder != childViewHolderInt) {
                                    if (z10) {
                                        b(childViewHolderInt);
                                    }
                                    viewHolder.mShadowedHolder = childViewHolderInt;
                                    b(viewHolder);
                                    this.mRecycler.n(viewHolder);
                                    childViewHolderInt.setIsRecyclable(false);
                                    childViewHolderInt.mShadowingHolder = viewHolder;
                                }
                                if (this.mItemAnimator.a(viewHolder, childViewHolderInt, s1VarB, s1VarB2)) {
                                    postAnimationRunner();
                                }
                            }
                        }
                    }
                }
            }
            i3 i3Var = this.mViewInfoStore;
            h3 h3Var = this.mViewInfoProcessCallback;
            a0.t tVar = i3Var.f2157a;
            for (int i11 = tVar.f65c - 1; i11 >= 0; i11--) {
                ViewHolder viewHolder2 = (ViewHolder) tVar.f(i11);
                g3 g3Var3 = (g3) tVar.h(i11);
                int i12 = g3Var3.f2139a;
                if ((i12 & 3) == 3) {
                    RecyclerView recyclerView = ((j1) h3Var).f2163a;
                    recyclerView.mLayout.removeAndRecycleView(viewHolder2.itemView, recyclerView.mRecycler);
                } else if ((i12 & 1) != 0) {
                    s1 s1Var2 = g3Var3.f2140b;
                    if (s1Var2 == null) {
                        RecyclerView recyclerView2 = ((j1) h3Var).f2163a;
                        recyclerView2.mLayout.removeAndRecycleView(viewHolder2.itemView, recyclerView2.mRecycler);
                    } else {
                        s1 s1Var3 = g3Var3.f2141c;
                        RecyclerView recyclerView3 = ((j1) h3Var).f2163a;
                        recyclerView3.mRecycler.n(viewHolder2);
                        recyclerView3.animateDisappearance(viewHolder2, s1Var2, s1Var3);
                    }
                } else if ((i12 & 14) == 14) {
                    ((j1) h3Var).f2163a.animateAppearance(viewHolder2, g3Var3.f2140b, g3Var3.f2141c);
                } else if ((i12 & 12) == 12) {
                    s1 s1Var4 = g3Var3.f2140b;
                    s1 s1Var5 = g3Var3.f2141c;
                    j1 j1Var = (j1) h3Var;
                    j1Var.getClass();
                    viewHolder2.setIsRecyclable(false);
                    RecyclerView recyclerView4 = j1Var.f2163a;
                    if (!recyclerView4.mDataSetHasChangedAfterLayout) {
                        u2 u2Var = (u2) recyclerView4.mItemAnimator;
                        u2Var.getClass();
                        int i13 = s1Var4.f2271a;
                        int i14 = s1Var5.f2271a;
                        if (i13 == i14 && s1Var4.f2272b == s1Var5.f2272b) {
                            u2Var.c(viewHolder2);
                            zG = false;
                        } else {
                            zG = u2Var.g(viewHolder2, i13, s1Var4.f2272b, i14, s1Var5.f2272b);
                        }
                        if (zG) {
                            recyclerView4.postAnimationRunner();
                        }
                    } else if (recyclerView4.mItemAnimator.a(viewHolder2, viewHolder2, s1Var4, s1Var5)) {
                        recyclerView4.postAnimationRunner();
                    }
                } else if ((i12 & 4) != 0) {
                    s1 s1Var6 = g3Var3.f2140b;
                    RecyclerView recyclerView5 = ((j1) h3Var).f2163a;
                    recyclerView5.mRecycler.n(viewHolder2);
                    recyclerView5.animateDisappearance(viewHolder2, s1Var6, null);
                } else if ((i12 & 8) != 0) {
                    ((j1) h3Var).f2163a.animateAppearance(viewHolder2, g3Var3.f2140b, g3Var3.f2141c);
                }
                g3Var3.f2139a = 0;
                g3Var3.f2140b = null;
                g3Var3.f2141c = null;
                g3.f2138d.c(g3Var3);
            }
        }
        this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        n2 n2Var2 = this.mState;
        n2Var2.f2200b = n2Var2.f2203e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        n2Var2.f2208j = false;
        n2Var2.f2209k = false;
        this.mLayout.mRequestedSimpleAnimations = false;
        ArrayList arrayList = this.mRecycler.f2131b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager.mPrefetchMaxObservedInInitialPrefetch) {
            layoutManager.mPrefetchMaxCountObserved = 0;
            layoutManager.mPrefetchMaxObservedInInitialPrefetch = false;
            this.mRecycler.o();
        }
        this.mLayout.onLayoutCompleted(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        i3 i3Var2 = this.mViewInfoStore;
        i3Var2.f2157a.clear();
        i3Var2.f2158b.b();
        int[] iArr = this.mMinMaxLayoutPositions;
        int i15 = iArr[0];
        int i16 = iArr[1];
        g(iArr);
        int[] iArr2 = this.mMinMaxLayoutPositions;
        if ((iArr2[0] == i15 && iArr2[1] == i16) ? false : true) {
            dispatchOnScrolled(0, 0);
        }
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (!isFocused()) {
                View focusedChild = getFocusedChild();
                if (!IGNORE_DETACHED_FOCUSED_CHILD || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                    if (this.mChildHelper.f2149c.contains(focusedChild)) {
                        long j10 = this.mState.f2210m;
                        ViewHolder viewHolderFindViewHolderForItemId = (j10 == -1 || !this.mAdapter.f2189b) ? null : findViewHolderForItemId(j10);
                        if (viewHolderFindViewHolderForItemId != null) {
                            if (!this.mChildHelper.f2149c.contains(viewHolderFindViewHolderForItemId.itemView) && viewHolderFindViewHolderForItemId.itemView.hasFocusable()) {
                                view = viewHolderFindViewHolderForItemId.itemView;
                            } else if (this.mChildHelper.e() > 0) {
                                n2 n2Var3 = this.mState;
                                int i17 = n2Var3.l;
                                int i18 = i17 != -1 ? i17 : 0;
                                int iB = n2Var3.b();
                                for (int i19 = i18; i19 < iB; i19++) {
                                    ViewHolder viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i19);
                                    if (viewHolderFindViewHolderForAdapterPosition == null) {
                                        break;
                                    }
                                    if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                                int iMin = Math.min(iB, i18) - 1;
                                while (true) {
                                    if (iMin < 0) {
                                        break;
                                    }
                                    ViewHolder viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(iMin);
                                    if (viewHolderFindViewHolderForAdapterPosition2 == null) {
                                        break;
                                    }
                                    if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                        break;
                                    }
                                    iMin--;
                                }
                            }
                            if (view != null) {
                                int i20 = this.mState.f2211n;
                                if (i20 != -1 && (viewFindViewById = view.findViewById(i20)) != null && viewFindViewById.isFocusable()) {
                                    view = viewFindViewById;
                                }
                                view.requestFocus();
                            }
                        }
                    }
                } else if (this.mChildHelper.e() == 0) {
                    requestFocus();
                }
            }
        }
        n2 n2Var4 = this.mState;
        n2Var4.f2210m = -1L;
        n2Var4.l = -1;
        n2Var4.f2211n = -1;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z) {
        return getScrollingChildHelper().a(f10, f11, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().d(i10, i11, i12, i13, iArr, 0, null);
    }

    public void dispatchOnScrollStateChanged(int i10) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.onScrollStateChanged(i10);
        }
        onScrollStateChanged(i10);
        d2 d2Var = this.mScrollListener;
        if (d2Var != null) {
            d2Var.a(this, i10);
        }
        List<d2> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).a(this, i10);
            }
        }
    }

    public void dispatchOnScrolled(int i10, int i11) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        onScrolled(i10, i11);
        d2 d2Var = this.mScrollListener;
        if (d2Var != null) {
            d2Var.b(this, i10, i11);
        }
        List<d2> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).b(this, i10, i11);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i10;
        for (int size = this.mPendingAccessibilityImportanceChange.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = this.mPendingAccessibilityImportanceChange.get(size);
            if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i10 = viewHolder.mPendingAccessibilityState) != -1) {
                x0.b1.B(viewHolder.itemView, i10);
                viewHolder.mPendingAccessibilityState = -1;
            }
        }
        this.mPendingAccessibilityImportanceChange.clear();
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z4 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z |= z4;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.f()) ? z : true) {
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public final void e() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.f2203e = this.mAdapter.b();
        this.mState.f2201c = 0;
        if (this.mPendingSavedState != null) {
            m1 m1Var = this.mAdapter;
            int iC = d0.f.c(m1Var.f2190c);
            if (iC == 1 ? m1Var.b() > 0 : iC != 2) {
                Parcelable parcelable = this.mPendingSavedState.f2164c;
                if (parcelable != null) {
                    this.mLayout.onRestoreInstanceState(parcelable);
                }
                this.mPendingSavedState = null;
            }
        }
        n2 n2Var = this.mState;
        n2Var.f2205g = false;
        this.mLayout.onLayoutChildren(this.mRecycler, n2Var);
        n2 n2Var2 = this.mState;
        n2Var2.f2204f = false;
        n2Var2.f2208j = n2Var2.f2208j && this.mItemAnimator != null;
        n2Var2.f2202d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        ((o2) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mBottomGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        ((o2) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mLeftGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        ((o2) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mRightGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        ((o2) this.mEdgeEffectFactory).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.mTopGlow = edgeEffect;
        if (this.mClipToPadding) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final boolean f(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            c2 c2Var = this.mOnItemTouchListeners.get(i10);
            if (c2Var.c(motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = c2Var;
                return true;
            }
        }
        return false;
    }

    public final void fillRemainingScrollValues(n2 n2Var) {
        if (getScrollState() != 2) {
            n2Var.f2212o = 0;
            n2Var.f2213p = 0;
        } else {
            OverScroller overScroller = this.mViewFlinger.f2236c;
            n2Var.f2212o = overScroller.getFinalX() - overScroller.getCurrX();
            n2Var.f2213p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View findChildViewUnder(float f10, float f11) {
        for (int iE = this.mChildHelper.e() - 1; iE >= 0; iE--) {
            View viewD = this.mChildHelper.d(iE);
            float translationX = viewD.getTranslationX();
            float translationY = viewD.getTranslationY();
            if (f10 >= viewD.getLeft() + translationX && f10 <= viewD.getRight() + translationX && f11 >= viewD.getTop() + translationY && f11 <= viewD.getBottom() + translationY) {
                return viewD;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public ViewHolder findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public ViewHolder findViewHolderForAdapterPosition(int i10) {
        ViewHolder viewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int iH = this.mChildHelper.h();
        for (int i11 = 0; i11 < iH; i11++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i10) {
                i iVar = this.mChildHelper;
                if (!iVar.f2149c.contains(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                viewHolder = childViewHolderInt;
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j10) {
        m1 m1Var = this.mAdapter;
        ViewHolder viewHolder = null;
        if (m1Var != null && m1Var.f2189b) {
            int iH = this.mChildHelper.h();
            for (int i10 = 0; i10 < iH; i10++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i10));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j10) {
                    i iVar = this.mChildHelper;
                    if (!iVar.f2149c.contains(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    viewHolder = childViewHolderInt;
                }
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForLayoutPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    @Deprecated
    public ViewHolder findViewHolderForPosition(int i10) {
        return findViewHolderForPosition(i10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0205  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean fling(int i10, int i11) {
        int iMax;
        int i12;
        int i13;
        RecyclerView recyclerView;
        int i14;
        int minFlingVelocity;
        boolean z;
        int position;
        PointF pointFComputeScrollVectorForPosition;
        int i15;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return false;
        }
        boolean zCanScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        int i16 = (zCanScrollHorizontally == 0 || Math.abs(i10) < this.mMinFlingVelocity) ? 0 : i10;
        int iMax2 = (!zCanScrollVertically || Math.abs(i11) < this.mMinFlingVelocity) ? 0 : i11;
        if (i16 == 0 && iMax2 == 0) {
            return false;
        }
        if (i16 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || com.bumptech.glide.c.B(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.mRightGlow;
                if (edgeEffect2 != null && com.bumptech.glide.c.B(edgeEffect2) != 0.0f) {
                    if (q(this.mRightGlow, i16, getWidth())) {
                        this.mRightGlow.onAbsorb(i16);
                        i16 = 0;
                    }
                    iMax = i16;
                    i16 = 0;
                }
                iMax = 0;
            } else {
                int i17 = -i16;
                if (q(this.mLeftGlow, i17, getWidth())) {
                    this.mLeftGlow.onAbsorb(i17);
                    i16 = 0;
                }
                iMax = i16;
                i16 = 0;
            }
        }
        if (iMax2 == 0) {
            i12 = iMax2;
            iMax2 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 == null || com.bumptech.glide.c.B(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.mBottomGlow;
                if (edgeEffect4 != null && com.bumptech.glide.c.B(edgeEffect4) != 0.0f) {
                    if (q(this.mBottomGlow, iMax2, getHeight())) {
                        this.mBottomGlow.onAbsorb(iMax2);
                        iMax2 = 0;
                    }
                    i12 = 0;
                }
                i12 = iMax2;
                iMax2 = 0;
            } else {
                int i18 = -iMax2;
                if (q(this.mTopGlow, i18, getHeight())) {
                    this.mTopGlow.onAbsorb(i18);
                    iMax2 = 0;
                }
                i12 = 0;
            }
        }
        if (iMax != 0 || iMax2 != 0) {
            int i19 = this.mMaxFlingVelocity;
            iMax = Math.max(-i19, Math.min(iMax, i19));
            int i20 = this.mMaxFlingVelocity;
            iMax2 = Math.max(-i20, Math.min(iMax2, i20));
            this.mViewFlinger.a(iMax, iMax2);
        }
        if (i16 == 0 && i12 == 0) {
            return (iMax == 0 && iMax2 == 0) ? false : true;
        }
        float f10 = i16;
        float f11 = i12;
        if (dispatchNestedPreFling(f10, f11)) {
            return false;
        }
        boolean z4 = zCanScrollHorizontally != 0 || zCanScrollVertically;
        dispatchNestedFling(f10, f11, z4);
        b2 b2Var = this.mOnFlingListener;
        if (b2Var != null) {
            w2 w2Var = (w2) b2Var;
            LayoutManager layoutManager2 = w2Var.f2341a.getLayoutManager();
            if (layoutManager2 != 0 && w2Var.f2341a.getAdapter() != null && ((Math.abs(i12) > (minFlingVelocity = w2Var.f2341a.getMinFlingVelocity()) || Math.abs(i16) > minFlingVelocity) && ((z = layoutManager2 instanceof l2)))) {
                h1 h1Var = (h1) w2Var;
                g1 g1Var = !z ? null : new g1(h1Var, h1Var.f2341a.getContext());
                if (g1Var == null) {
                    i13 = zCanScrollHorizontally ? 1 : 0;
                } else {
                    int itemCount = layoutManager2.getItemCount();
                    if (itemCount != 0) {
                        f1 f1VarH = layoutManager2.canScrollVertically() ? h1Var.h(layoutManager2) : layoutManager2.canScrollHorizontally() ? h1Var.g(layoutManager2) : null;
                        if (f1VarH == null) {
                            i13 = zCanScrollHorizontally ? 1 : 0;
                        } else {
                            int childCount = layoutManager2.getChildCount();
                            int i21 = 0;
                            View view = null;
                            int i22 = Integer.MIN_VALUE;
                            int i23 = Integer.MAX_VALUE;
                            View view2 = null;
                            int i24 = zCanScrollHorizontally;
                            while (i21 < childCount) {
                                int i25 = childCount;
                                View childAt = layoutManager2.getChildAt(i21);
                                if (childAt == null) {
                                    i15 = i24;
                                } else {
                                    i15 = i24;
                                    int iE = h1.e(childAt, f1VarH);
                                    if (iE <= 0 && iE > i22) {
                                        i22 = iE;
                                        view2 = childAt;
                                    }
                                    if (iE >= 0 && iE < i23) {
                                        i23 = iE;
                                        view = childAt;
                                    }
                                }
                                i21++;
                                childCount = i25;
                                i24 = i15;
                            }
                            i13 = i24;
                            boolean z10 = !layoutManager2.canScrollHorizontally() ? i12 <= 0 : i16 <= 0;
                            if (z10 && view != null) {
                                position = layoutManager2.getPosition(view);
                            } else if (z10 || view2 == null) {
                                if (z10) {
                                    view = view2;
                                }
                                if (view != null) {
                                    position = layoutManager2.getPosition(view) + ((z && (pointFComputeScrollVectorForPosition = ((l2) layoutManager2).computeScrollVectorForPosition(layoutManager2.getItemCount() - 1)) != null && ((pointFComputeScrollVectorForPosition.x > 0.0f ? 1 : (pointFComputeScrollVectorForPosition.x == 0.0f ? 0 : -1)) < 0 || (pointFComputeScrollVectorForPosition.y > 0.0f ? 1 : (pointFComputeScrollVectorForPosition.y == 0.0f ? 0 : -1)) < 0)) == z10 ? -1 : 1);
                                    if (position < 0 || position >= itemCount) {
                                    }
                                }
                            } else {
                                position = layoutManager2.getPosition(view2);
                            }
                            if (position != -1) {
                                g1Var.setTargetPosition(position);
                                layoutManager2.startSmoothScroll(g1Var);
                                return true;
                            }
                        }
                        position = -1;
                        if (position != -1) {
                        }
                    }
                }
            }
        }
        if (!z4) {
            return false;
        }
        if (zCanScrollVertically) {
            i14 = i13 | 2;
            recyclerView = this;
        } else {
            recyclerView = this;
            i14 = i13;
        }
        recyclerView.startNestedScroll(i14, 1);
        int i26 = recyclerView.mMaxFlingVelocity;
        int iMax3 = Math.max(-i26, Math.min(i16, i26));
        int i27 = recyclerView.mMaxFlingVelocity;
        recyclerView.mViewFlinger.a(iMax3, Math.max(-i27, Math.min(i12, i27)));
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View viewOnFocusSearchFailed;
        int i11;
        char c7;
        boolean z;
        int i12 = i10;
        View viewOnInterceptFocusSearch = this.mLayout.onInterceptFocusSearch(view, i12);
        if (viewOnInterceptFocusSearch != null) {
            return viewOnInterceptFocusSearch;
        }
        boolean z4 = (this.mAdapter == null || this.mLayout == null || isComputingLayout() || this.mLayoutSuppressed) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z4 && (i12 == 2 || i12 == 1)) {
            if (this.mLayout.canScrollVertically()) {
                int i13 = i12 == 2 ? 130 : 33;
                z = focusFinder.findNextFocus(this, view, i13) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i12 = i13;
                }
            } else {
                z = false;
            }
            if (!z && this.mLayout.canScrollHorizontally()) {
                int i14 = (this.mLayout.getLayoutDirection() == 1) ^ (i12 == 2) ? 66 : 17;
                z = focusFinder.findNextFocus(this, view, i14) == null;
                if (FORCE_ABS_FOCUS_SEARCH_DIRECTION) {
                    i12 = i14;
                }
            }
            if (z) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                this.mLayout.onFocusSearchFailed(view, i12, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            }
            viewOnFocusSearchFailed = focusFinder.findNextFocus(this, view, i12);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i12);
            if (viewFindNextFocus == null && z4) {
                consumePendingUpdateOperations();
                if (findContainingItemView(view) == null) {
                    return null;
                }
                startInterceptRequestLayout();
                viewOnFocusSearchFailed = this.mLayout.onFocusSearchFailed(view, i12, this.mRecycler, this.mState);
                stopInterceptRequestLayout(false);
            } else {
                viewOnFocusSearchFailed = viewFindNextFocus;
            }
        }
        if (viewOnFocusSearchFailed != null && !viewOnFocusSearchFailed.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i12);
            }
            n(viewOnFocusSearchFailed, null);
            return view;
        }
        if (viewOnFocusSearchFailed != null && viewOnFocusSearchFailed != this && viewOnFocusSearchFailed != view && findContainingItemView(viewOnFocusSearchFailed) != null) {
            if (view == null || findContainingItemView(view) == null) {
                return viewOnFocusSearchFailed;
            }
            this.mTempRect.set(0, 0, view.getWidth(), view.getHeight());
            this.mTempRect2.set(0, 0, viewOnFocusSearchFailed.getWidth(), viewOnFocusSearchFailed.getHeight());
            offsetDescendantRectToMyCoords(view, this.mTempRect);
            offsetDescendantRectToMyCoords(viewOnFocusSearchFailed, this.mTempRect2);
            int i15 = this.mLayout.getLayoutDirection() == 1 ? -1 : 1;
            Rect rect = this.mTempRect;
            int i16 = rect.left;
            Rect rect2 = this.mTempRect2;
            int i17 = rect2.left;
            if ((i16 < i17 || rect.right <= i17) && rect.right < rect2.right) {
                i11 = 1;
            } else {
                int i18 = rect.right;
                int i19 = rect2.right;
                i11 = ((i18 > i19 || i16 >= i19) && i16 > i17) ? -1 : 0;
            }
            int i20 = rect.top;
            int i21 = rect2.top;
            if ((i20 < i21 || rect.bottom <= i21) && rect.bottom < rect2.bottom) {
                c7 = 1;
            } else {
                int i22 = rect.bottom;
                int i23 = rect2.bottom;
                c7 = ((i22 > i23 || i20 >= i23) && i20 > i21) ? (char) 65535 : (char) 0;
            }
            if (i12 != 1) {
                if (i12 != 2) {
                    if (i12 != 17) {
                        if (i12 != 33) {
                            if (i12 != 66) {
                                if (i12 != 130) {
                                    StringBuilder sb2 = new StringBuilder("Invalid direction: ");
                                    sb2.append(i12);
                                    throw new IllegalArgumentException(android.support.v4.media.session.a.m(this, sb2));
                                }
                                if (c7 > 0) {
                                    return viewOnFocusSearchFailed;
                                }
                            } else if (i11 > 0) {
                                return viewOnFocusSearchFailed;
                            }
                        } else if (c7 < 0) {
                            return viewOnFocusSearchFailed;
                        }
                    } else if (i11 < 0) {
                        return viewOnFocusSearchFailed;
                    }
                } else {
                    if (c7 > 0) {
                        return viewOnFocusSearchFailed;
                    }
                    if (c7 == 0 && i11 * i15 > 0) {
                        return viewOnFocusSearchFailed;
                    }
                }
            } else {
                if (c7 < 0) {
                    return viewOnFocusSearchFailed;
                }
                if (c7 == 0 && i11 * i15 < 0) {
                    return viewOnFocusSearchFailed;
                }
            }
        }
        return super.focusSearch(view, i12);
    }

    public final void g(int[] iArr) {
        int iE = this.mChildHelper.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iE; i12++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.d(i12));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i10) {
                    i10 = layoutPosition;
                }
                if (layoutPosition > i11) {
                    i11 = layoutPosition;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateDefaultLayoutParams();
        }
        throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(getContext(), attributeSet);
        }
        throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public m1 getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(AndroidPubkey.ANDROID_PUBKEY_ENCODED_SIZE) || !viewHolder.isBound()) {
            return -1;
        }
        b bVar = this.mAdapterHelper;
        int i10 = viewHolder.mPosition;
        ArrayList arrayList = bVar.f2031b;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            a aVar = (a) arrayList.get(i11);
            int i12 = aVar.f2023a;
            if (i12 != 1) {
                if (i12 == 2) {
                    int i13 = aVar.f2024b;
                    if (i13 <= i10) {
                        int i14 = aVar.f2026d;
                        if (i13 + i14 > i10) {
                            return -1;
                        }
                        i10 -= i14;
                    } else {
                        continue;
                    }
                } else if (i12 == 8) {
                    int i15 = aVar.f2024b;
                    if (i15 == i10) {
                        i10 = aVar.f2026d;
                    } else {
                        if (i15 < i10) {
                            i10--;
                        }
                        if (aVar.f2026d <= i10) {
                            i10++;
                        }
                    }
                }
            } else if (aVar.f2024b <= i10) {
                i10 += aVar.f2026d;
            }
        }
        return i10;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.mLayout;
        return layoutManager != null ? layoutManager.getBaseline() : super.getBaseline();
    }

    public long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.f2189b ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i10, int i11) {
        p1 p1Var = this.mChildDrawingOrderCallback;
        if (p1Var == null) {
            return super.getChildDrawingOrder(i10, i11);
        }
        u0 u0Var = (u0) ((c) p1Var).f2050a;
        View view = u0Var.f2313x;
        if (view == null) {
            return i11;
        }
        int iIndexOfChild = u0Var.f2314y;
        if (iIndexOfChild == -1) {
            iIndexOfChild = u0Var.r.indexOfChild(view);
            u0Var.f2314y = iIndexOfChild;
        }
        return i11 == i10 + (-1) ? iIndexOfChild : i11 < iIndexOfChild ? i11 : i11 + 1;
    }

    public long getChildItemId(View view) {
        ViewHolder childViewHolderInt;
        m1 m1Var = this.mAdapter;
        if (m1Var == null || !m1Var.f2189b || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public s2 getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public q1 getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public t1 getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.mInsetsDirty) {
            return layoutParams.mDecorInsets;
        }
        if (this.mState.f2205g && (layoutParams.isItemChanged() || layoutParams.isViewInvalid())) {
            return layoutParams.mDecorInsets;
        }
        Rect rect = layoutParams.mDecorInsets;
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i10).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i11 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.mInsetsDirty = false;
        return rect;
    }

    public v1 getItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            return this.mItemDecorations.get(i10);
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public b2 getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public f2 getRecycledViewPool() {
        return this.mRecycler.c();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    public boolean h() {
        return isChildrenDrawingOrderEnabled();
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public final void i(int i10, int i11, MotionEvent motionEvent) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zCanScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        int i12 = zCanScrollVertically ? (zCanScrollHorizontally ? 1 : 0) | 2 : zCanScrollHorizontally ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int iL = i10 - l(height, i10);
        int iM = i11 - m(width, i11);
        startNestedScroll(i12, 1);
        if (dispatchNestedPreScroll(zCanScrollHorizontally ? iL : 0, zCanScrollVertically ? iM : 0, this.mReusableIntPair, this.mScrollOffset, 1)) {
            int[] iArr2 = this.mReusableIntPair;
            iL -= iArr2[0];
            iM -= iArr2[1];
        }
        scrollByInternal(zCanScrollHorizontally ? iL : 0, zCanScrollVertically ? iM : 0, motionEvent, 1);
        g0 g0Var = this.mGapWorker;
        if (g0Var != null && (iL != 0 || iM != 0)) {
            g0Var.a(this, iL, iM);
        }
        stopNestedScroll(1);
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new b(new l1(this));
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        }
        Resources resources = getContext().getResources();
        new d0(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.yunpan.appmanage.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.yunpan.appmanage.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.yunpan.appmanage.R.dimen.fastscroll_margin));
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        t1 t1Var = this.mItemAnimator;
        return t1Var != null && t1Var.f();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View, x0.s
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f18053d;
    }

    public final void j(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y6 = (int) (motionEvent.getY(i10) + 0.5f);
            this.mLastTouchY = y6;
            this.mInitialTouchY = y6;
        }
    }

    public void jumpToPositionForSmoothScroller(int i10) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.scrollToPosition(i10);
        awakenScrollBars();
    }

    public final void k() {
        boolean z;
        boolean z4 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            b bVar = this.mAdapterHelper;
            bVar.k(bVar.f2031b);
            bVar.k(bVar.f2032c);
            bVar.f2035f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.onItemsChanged(this);
            }
        }
        if (this.mItemAnimator == null || !this.mLayout.supportsPredictiveItemAnimations()) {
            this.mAdapterHelper.c();
        } else {
            this.mAdapterHelper.j();
        }
        boolean z10 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        n2 n2Var = this.mState;
        boolean z11 = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z = this.mDataSetHasChangedAfterLayout) || z10 || this.mLayout.mRequestedSimpleAnimations) && (!z || this.mAdapter.f2189b);
        n2Var.f2208j = z11;
        if (z11 && z10 && !this.mDataSetHasChangedAfterLayout && this.mItemAnimator != null && this.mLayout.supportsPredictiveItemAnimations()) {
            z4 = true;
        }
        n2Var.f2209k = z4;
    }

    public final int l(float f10, int i10) {
        float height = f10 / getHeight();
        float width = i10 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f11 = 0.0f;
        if (edgeEffect == null || com.bumptech.glide.c.B(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && com.bumptech.glide.c.B(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.mRightGlow.onRelease();
                } else {
                    float fQ = com.bumptech.glide.c.Q(this.mRightGlow, width, height);
                    if (com.bumptech.glide.c.B(this.mRightGlow) == 0.0f) {
                        this.mRightGlow.onRelease();
                    }
                    f11 = fQ;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.mLeftGlow.onRelease();
            } else {
                float f12 = -com.bumptech.glide.c.Q(this.mLeftGlow, -width, 1.0f - height);
                if (com.bumptech.glide.c.B(this.mLeftGlow) == 0.0f) {
                    this.mLeftGlow.onRelease();
                }
                f11 = f12;
            }
            invalidate();
        }
        return Math.round(f11 * getWidth());
    }

    public final int m(float f10, int i10) {
        float width = f10 / getWidth();
        float height = i10 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f11 = 0.0f;
        if (edgeEffect == null || com.bumptech.glide.c.B(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && com.bumptech.glide.c.B(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.mBottomGlow.onRelease();
                } else {
                    float fQ = com.bumptech.glide.c.Q(this.mBottomGlow, height, 1.0f - width);
                    if (com.bumptech.glide.c.B(this.mBottomGlow) == 0.0f) {
                        this.mBottomGlow.onRelease();
                    }
                    f11 = fQ;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.mTopGlow.onRelease();
            } else {
                float f12 = -com.bumptech.glide.c.Q(this.mTopGlow, -height, width);
                if (com.bumptech.glide.c.B(this.mTopGlow) == 0.0f) {
                    this.mTopGlow.onRelease();
                }
                f11 = f12;
            }
            invalidate();
        }
        return Math.round(f11 * getHeight());
    }

    public void markItemDecorInsetsDirty() {
        int iH = this.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            ((LayoutParams) this.mChildHelper.g(i10).getLayoutParams()).mInsetsDirty = true;
        }
        ArrayList arrayList = this.mRecycler.f2132c;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i11)).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.mInsetsDirty = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int iH = this.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i10));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        g2 g2Var = this.mRecycler;
        ArrayList arrayList = g2Var.f2132c;
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i11);
            if (viewHolder != null) {
                viewHolder.addFlags(6);
                viewHolder.addChangePayload(null);
            }
        }
        m1 m1Var = g2Var.f2137h.mAdapter;
        if (m1Var == null || !m1Var.f2189b) {
            g2Var.h();
        }
    }

    public final void n(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.mInsetsDirty) {
                Rect rect = layoutParams2.mDecorInsets;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.requestChildRectangleOnScreen(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    public void nestedScrollBy(int i10, int i11) {
        i(i10, i11, null);
    }

    public final void o() {
        VelocityTracker velocityTracker = this.mVelocityTracker;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean zIsFinished = false;
        stopNestedScroll(0);
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            WeakHashMap weakHashMap = x0.b1.f17953a;
            x0.j0.k(this);
        }
    }

    public void offsetChildrenHorizontal(int i10) {
        int iE = this.mChildHelper.e();
        for (int i11 = 0; i11 < iE; i11++) {
            this.mChildHelper.d(i11).offsetLeftAndRight(i10);
        }
    }

    public void offsetChildrenVertical(int i10) {
        int iE = this.mChildHelper.e();
        for (int i11 = 0; i11 < iE; i11++) {
            this.mChildHelper.d(i11).offsetTopAndBottom(i10);
        }
    }

    public void offsetPositionRecordsForInsert(int i10, int i11) {
        int iH = this.mChildHelper.h();
        for (int i12 = 0; i12 < iH; i12++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i12));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i10) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                childViewHolderInt.offsetPosition(i11, false);
                this.mState.f2204f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f2132c;
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i13);
            if (viewHolder != null && viewHolder.mPosition >= i10) {
                if (sVerboseLoggingEnabled) {
                    viewHolder.toString();
                }
                viewHolder.offsetPosition(i11, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iH = this.mChildHelper.h();
        int i19 = -1;
        if (i10 < i11) {
            i13 = i10;
            i12 = i11;
            i14 = -1;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i20 = 0; i20 < iH; i20++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i20));
            if (childViewHolderInt != null && (i18 = childViewHolderInt.mPosition) >= i13 && i18 <= i12) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                if (childViewHolderInt.mPosition == i10) {
                    childViewHolderInt.offsetPosition(i11 - i10, false);
                } else {
                    childViewHolderInt.offsetPosition(i14, false);
                }
                this.mState.f2204f = true;
            }
        }
        g2 g2Var = this.mRecycler;
        g2Var.getClass();
        if (i10 < i11) {
            i16 = i10;
            i15 = i11;
        } else {
            i15 = i10;
            i16 = i11;
            i19 = 1;
        }
        ArrayList arrayList = g2Var.f2132c;
        int size = arrayList.size();
        for (int i21 = 0; i21 < size; i21++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i21);
            if (viewHolder != null && (i17 = viewHolder.mPosition) >= i16 && i17 <= i15) {
                if (i17 == i10) {
                    viewHolder.offsetPosition(i11 - i10, false);
                } else {
                    viewHolder.offsetPosition(i19, false);
                }
                if (sVerboseLoggingEnabled) {
                    viewHolder.toString();
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i10, int i11, boolean z) {
        int i12 = i10 + i11;
        int iH = this.mChildHelper.h();
        for (int i13 = 0; i13 < iH; i13++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i13));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i14 = childViewHolderInt.mPosition;
                if (i14 >= i12) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.offsetPosition(-i11, z);
                    this.mState.f2204f = true;
                } else if (i14 >= i10) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i10 - 1, -i11, z);
                    this.mState.f2204f = true;
                }
            }
        }
        g2 g2Var = this.mRecycler;
        ArrayList arrayList = g2Var.f2132c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i15 = viewHolder.mPosition;
                if (i15 >= i12) {
                    if (sVerboseLoggingEnabled) {
                        viewHolder.toString();
                    }
                    viewHolder.offsetPosition(-i11, z);
                } else if (i15 >= i10) {
                    viewHolder.addFlags(8);
                    g2Var.i(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.f();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.dispatchAttachedToWindow(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal threadLocal = g0.f2123e;
            g0 g0Var = (g0) threadLocal.get();
            this.mGapWorker = g0Var;
            if (g0Var == null) {
                this.mGapWorker = new g0();
                WeakHashMap weakHashMap = x0.b1.f17953a;
                Display displayB = x0.k0.b(this);
                if (isInEditMode() || displayB == null) {
                    refreshRate = 60.0f;
                    g0 g0Var2 = this.mGapWorker;
                    g0Var2.f2127c = (long) (1.0E9f / refreshRate);
                    threadLocal.set(g0Var2);
                } else {
                    refreshRate = displayB.getRefreshRate();
                    if (refreshRate < 30.0f) {
                    }
                    g0 g0Var22 = this.mGapWorker;
                    g0Var22.f2127c = (long) (1.0E9f / refreshRate);
                    threadLocal.set(g0Var22);
                }
            }
            g0 g0Var3 = this.mGapWorker;
            g0Var3.getClass();
            boolean z = sDebugAssertionsEnabled;
            ArrayList arrayList = g0Var3.f2125a;
            if (z && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        g0 g0Var;
        super.onDetachedFromWindow();
        t1 t1Var = this.mItemAnimator;
        if (t1Var != null) {
            t1Var.e();
        }
        stopScroll();
        int i10 = 0;
        this.mIsAttached = false;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.dispatchDetachedFromWindow(this, this.mRecycler);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (g3.f2138d.a() != null) {
        }
        g2 g2Var = this.mRecycler;
        int i11 = 0;
        while (true) {
            ArrayList arrayList = g2Var.f2132c;
            if (i11 >= arrayList.size()) {
                break;
            }
            q4.a.d(((ViewHolder) arrayList.get(i11)).itemView);
            i11++;
        }
        g2Var.g(g2Var.f2137h.mAdapter, false);
        while (i10 < getChildCount()) {
            int i12 = i10 + 1;
            View childAt = getChildAt(i10);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            d1.a aVar = (d1.a) childAt.getTag(com.yunpan.appmanage.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new d1.a();
                childAt.setTag(com.yunpan.appmanage.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList2 = aVar.f4244a;
            int iK0 = je.k.k0(arrayList2);
            if (-1 < iK0) {
                g.b.t(arrayList2.get(iK0));
                throw null;
            }
            i10 = i12;
        }
        if (!ALLOW_THREAD_GAP_WORK || (g0Var = this.mGapWorker) == null) {
            return;
        }
        boolean zRemove = g0Var.f2125a.remove(this);
        if (sDebugAssertionsEnabled && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mItemDecorations.get(i10).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f10;
        float axisValue;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f10 = this.mLayout.canScrollVertically() ? -motionEvent.getAxisValue(9) : 0.0f;
                axisValue = this.mLayout.canScrollHorizontally() ? motionEvent.getAxisValue(10) : 0.0f;
                if (f10 != 0.0f || axisValue != 0.0f) {
                    i((int) (axisValue * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent);
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                float axisValue2 = motionEvent.getAxisValue(26);
                if (this.mLayout.canScrollVertically()) {
                    f10 = -axisValue2;
                    if (f10 != 0.0f) {
                        i((int) (axisValue * this.mScaledHorizontalScrollFactor), (int) (f10 * this.mScaledVerticalScrollFactor), motionEvent);
                    }
                } else {
                    if (this.mLayout.canScrollHorizontally()) {
                        axisValue = axisValue2;
                        f10 = 0.0f;
                        if (f10 != 0.0f) {
                        }
                    }
                    f10 = 0.0f;
                    if (f10 != 0.0f) {
                    }
                }
            } else {
                f10 = 0.0f;
                if (f10 != 0.0f) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z4;
        if (this.mLayoutSuppressed) {
            return false;
        }
        this.mInterceptingOnItemTouchListener = null;
        if (f(motionEvent)) {
            o();
            setScrollState(0);
            return true;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return false;
        }
        boolean zCanScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.mIgnoreMotionEventTillDown) {
                this.mIgnoreMotionEventTillDown = false;
            }
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y6 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y6;
            this.mInitialTouchY = y6;
            EdgeEffect edgeEffect = this.mLeftGlow;
            if (edgeEffect == null || com.bumptech.glide.c.B(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                z = false;
            } else {
                com.bumptech.glide.c.Q(this.mLeftGlow, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                z = true;
            }
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && com.bumptech.glide.c.B(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                com.bumptech.glide.c.Q(this.mRightGlow, 0.0f, motionEvent.getY() / getHeight());
                z = true;
            }
            EdgeEffect edgeEffect3 = this.mTopGlow;
            if (edgeEffect3 != null && com.bumptech.glide.c.B(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                com.bumptech.glide.c.Q(this.mTopGlow, 0.0f, motionEvent.getX() / getWidth());
                z = true;
            }
            EdgeEffect edgeEffect4 = this.mBottomGlow;
            if (edgeEffect4 != null && com.bumptech.glide.c.B(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                com.bumptech.glide.c.Q(this.mBottomGlow, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                z = true;
            }
            if (z || this.mScrollState == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                stopNestedScroll(1);
            }
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else if (actionMasked == 1) {
            this.mVelocityTracker.clear();
            stopNestedScroll(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
            if (iFindPointerIndex < 0) {
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.mScrollState != 1) {
                int i11 = x11 - this.mInitialTouchX;
                int i12 = y10 - this.mInitialTouchY;
                if (zCanScrollHorizontally == 0 || Math.abs(i11) <= this.mTouchSlop) {
                    z4 = false;
                } else {
                    this.mLastTouchX = x11;
                    z4 = true;
                }
                if (zCanScrollVertically && Math.abs(i12) > this.mTouchSlop) {
                    this.mLastTouchY = y10;
                    z4 = true;
                }
                if (z4) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            o();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.mLastTouchX = x12;
            this.mInitialTouchX = x12;
            int y11 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.mLastTouchY = y11;
            this.mInitialTouchY = y11;
        } else if (actionMasked == 6) {
            j(motionEvent);
        }
        return this.mScrollState == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        t0.o.a(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        t0.o.b();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            defaultOnMeasure(i10, i11);
            return;
        }
        boolean z = false;
        if (layoutManager.isAutoMeasureEnabled()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z;
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.f2202d == 1) {
                d();
            }
            this.mLayout.setMeasureSpecs(i10, i11);
            this.mState.f2207i = true;
            e();
            this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            if (this.mLayout.shouldMeasureTwice()) {
                this.mLayout.setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f2207i = true;
                e();
                this.mLayout.setMeasuredDimensionFromChildren(i10, i11);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            k();
            onExitLayoutOrScroll();
            n2 n2Var = this.mState;
            if (n2Var.f2209k) {
                n2Var.f2205g = true;
            } else {
                this.mAdapterHelper.c();
                this.mState.f2205g = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f2209k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        m1 m1Var = this.mAdapter;
        if (m1Var != null) {
            this.mState.f2203e = m1Var.b();
        } else {
            this.mState.f2203e = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.onMeasure(this.mRecycler, this.mState, i10, i11);
        stopInterceptRequestLayout(false);
        this.mState.f2205g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof j2)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        j2 j2Var = (j2) parcelable;
        this.mPendingSavedState = j2Var;
        super.onRestoreInstanceState(j2Var.f4709a);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        j2 j2Var = new j2(super.onSaveInstanceState());
        j2 j2Var2 = this.mPendingSavedState;
        if (j2Var2 != null) {
            j2Var.f2164c = j2Var2.f2164c;
        } else {
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                j2Var.f2164c = layoutManager.onSaveInstanceState();
            } else {
                j2Var.f2164c = null;
            }
        }
        return j2Var;
    }

    public void onScrollStateChanged(int i10) {
    }

    public void onScrolled(int i10, int i11) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00e4 A[PHI: r0
  0x00e4: PHI (r0v41 int) = (r0v30 int), (r0v45 int) binds: [B:49:0x00cd, B:53:0x00e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fd  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zF;
        boolean z;
        if (this.mLayoutSuppressed || this.mIgnoreMotionEventTillDown) {
            return false;
        }
        c2 c2Var = this.mInterceptingOnItemTouchListener;
        if (c2Var == null) {
            zF = motionEvent.getAction() == 0 ? false : f(motionEvent);
        } else {
            c2Var.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.mInterceptingOnItemTouchListener = null;
            }
            zF = true;
        }
        if (zF) {
            o();
            setScrollState(0);
            return true;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return false;
        }
        boolean zCanScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            int[] iArr = this.mNestedOffsets;
            iArr[1] = 0;
            iArr[0] = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        int[] iArr2 = this.mNestedOffsets;
        motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
        if (actionMasked == 0) {
            this.mScrollPointerId = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.mLastTouchX = x10;
            this.mInitialTouchX = x10;
            int y6 = (int) (motionEvent.getY() + 0.5f);
            this.mLastTouchY = y6;
            this.mInitialTouchY = y6;
            int i10 = zCanScrollHorizontally;
            if (zCanScrollVertically) {
                i10 = (zCanScrollHorizontally ? 1 : 0) | 2;
            }
            startNestedScroll(i10, 0);
        } else {
            if (actionMasked == 1) {
                this.mVelocityTracker.addMovement(motionEventObtain);
                this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                float f10 = zCanScrollHorizontally != 0 ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                float f11 = zCanScrollVertically ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                if ((f10 == 0.0f && f11 == 0.0f) || !fling((int) f10, (int) f11)) {
                    setScrollState(0);
                }
                o();
                motionEventObtain.recycle();
                return true;
            }
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                if (iFindPointerIndex < 0) {
                    return false;
                }
                int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                int y10 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                int iMax = this.mLastTouchX - x11;
                int iMax2 = this.mLastTouchY - y10;
                if (this.mScrollState != 1) {
                    if (zCanScrollHorizontally == 0) {
                        z = false;
                        if (zCanScrollVertically) {
                            iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.mTouchSlop) : Math.min(0, iMax2 + this.mTouchSlop);
                            if (iMax2 != 0) {
                                z = true;
                            }
                        }
                        if (z) {
                            setScrollState(1);
                        }
                    } else {
                        iMax = iMax > 0 ? Math.max(0, iMax - this.mTouchSlop) : Math.min(0, iMax + this.mTouchSlop);
                        if (iMax != 0) {
                            z = true;
                        }
                        if (zCanScrollVertically) {
                        }
                        if (z) {
                        }
                    }
                    motionEventObtain.recycle();
                    return true;
                }
                if (this.mScrollState == 1) {
                    int[] iArr3 = this.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    int iL = iMax - l(motionEvent.getY(), iMax);
                    int iM = iMax2 - m(motionEvent.getX(), iMax2);
                    if (dispatchNestedPreScroll(zCanScrollHorizontally != 0 ? iL : 0, zCanScrollVertically ? iM : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                        int[] iArr4 = this.mReusableIntPair;
                        iL -= iArr4[0];
                        iM -= iArr4[1];
                        int[] iArr5 = this.mNestedOffsets;
                        int i11 = iArr5[0];
                        int[] iArr6 = this.mScrollOffset;
                        iArr5[0] = i11 + iArr6[0];
                        iArr5[1] = iArr5[1] + iArr6[1];
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    int i12 = iM;
                    int[] iArr7 = this.mScrollOffset;
                    this.mLastTouchX = x11 - iArr7[0];
                    this.mLastTouchY = y10 - iArr7[1];
                    if (scrollByInternal(zCanScrollHorizontally != 0 ? iL : 0, zCanScrollVertically ? i12 : 0, motionEvent, 0)) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    g0 g0Var = this.mGapWorker;
                    if (g0Var != null && (iL != 0 || i12 != 0)) {
                        g0Var.a(this, iL, i12);
                    }
                }
            } else if (actionMasked == 3) {
                o();
                setScrollState(0);
            } else if (actionMasked == 5) {
                this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.mLastTouchX = x12;
                this.mInitialTouchX = x12;
                int y11 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.mLastTouchY = y11;
                this.mInitialTouchY = y11;
            } else if (actionMasked == 6) {
                j(motionEvent);
            }
        }
        this.mVelocityTracker.addMovement(motionEventObtain);
        motionEventObtain.recycle();
        return true;
    }

    public final void p(m1 m1Var, boolean z, boolean z4) {
        m1 m1Var2 = this.mAdapter;
        if (m1Var2 != null) {
            m1Var2.f2188a.unregisterObserver(this.mObserver);
            this.mAdapter.j(this);
        }
        if (!z || z4) {
            removeAndRecycleViews();
        }
        b bVar = this.mAdapterHelper;
        bVar.k(bVar.f2031b);
        bVar.k(bVar.f2032c);
        int i10 = 0;
        bVar.f2035f = 0;
        m1 m1Var3 = this.mAdapter;
        this.mAdapter = m1Var;
        if (m1Var != null) {
            m1Var.o(this.mObserver);
            m1Var.f(this);
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.onAdapterChanged(m1Var3, this.mAdapter);
        }
        g2 g2Var = this.mRecycler;
        m1 m1Var4 = this.mAdapter;
        g2Var.f2130a.clear();
        g2Var.h();
        g2Var.g(m1Var3, true);
        f2 f2VarC = g2Var.c();
        if (m1Var3 != null) {
            f2VarC.f2115b--;
        }
        if (!z && f2VarC.f2115b == 0) {
            while (true) {
                SparseArray sparseArray = f2VarC.f2114a;
                if (i10 >= sparseArray.size()) {
                    break;
                }
                e2 e2Var = (e2) sparseArray.valueAt(i10);
                Iterator it = e2Var.f2094a.iterator();
                while (it.hasNext()) {
                    q4.a.d(((ViewHolder) it.next()).itemView);
                }
                e2Var.f2094a.clear();
                i10++;
            }
        }
        if (m1Var4 != null) {
            f2VarC.f2115b++;
        } else {
            f2VarC.getClass();
        }
        g2Var.f();
        this.mState.f2204f = true;
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        WeakHashMap weakHashMap = x0.b1.f17953a;
        x0.j0.m(this, runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public final boolean q(EdgeEffect edgeEffect, int i10, int i11) {
        if (i10 > 0) {
            return true;
        }
        float fB = com.bumptech.glide.c.B(edgeEffect) * i11;
        double dLog = Math.log((Math.abs(-i10) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        double d10 = DECELERATION_RATE;
        Double.isNaN(d10);
        double d11 = this.mPhysicalCoef * SCROLL_FRICTION;
        Double.isNaN(d10);
        double dExp = Math.exp((d10 / (d10 - 1.0d)) * dLog);
        Double.isNaN(d11);
        return ((float) (dExp * d11)) < fB;
    }

    public void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, s1 s1Var) {
        viewHolder.setFlags(0, 8192);
        if (this.mState.f2206h && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            this.mViewInfoStore.f2158b.h(viewHolder, getChangedHolderKey(viewHolder));
        }
        a0.t tVar = this.mViewInfoStore.f2157a;
        g3 g3VarA = (g3) tVar.get(viewHolder);
        if (g3VarA == null) {
            g3VarA = g3.a();
            tVar.put(viewHolder, g3VarA);
        }
        g3VarA.f2140b = s1Var;
        g3VarA.f2139a |= 4;
    }

    public void removeAndRecycleViews() {
        t1 t1Var = this.mItemAnimator;
        if (t1Var != null) {
            t1Var.e();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
        }
        g2 g2Var = this.mRecycler;
        g2Var.f2130a.clear();
        g2Var.h();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        i iVar = this.mChildHelper;
        h hVar = iVar.f2148b;
        k1 k1Var = iVar.f2147a;
        int i10 = iVar.f2150d;
        boolean z = true;
        if (i10 != 1) {
            if (i10 == 2) {
                throw new IllegalStateException("Cannot call removeViewIfHidden within removeViewIfHidden");
            }
            try {
                iVar.f2150d = 2;
                int iIndexOfChild = k1Var.f2168a.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    iVar.l(view);
                } else if (hVar.n(iIndexOfChild)) {
                    hVar.p(iIndexOfChild);
                    iVar.l(view);
                    k1Var.a(iIndexOfChild);
                } else {
                    iVar.f2150d = 0;
                }
                if (z) {
                    ViewHolder childViewHolderInt = getChildViewHolderInt(view);
                    this.mRecycler.n(childViewHolderInt);
                    this.mRecycler.k(childViewHolderInt);
                    if (sVerboseLoggingEnabled) {
                        if (view != null) {
                            view.toString();
                        }
                        toString();
                    }
                }
                stopInterceptRequestLayout(!z);
                return z;
            } finally {
                iVar.f2150d = 0;
            }
        }
        if (iVar.f2151e != view) {
            throw new IllegalStateException("Cannot call removeViewIfHidden within removeView(At) for a different view");
        }
        z = false;
        if (z) {
        }
        stopInterceptRequestLayout(!z);
        return z;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb2 = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb2.append(childViewHolderInt);
                throw new IllegalArgumentException(android.support.v4.media.session.a.m(this, sb2));
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb3 = new StringBuilder("No ViewHolder found for child: ");
            sb3.append(view);
            throw new IllegalArgumentException(android.support.v4.media.session.a.m(this, sb3));
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(v1 v1Var) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.assertNotInLayoutOrScroll("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(v1Var);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i10) {
        int itemDecorationCount = getItemDecorationCount();
        if (i10 >= 0 && i10 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i10));
            return;
        }
        throw new IndexOutOfBoundsException(i10 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(a2 a2Var) {
        List<a2> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(a2Var);
    }

    public void removeOnItemTouchListener(c2 c2Var) {
        this.mOnItemTouchListeners.remove(c2Var);
        if (this.mInterceptingOnItemTouchListener == c2Var) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(d2 d2Var) {
        List<d2> list = this.mScrollListeners;
        if (list != null) {
            list.remove(d2Var);
        }
    }

    public void removeRecyclerListener(h2 h2Var) {
        this.mRecyclerListeners.remove(h2Var);
    }

    public void repositionShadowingViews() {
        ViewHolder viewHolder;
        int iE = this.mChildHelper.e();
        for (int i10 = 0; i10 < iE; i10++) {
            View viewD = this.mChildHelper.d(i10);
            ViewHolder childViewHolder = getChildViewHolder(viewD);
            if (childViewHolder != null && (viewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = viewHolder.itemView;
                int left = viewD.getLeft();
                int top = viewD.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.mLayout.onRequestChildFocus(this, this.mState, view, view2) && view2 != null) {
            n(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.requestChildRectangleOnScreen(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mOnItemTouchListeners.get(i10).d(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int iH = this.mChildHelper.h();
        for (int i10 = 0; i10 < iH; i10++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i10));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
            }
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.saveOldPosition();
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        boolean zCanScrollHorizontally = layoutManager.canScrollHorizontally();
        boolean zCanScrollVertically = this.mLayout.canScrollVertically();
        if (zCanScrollHorizontally || zCanScrollVertically) {
            if (!zCanScrollHorizontally) {
                i10 = 0;
            }
            if (!zCanScrollVertically) {
                i11 = 0;
            }
            scrollByInternal(i10, i11, null, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean scrollByInternal(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i10, i11, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i17 = iArr2[0];
            int i18 = iArr2[1];
            i13 = i18;
            i14 = i17;
            i15 = i10 - i17;
            i16 = i11 - i18;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i14, i13, i15, i16, this.mScrollOffset, i12, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i19 = iArr4[0];
        int i20 = i15 - i19;
        int i21 = iArr4[1];
        int i22 = i16 - i21;
        boolean z4 = (i19 == 0 && i21 == 0) ? false : true;
        int i23 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i24 = iArr5[0];
        this.mLastTouchX = i23 - i24;
        int i25 = this.mLastTouchY;
        int i26 = iArr5[1];
        this.mLastTouchY = i25 - i26;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i24;
        iArr6[1] = iArr6[1] + i26;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && (motionEvent.getSource() & 8194) != 8194) {
                float x10 = motionEvent.getX();
                float f10 = i20;
                float y6 = motionEvent.getY();
                float f11 = i22;
                if (f10 < 0.0f) {
                    ensureLeftGlow();
                    com.bumptech.glide.c.Q(this.mLeftGlow, (-f10) / getWidth(), 1.0f - (y6 / getHeight()));
                } else if (f10 > 0.0f) {
                    ensureRightGlow();
                    com.bumptech.glide.c.Q(this.mRightGlow, f10 / getWidth(), y6 / getHeight());
                } else {
                    z = false;
                    if (f11 >= 0.0f) {
                        ensureTopGlow();
                        com.bumptech.glide.c.Q(this.mTopGlow, (-f11) / getHeight(), x10 / getWidth());
                    } else {
                        if (f11 > 0.0f) {
                            ensureBottomGlow();
                            com.bumptech.glide.c.Q(this.mBottomGlow, f11 / getHeight(), 1.0f - (x10 / getWidth()));
                        }
                        if (z || f10 != 0.0f || f11 != 0.0f) {
                            WeakHashMap weakHashMap = x0.b1.f17953a;
                            x0.j0.k(this);
                        }
                    }
                    z = true;
                    if (z) {
                        WeakHashMap weakHashMap2 = x0.b1.f17953a;
                        x0.j0.k(this);
                    }
                }
                z = true;
                if (f11 >= 0.0f) {
                }
                z = true;
                if (z) {
                }
            }
            considerReleasingGlowsOnScroll(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            dispatchOnScrolled(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i14 == 0 && i13 == 0) ? false : true;
    }

    public void scrollStep(int i10, int i11, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        t0.o.a(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iScrollHorizontallyBy = i10 != 0 ? this.mLayout.scrollHorizontallyBy(i10, this.mRecycler, this.mState) : 0;
        int iScrollVerticallyBy = i11 != 0 ? this.mLayout.scrollVerticallyBy(i11, this.mRecycler, this.mState) : 0;
        t0.o.b();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iScrollHorizontallyBy;
            iArr[1] = iScrollVerticallyBy;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
    }

    public void scrollToPosition(int i10) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return;
        }
        layoutManager.scrollToPosition(i10);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(s2 s2Var) {
        this.mAccessibilityDelegate = s2Var;
        x0.b1.x(this, s2Var);
    }

    public void setAdapter(m1 m1Var) {
        setLayoutFrozen(false);
        p(m1Var, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(p1 p1Var) {
        if (p1Var == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = p1Var;
        setChildrenDrawingOrderEnabled(p1Var != null);
    }

    public boolean setChildImportantForAccessibilityInternal(ViewHolder viewHolder, int i10) {
        if (!isComputingLayout()) {
            x0.b1.B(viewHolder.itemView, i10);
            return true;
        }
        viewHolder.mPendingAccessibilityState = i10;
        this.mPendingAccessibilityImportanceChange.add(viewHolder);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(q1 q1Var) {
        q1Var.getClass();
        this.mEdgeEffectFactory = q1Var;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(t1 t1Var) {
        t1 t1Var2 = this.mItemAnimator;
        if (t1Var2 != null) {
            t1Var2.e();
            this.mItemAnimator.f2278a = null;
        }
        this.mItemAnimator = t1Var;
        if (t1Var != null) {
            t1Var.f2278a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i10) {
        g2 g2Var = this.mRecycler;
        g2Var.f2134e = i10;
        g2Var.o();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        RecyclerView recyclerView;
        if (layoutManager == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            t1 t1Var = this.mItemAnimator;
            if (t1Var != null) {
                t1Var.e();
            }
            this.mLayout.removeAndRecycleAllViews(this.mRecycler);
            this.mLayout.removeAndRecycleScrapInt(this.mRecycler);
            g2 g2Var = this.mRecycler;
            g2Var.f2130a.clear();
            g2Var.h();
            if (this.mIsAttached) {
                this.mLayout.dispatchDetachedFromWindow(this, this.mRecycler);
            }
            this.mLayout.setRecyclerView(null);
            this.mLayout = null;
        } else {
            g2 g2Var2 = this.mRecycler;
            g2Var2.f2130a.clear();
            g2Var2.h();
        }
        i iVar = this.mChildHelper;
        iVar.f2148b.r();
        ArrayList arrayList = iVar.f2149c;
        int size = arrayList.size();
        while (true) {
            size--;
            recyclerView = iVar.f2147a.f2168a;
            if (size < 0) {
                break;
            }
            ViewHolder childViewHolderInt = getChildViewHolderInt((View) arrayList.get(size));
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(recyclerView);
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = recyclerView.getChildAt(i10);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.mRecyclerView != null) {
                StringBuilder sb2 = new StringBuilder("LayoutManager ");
                sb2.append(layoutManager);
                sb2.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(android.support.v4.media.session.a.m(layoutManager.mRecyclerView, sb2));
            }
            layoutManager.setRecyclerView(this);
            if (this.mIsAttached) {
                this.mLayout.dispatchAttachedToWindow(this);
            }
        }
        this.mRecycler.o();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().g(z);
    }

    public void setOnFlingListener(b2 b2Var) {
        this.mOnFlingListener = b2Var;
    }

    @Deprecated
    public void setOnScrollListener(d2 d2Var) {
        this.mScrollListener = d2Var;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(f2 f2Var) {
        g2 g2Var = this.mRecycler;
        RecyclerView recyclerView = g2Var.f2137h;
        g2Var.g(recyclerView.mAdapter, false);
        if (g2Var.f2136g != null) {
            r2.f2115b--;
        }
        g2Var.f2136g = f2Var;
        if (f2Var != null && recyclerView.getAdapter() != null) {
            g2Var.f2136g.f2115b++;
        }
        g2Var.f();
    }

    @Deprecated
    public void setRecyclerListener(h2 h2Var) {
        this.mRecyclerListener = h2Var;
    }

    public void setScrollState(int i10) {
        if (i10 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            new Exception();
        }
        this.mScrollState = i10;
        if (i10 != 2) {
            q2 q2Var = this.mViewFlinger;
            q2Var.f2240g.removeCallbacks(q2Var);
            q2Var.f2236c.abortAnimation();
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                layoutManager.stopSmoothScroller();
            }
        }
        dispatchOnScrollStateChanged(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 1) {
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    public void setViewCacheExtension(p2 p2Var) {
        this.mRecycler.getClass();
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int iA = (accessibilityEvent == null || Build.VERSION.SDK_INT < 19) ? 0 : y0.b.a(accessibilityEvent);
        this.mEatenAccessibilityChangeFlags |= iA != 0 ? iA : 0;
        return true;
    }

    public void smoothScrollBy(int i10, int i11) {
        smoothScrollBy(i10, i11, null);
    }

    public void smoothScrollToPosition(int i10) {
        LayoutManager layoutManager;
        if (this.mLayoutSuppressed || (layoutManager = this.mLayout) == null) {
            return;
        }
        layoutManager.smoothScrollToPosition(this, this.mState, i10);
    }

    public void startInterceptRequestLayout() {
        int i10 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i10;
        if (i10 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().h(i10, 0);
    }

    public void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View, x0.s
    public void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    public void stopScroll() {
        setScrollState(0);
        q2 q2Var = this.mViewFlinger;
        q2Var.f2240g.removeCallbacks(q2Var);
        q2Var.f2236c.abortAnimation();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.stopSmoothScroller();
        }
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void viewRangeUpdate(int i10, int i11, Object obj) {
        int i12;
        int i13;
        int iH = this.mChildHelper.h();
        int i14 = i11 + i10;
        for (int i15 = 0; i15 < iH; i15++) {
            View viewG = this.mChildHelper.g(i15);
            ViewHolder childViewHolderInt = getChildViewHolderInt(viewG);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i13 = childViewHolderInt.mPosition) >= i10 && i13 < i14) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) viewG.getLayoutParams()).mInsetsDirty = true;
            }
        }
        g2 g2Var = this.mRecycler;
        ArrayList arrayList = g2Var.f2132c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null && (i12 = viewHolder.mPosition) >= i10 && i12 < i14) {
                viewHolder.addFlags(2);
                g2Var.i(size);
            }
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) throws NoSuchMethodException, SecurityException {
        float fA;
        Object[] objArr;
        Constructor constructor;
        super(context, attributeSet, i10);
        this.mObserver = new i2(this);
        this.mRecycler = new g2(this);
        this.mViewInfoStore = new i3();
        this.mUpdateChildViewsRunnable = new i1(this, 0);
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        this.mItemAnimator = new s();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        boolean z = true;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new q2(this);
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new e0() : null;
        this.mState = new n2();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new u1(this);
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new i1(this, 1 == true ? 1 : 0);
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new j1(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            Method method = x0.e1.f17977a;
            fA = x0.c1.a(viewConfiguration);
        } else {
            fA = x0.e1.a(viewConfiguration, context);
        }
        this.mScaledHorizontalScrollFactor = fA;
        this.mScaledVerticalScrollFactor = i11 >= 26 ? x0.c1.b(viewConfiguration) : x0.e1.a(viewConfiguration, context);
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f2278a = this.mItemAnimatorListener;
        initAdapterManager();
        this.mChildHelper = new i(new k1(this));
        WeakHashMap weakHashMap = x0.b1.f17953a;
        if ((i11 >= 26 ? x0.s0.c(this) : 0) == 0 && i11 >= 26) {
            x0.s0.m(this, 8);
        }
        if (x0.j0.c(this) == 0) {
            x0.b1.B(this, 1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new s2(this));
        int[] iArr = z3.a.f19432a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        x0.b1.w(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z4;
        if (z4) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6), typedArrayObtainStyledAttributes.getDrawable(7), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4), typedArrayObtainStyledAttributes.getDrawable(5));
        }
        typedArrayObtainStyledAttributes.recycle();
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(strTrim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(LayoutManager.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), 0};
                    } catch (NoSuchMethodException e7) {
                        objArr = null;
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                        } catch (NoSuchMethodException e10) {
                            e10.initCause(e7);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strTrim, e10);
                        }
                    }
                    Object[] objArr2 = objArr;
                    constructor.setAccessible(true);
                    setLayoutManager((LayoutManager) constructor.newInstance(objArr2));
                } catch (ClassCastException e11) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strTrim, e11);
                } catch (ClassNotFoundException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strTrim, e12);
                } catch (IllegalAccessException e13) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strTrim, e13);
                } catch (InstantiationException e14) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e14);
                } catch (InvocationTargetException e15) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e15);
                }
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = NESTED_SCROLLING_ATTRS;
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
            x0.b1.w(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i10);
            z = typedArrayObtainStyledAttributes2.getBoolean(0, true);
            typedArrayObtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z);
        setTag(com.yunpan.appmanage.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ViewHolder findViewHolderForPosition(int i10, boolean z) {
        int iH = this.mChildHelper.h();
        ViewHolder viewHolder = null;
        for (int i11 = 0; i11 < iH; i11++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.g(i11));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z) {
                    if (childViewHolderInt.mPosition != i10) {
                        continue;
                    } else {
                        i iVar = this.mChildHelper;
                        if (!iVar.f2149c.contains(childViewHolderInt.itemView)) {
                            return childViewHolderInt;
                        }
                        viewHolder = childViewHolderInt;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i10) {
                    continue;
                }
            }
        }
        return viewHolder;
    }

    public void onExitLayoutOrScroll(boolean z) {
        int i10 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i10;
        if (i10 < 1) {
            if (sDebugAssertionsEnabled && i10 < 0) {
                throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                int i11 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i11 != 0 && isAccessibilityEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    if (Build.VERSION.SDK_INT >= 19) {
                        y0.b.b(accessibilityEventObtain, i11);
                    }
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator) {
        smoothScrollBy(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2, i12);
    }

    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14) {
        return getScrollingChildHelper().d(i10, i11, i12, i13, iArr, i14, null);
    }

    public boolean hasNestedScrollingParent(int i10) {
        return getScrollingChildHelper().f(i10);
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12) {
        smoothScrollBy(i10, i11, interpolator, i12, false);
    }

    public boolean startNestedScroll(int i10, int i11) {
        return getScrollingChildHelper().h(i10, i11);
    }

    public void stopNestedScroll(int i10) {
        getScrollingChildHelper().i(i10);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        final Rect mDecorInsets;
        boolean mInsetsDirty;
        boolean mPendingInvalidate;
        ViewHolder mViewHolder;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public int getAbsoluteAdapterPosition() {
            return this.mViewHolder.getAbsoluteAdapterPosition();
        }

        public int getBindingAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        @Deprecated
        public int getViewAdapterPosition() {
            return this.mViewHolder.getBindingAdapterPosition();
        }

        public int getViewLayoutPosition() {
            return this.mViewHolder.getLayoutPosition();
        }

        @Deprecated
        public int getViewPosition() {
            return this.mViewHolder.getPosition();
        }

        public boolean isItemChanged() {
            return this.mViewHolder.isUpdated();
        }

        public boolean isItemRemoved() {
            return this.mViewHolder.isRemoved();
        }

        public boolean isViewInvalid() {
            return this.mViewHolder.isInvalid();
        }

        public boolean viewNeedsUpdate() {
            return this.mViewHolder.needsUpdate();
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.mDecorInsets = new Rect();
            this.mInsetsDirty = true;
            this.mPendingInvalidate = false;
        }
    }

    public void smoothScrollBy(int i10, int i11, Interpolator interpolator, int i12, boolean z) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        if (!layoutManager.canScrollHorizontally()) {
            i10 = 0;
        }
        if (!this.mLayout.canScrollVertically()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (i12 != Integer.MIN_VALUE && i12 <= 0) {
            scrollBy(i10, i11);
            return;
        }
        if (z) {
            int i13 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i13 |= 2;
            }
            startNestedScroll(i13, 1);
        }
        this.mViewFlinger.c(i10, i11, interpolator, i12);
    }

    public final void dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        getScrollingChildHelper().d(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    public void addItemDecoration(v1 v1Var) {
        addItemDecoration(v1Var, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.generateLayoutParams(layoutParams);
        }
        throw new IllegalStateException(android.support.v4.media.session.a.m(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}

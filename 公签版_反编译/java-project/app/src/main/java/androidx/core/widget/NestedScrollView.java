package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import b1.e;
import b1.i;
import b1.k;
import b1.l;
import com.bumptech.glide.c;
import eb.j;
import java.util.ArrayList;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;
import x0.s;
import x0.t;
import x0.v;

/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements v, s {
    public static final float C = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final i D = new i(0);
    public static final int[] E = {R.attr.fillViewport};
    public final t A;
    public float B;

    /* renamed from: a, reason: collision with root package name */
    public final float f1075a;

    /* renamed from: b, reason: collision with root package name */
    public long f1076b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1077c;

    /* renamed from: d, reason: collision with root package name */
    public final OverScroller f1078d;

    /* renamed from: e, reason: collision with root package name */
    public final EdgeEffect f1079e;

    /* renamed from: f, reason: collision with root package name */
    public final EdgeEffect f1080f;

    /* renamed from: g, reason: collision with root package name */
    public int f1081g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1082h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1083i;

    /* renamed from: j, reason: collision with root package name */
    public View f1084j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f1085k;
    public VelocityTracker l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1086m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1087n;

    /* renamed from: p, reason: collision with root package name */
    public final int f1088p;

    /* renamed from: q, reason: collision with root package name */
    public final int f1089q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public int f1090s;

    /* renamed from: t, reason: collision with root package name */
    public final int[] f1091t;

    /* renamed from: v, reason: collision with root package name */
    public final int[] f1092v;

    /* renamed from: w, reason: collision with root package name */
    public int f1093w;

    /* renamed from: x, reason: collision with root package name */
    public int f1094x;

    /* renamed from: y, reason: collision with root package name */
    public l f1095y;
    public final j z;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.yunpan.appmanage.R.attr.nestedScrollViewStyle);
        this.f1077c = new Rect();
        this.f1082h = true;
        this.f1083i = false;
        this.f1084j = null;
        this.f1085k = false;
        this.f1087n = true;
        this.f1090s = -1;
        this.f1091t = new int[2];
        this.f1092v = new int[2];
        int i10 = Build.VERSION.SDK_INT;
        this.f1079e = i10 >= 31 ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f1080f = i10 >= 31 ? e.a(context, attributeSet) : new EdgeEffect(context);
        this.f1075a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f1078d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1088p = viewConfiguration.getScaledTouchSlop();
        this.f1089q = viewConfiguration.getScaledMinimumFlingVelocity();
        this.r = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E, com.yunpan.appmanage.R.attr.nestedScrollViewStyle, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.z = new j();
        this.A = new t(this);
        setNestedScrollingEnabled(true);
        b1.x(this, D);
    }

    private float getVerticalScrollFactorCompat() {
        if (this.B == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.B = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.B;
    }

    public static boolean m(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m((View) parent, nestedScrollView);
    }

    @Override // x0.u
    public final void a(int i10, View view) {
        j jVar = this.z;
        if (i10 == 1) {
            jVar.f4864b = 0;
        } else {
            jVar.f4863a = 0;
        }
        y(i10);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // x0.v
    public final void b(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        o(i13, i14, iArr);
    }

    @Override // x0.u
    public final void c(View view, int i10, int i11, int i12, int i13, int i14) {
        o(i13, i14, null);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00df  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void computeScroll() {
        int iRound;
        int i10;
        OverScroller overScroller = this.f1078d;
        if (overScroller.isFinished()) {
            return;
        }
        overScroller.computeScrollOffset();
        int currY = overScroller.getCurrY();
        int i11 = currY - this.f1094x;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f1080f;
        EdgeEffect edgeEffect2 = this.f1079e;
        if (i11 <= 0 || c.B(edgeEffect2) == 0.0f) {
            if (i11 < 0 && c.B(edgeEffect) != 0.0f) {
                float f10 = height;
                iRound = Math.round(c.Q(edgeEffect, (i11 * 4.0f) / f10, 0.5f) * (f10 / 4.0f));
                if (iRound != i11) {
                    edgeEffect.finish();
                }
            }
            this.f1094x = currY;
            int[] iArr = this.f1092v;
            iArr[1] = 0;
            i(0, i11, iArr, null, 1);
            i10 = i11 - iArr[1];
            int scrollRange = getScrollRange();
            if (i10 != 0) {
                int scrollY = getScrollY();
                q(i10, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i12 = i10 - scrollY2;
                iArr[1] = 0;
                this.A.d(0, scrollY2, 0, i12, this.f1091t, 1, iArr);
                i10 = i12 - iArr[1];
            }
            if (i10 != 0) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                    if (i10 < 0) {
                        if (edgeEffect2.isFinished()) {
                            edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                        }
                    } else if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                }
                overScroller.abortAnimation();
                y(1);
            }
            if (!overScroller.isFinished()) {
                y(1);
                return;
            } else {
                WeakHashMap weakHashMap = b1.f17953a;
                j0.k(this);
                return;
            }
        }
        iRound = Math.round(c.Q(edgeEffect2, ((-i11) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i11) {
            edgeEffect2.finish();
        }
        i11 -= iRound;
        this.f1094x = currY;
        int[] iArr2 = this.f1092v;
        iArr2[1] = 0;
        i(0, i11, iArr2, null, 1);
        i10 = i11 - iArr2[1];
        int scrollRange2 = getScrollRange();
        if (i10 != 0) {
        }
        if (i10 != 0) {
        }
        if (!overScroller.isFinished()) {
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // x0.u
    public final boolean d(View view, View view2, int i10, int i11) {
        return (i10 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || j(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f10, float f11, boolean z) {
        return this.A.a(f10, f11, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f10, float f11) {
        return this.A.b(f10, f11);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return this.A.c(i10, i11, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return this.A.d(i10, i11, i12, i13, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f1079e;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            int i10 = Build.VERSION.SDK_INT;
            if (i10 < 21 || b1.j.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (i10 >= 21 && b1.j.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                WeakHashMap weakHashMap = b1.f17953a;
                j0.k(this);
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f1080f;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 21 || b1.j.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (i11 >= 21 && b1.j.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            WeakHashMap weakHashMap2 = b1.f17953a;
            j0.k(this);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // x0.u
    public final void e(View view, View view2, int i10, int i11) {
        j jVar = this.z;
        if (i11 == 1) {
            jVar.f4864b = i10;
        } else {
            jVar.f4863a = i10;
        }
        w(2, i11);
    }

    @Override // x0.u
    public final void f(View view, int i10, int i11, int[] iArr, int i12) {
        i(i10, i11, iArr, null, i12);
    }

    public final boolean g(int i10) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i10);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !n(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i10 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i10 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i10 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            t(maxScrollAmount, 0, 1, true);
        } else {
            Rect rect = this.f1077c;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            t(h(rect), 0, 1, true);
            viewFindNextFocus.requestFocus(i10);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && !n(viewFindFocus, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        j jVar = this.z;
        return jVar.f4864b | jVar.f4863a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public final int h(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i10 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i11 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i10 - verticalFadingEdgeLength : i10;
        int i12 = rect.bottom;
        if (i12 > i11 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i11, (childAt.getBottom() + layoutParams.bottomMargin) - i10);
        }
        if (rect.top >= scrollY || i12 >= i11) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i11 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.A.f(0);
    }

    public final boolean i(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return this.A.c(i10, i11, iArr, null, i12);
    }

    @Override // android.view.View, x0.s
    public final boolean isNestedScrollingEnabled() {
        return this.A.f18053d;
    }

    public final boolean j(KeyEvent keyEvent) {
        this.f1077c.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    return keyEvent.isAltPressed() ? l(33) : g(33);
                }
                if (keyCode == 20) {
                    return keyEvent.isAltPressed() ? l(130) : g(130);
                }
                if (keyCode == 62) {
                    r(keyEvent.isShiftPressed() ? 33 : 130);
                    return false;
                }
                if (keyCode == 92) {
                    return l(33);
                }
                if (keyCode == 93) {
                    return l(130);
                }
                if (keyCode == 122) {
                    r(33);
                    return false;
                }
                if (keyCode != 123) {
                    return false;
                }
                r(130);
                return false;
            }
        }
        if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
        return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
    }

    public final void k(int i10) {
        if (getChildCount() > 0) {
            this.f1078d.fling(getScrollX(), getScrollY(), 0, i10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            w(2, 1);
            this.f1094x = getScrollY();
            WeakHashMap weakHashMap = b1.f17953a;
            j0.k(this);
        }
    }

    public final boolean l(int i10) {
        int childCount;
        boolean z = i10 == 130;
        int height = getHeight();
        Rect rect = this.f1077c;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return s(i10, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i10, int i11) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(View view, int i10, int i11) {
        Rect rect = this.f1077c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i10 >= getScrollY() && rect.top - i10 <= getScrollY() + i11;
    }

    public final void o(int i10, int i11, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i10);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.A.d(0, scrollY2, 0, i10 - scrollY2, null, i11, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1083i = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        int width;
        if (motionEvent.getAction() == 8 && !this.f1085k) {
            if ((motionEvent.getSource() & 2) == 2) {
                axisValue = motionEvent.getAxisValue(9);
                width = (int) motionEvent.getX();
            } else if ((motionEvent.getSource() & 4194304) == 4194304) {
                axisValue = motionEvent.getAxisValue(26);
                width = getWidth() / 2;
            } else {
                axisValue = 0.0f;
                width = 0;
            }
            if (axisValue != 0.0f) {
                t(-((int) (axisValue * getVerticalScrollFactorCompat())), width, 1, (motionEvent.getSource() & 8194) == 8194);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ff  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int iFindPointerIndex;
        OverScroller overScroller = this.f1078d;
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 2 && this.f1085k) {
            return true;
        }
        int i10 = action & 255;
        if (i10 == 0) {
            int y6 = (int) motionEvent.getY();
            int x10 = (int) motionEvent.getX();
            if (getChildCount() > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y6 < childAt.getTop() - scrollY || y6 >= childAt.getBottom() - scrollY || x10 < childAt.getLeft() || x10 >= childAt.getRight()) {
                    if (!x(motionEvent) && overScroller.isFinished()) {
                        z = false;
                    }
                    this.f1085k = z;
                    VelocityTracker velocityTracker = this.l;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.l = null;
                    }
                } else {
                    this.f1081g = y6;
                    this.f1090s = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker2 = this.l;
                    if (velocityTracker2 == null) {
                        this.l = VelocityTracker.obtain();
                    } else {
                        velocityTracker2.clear();
                    }
                    this.l.addMovement(motionEvent);
                    overScroller.computeScrollOffset();
                    if (!x(motionEvent) && overScroller.isFinished()) {
                        z = false;
                    }
                    this.f1085k = z;
                    w(2, 0);
                }
            }
        } else if (i10 == 1) {
            this.f1085k = false;
            this.f1090s = -1;
            VelocityTracker velocityTracker3 = this.l;
            if (velocityTracker3 != null) {
                velocityTracker3.recycle();
                this.l = null;
            }
            if (this.f1078d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                WeakHashMap weakHashMap = b1.f17953a;
                j0.k(this);
            }
            y(0);
        } else if (i10 == 2) {
            int i11 = this.f1090s;
            if (i11 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i11)) != -1) {
                int y10 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y10 - this.f1081g) > this.f1088p && (getNestedScrollAxes() & 2) == 0) {
                    this.f1085k = true;
                    this.f1081g = y10;
                    if (this.l == null) {
                        this.l = VelocityTracker.obtain();
                    }
                    this.l.addMovement(motionEvent);
                    this.f1093w = 0;
                    ViewParent parent = getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
        } else if (i10 != 3) {
            if (i10 == 6) {
                p(motionEvent);
            }
        }
        return this.f1085k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int measuredHeight;
        super.onLayout(z, i10, i11, i12, i13);
        int i14 = 0;
        this.f1082h = false;
        View view = this.f1084j;
        if (view != null && m(view, this)) {
            View view2 = this.f1084j;
            Rect rect = this.f1077c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        this.f1084j = null;
        if (!this.f1083i) {
            if (this.f1095y != null) {
                scrollTo(getScrollX(), this.f1095y.f2519a);
                this.f1095y = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i14 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i14 != scrollY) {
                scrollTo(getScrollX(), i14);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1083i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1086m && View.MeasureSpec.getMode(i11) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedFling(View view, float f10, float f11, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f11, true);
        k((int) f11);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        return this.A.b(f10, f11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
        i(i10, i11, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        o(i13, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        e(view, view2, i10, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i10, int i11, boolean z, boolean z4) {
        super.scrollTo(i10, i11);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (i10 == 2) {
            i10 = 130;
        } else if (i10 == 1) {
            i10 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i10) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i10);
        if (viewFindNextFocus != null && n(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i10, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof l)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        l lVar = (l) parcelable;
        super.onRestoreInstanceState(lVar.getSuperState());
        this.f1095y = lVar;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        l lVar = new l(super.onSaveInstanceState());
        lVar.f2519a = getScrollY();
        return lVar;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i10, int i11, int i12, int i13) {
        super.onScrollChanged(i10, i11, i12, i13);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !n(viewFindFocus, 0, i13)) {
            return;
        }
        Rect rect = this.f1077c;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        int iH = h(rect);
        if (iH != 0) {
            if (this.f1087n) {
                v(0, iH, 250, false);
            } else {
                scrollBy(0, iH);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        return d(view, view2, i10, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onStopNestedScroll(View view) {
        a(0, view);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        OverScroller overScroller = this.f1078d;
        int i10 = this.f1088p;
        EdgeEffect edgeEffect = this.f1079e;
        EdgeEffect edgeEffect2 = this.f1080f;
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1093w = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f10 = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f1093w);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.l;
                velocityTracker.computeCurrentVelocity(1000, this.r);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1090s);
                if (Math.abs(yVelocity) >= this.f1089q) {
                    if (c.B(edgeEffect) != 0.0f) {
                        if (u(edgeEffect, yVelocity)) {
                            edgeEffect.onAbsorb(yVelocity);
                        } else {
                            k(-yVelocity);
                        }
                    } else if (c.B(edgeEffect2) != 0.0f) {
                        int i11 = -yVelocity;
                        if (u(edgeEffect2, i11)) {
                            edgeEffect2.onAbsorb(i11);
                        } else {
                            k(i11);
                        }
                    } else {
                        int i12 = -yVelocity;
                        float f11 = i12;
                        if (!this.A.b(0.0f, f11)) {
                            dispatchNestedFling(0.0f, f11, true);
                            k(i12);
                        }
                    }
                } else if (this.f1078d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap weakHashMap = b1.f17953a;
                    j0.k(this);
                }
                this.f1090s = -1;
                this.f1085k = false;
                VelocityTracker velocityTracker2 = this.l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.l = null;
                }
                y(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1090s);
                if (iFindPointerIndex != -1) {
                    int y6 = (int) motionEvent.getY(iFindPointerIndex);
                    int i13 = this.f1081g - y6;
                    float x10 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i13 / getHeight();
                    if (c.B(edgeEffect) != 0.0f) {
                        float f12 = -c.Q(edgeEffect, -height, x10);
                        if (c.B(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                        f10 = f12;
                    } else if (c.B(edgeEffect2) != 0.0f) {
                        float fQ = c.Q(edgeEffect2, height, 1.0f - x10);
                        if (c.B(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                        f10 = fQ;
                    }
                    int iRound = Math.round(f10 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    int i14 = i13 - iRound;
                    if (!this.f1085k && Math.abs(i14) > i10) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1085k = true;
                        i14 = i14 > 0 ? i14 - i10 : i14 + i10;
                    }
                    if (this.f1085k) {
                        int iT = t(i14, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                        this.f1081g = y6 - iT;
                        this.f1093w += iT;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1085k && getChildCount() > 0 && this.f1078d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    WeakHashMap weakHashMap2 = b1.f17953a;
                    j0.k(this);
                }
                this.f1090s = -1;
                this.f1085k = false;
                VelocityTracker velocityTracker3 = this.l;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.l = null;
                }
                y(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1081g = (int) motionEvent.getY(actionIndex);
                this.f1090s = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                p(motionEvent);
                this.f1081g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1090s));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1085k && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                y(1);
            }
            int y10 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f1081g = y10;
            this.f1090s = pointerId;
            w(2, 0);
        }
        VelocityTracker velocityTracker4 = this.l;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1090s) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f1081g = (int) motionEvent.getY(i10);
            this.f1090s = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i10, int i11, int i12, int i13) {
        boolean z;
        boolean z4;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i14 = i12 + i10;
        if (i11 <= 0 && i11 >= 0) {
            z = false;
        } else {
            i11 = 0;
            z = true;
        }
        if (i14 > i13) {
            z4 = true;
        } else if (i14 < 0) {
            z4 = true;
            i13 = 0;
        } else {
            i13 = i14;
            z4 = false;
        }
        if (z4 && !this.A.f(1)) {
            this.f1078d.springBack(i11, i13, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i11, i13);
        return z || z4;
    }

    public final void r(int i10) {
        boolean z = i10 == 130;
        int height = getHeight();
        Rect rect = this.f1077c;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i11 = rect.top;
        int i12 = height + i11;
        rect.bottom = i12;
        s(i10, i11, i12);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f1082h) {
            this.f1084j = view2;
        } else {
            Rect rect = this.f1077c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iH = h(rect);
            if (iH != 0) {
                scrollBy(0, iH);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iH = h(rect);
        boolean z4 = iH != 0;
        if (z4) {
            if (z) {
                scrollBy(0, iH);
            } else {
                v(0, iH, 250, false);
            }
        }
        return z4;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.l) != null) {
            velocityTracker.recycle();
            this.l = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f1082h = true;
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean s(int i10, int i11, int i12) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i13 = height + scrollY;
        boolean z4 = i10 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z10 = false;
        for (int i14 = 0; i14 < size; i14++) {
            View view2 = focusables.get(i14);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i11 < bottom && top < i12) {
                boolean z11 = i11 < top && bottom < i12;
                if (view == null) {
                    view = view2;
                    z10 = z11;
                } else {
                    boolean z12 = (z4 && top < view.getTop()) || (!z4 && bottom > view.getBottom());
                    if (z10) {
                        if (z11 && z12) {
                            view = view2;
                        }
                    } else if (z11) {
                        view = view2;
                        z10 = true;
                    } else if (z12) {
                    }
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i11 < scrollY || i12 > i13) {
            t(z4 ? i11 - scrollY : i12 - i13, 0, 1, true);
            z = true;
        } else {
            z = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i10);
        }
        return z;
    }

    @Override // android.view.View
    public final void scrollTo(int i10, int i11) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i10 < 0) {
                i10 = 0;
            } else if (width + i10 > width2) {
                i10 = width2 - width;
            }
            if (height >= height2 || i11 < 0) {
                i11 = 0;
            } else if (height + i11 > height2) {
                i11 = height2 - height;
            }
            if (i10 == getScrollX() && i11 == getScrollY()) {
                return;
            }
            super.scrollTo(i10, i11);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f1086m) {
            this.f1086m = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.A.g(z);
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f1087n = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i10) {
        return this.A.h(i10, 0);
    }

    @Override // android.view.View, x0.s
    public final void stopNestedScroll() {
        y(0);
    }

    public final int t(int i10, int i11, int i12, boolean z) {
        int i13;
        int i14;
        boolean z4;
        if (i12 == 1) {
            w(2, i12);
        }
        boolean zC = this.A.c(0, i10, this.f1092v, this.f1091t, i12);
        int[] iArr = this.f1092v;
        int[] iArr2 = this.f1091t;
        if (zC) {
            i13 = i10 - iArr[1];
            i14 = iArr2[1];
        } else {
            i13 = i10;
            i14 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z10 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z;
        boolean z11 = q(i13, 0, scrollY, scrollRange) && !this.A.f(i12);
        int scrollY2 = getScrollY() - scrollY;
        iArr[1] = 0;
        this.A.d(0, scrollY2, 0, i13 - scrollY2, this.f1091t, i12, iArr);
        int i15 = i14 + iArr2[1];
        int i16 = i13 - iArr[1];
        int i17 = scrollY + i16;
        EdgeEffect edgeEffect = this.f1080f;
        EdgeEffect edgeEffect2 = this.f1079e;
        if (i17 < 0) {
            if (z10) {
                c.Q(edgeEffect2, (-i16) / getHeight(), i11 / getWidth());
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i17 > scrollRange && z10) {
            c.Q(edgeEffect, i16 / getHeight(), 1.0f - (i11 / getWidth()));
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
        }
        if (edgeEffect2.isFinished() && edgeEffect.isFinished()) {
            z4 = z11;
        } else {
            WeakHashMap weakHashMap = b1.f17953a;
            j0.k(this);
            z4 = false;
        }
        if (z4 && i12 == 0) {
            this.l.clear();
        }
        if (i12 == 1) {
            y(i12);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i15;
    }

    public final boolean u(EdgeEffect edgeEffect, int i10) {
        if (i10 > 0) {
            return true;
        }
        float fB = c.B(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i10) * 0.35f;
        float f10 = this.f1075a * 0.015f;
        double dLog = Math.log(fAbs / f10);
        double d10 = C;
        Double.isNaN(d10);
        double d11 = f10;
        Double.isNaN(d10);
        double dExp = Math.exp((d10 / (d10 - 1.0d)) * dLog);
        Double.isNaN(d11);
        return ((float) (dExp * d11)) < fB;
    }

    public final void v(int i10, int i11, int i12, boolean z) {
        OverScroller overScroller = this.f1078d;
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1076b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1078d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(scrollY + i11, Math.max(0, height - height2))) - scrollY, i12);
            if (z) {
                w(2, 1);
            } else {
                y(1);
            }
            this.f1094x = getScrollY();
            WeakHashMap weakHashMap = b1.f17953a;
            j0.k(this);
        } else {
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                y(1);
            }
            scrollBy(i10, i11);
        }
        this.f1076b = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean w(int i10, int i11) {
        return this.A.h(2, i11);
    }

    public final boolean x(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.f1079e;
        if (c.B(edgeEffect) != 0.0f) {
            c.Q(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f1080f;
        if (c.B(edgeEffect2) == 0.0f) {
            return z;
        }
        c.Q(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void y(int i10) {
        this.A.i(i10);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10) {
        if (getChildCount() <= 0) {
            super.addView(view, i10);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i10, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public void setOnScrollChangeListener(k kVar) {
    }
}

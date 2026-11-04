package w;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class z1 extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17324a;

    /* renamed from: b, reason: collision with root package name */
    public int f17325b;

    /* renamed from: c, reason: collision with root package name */
    public int f17326c;

    /* renamed from: d, reason: collision with root package name */
    public int f17327d;

    /* renamed from: e, reason: collision with root package name */
    public int f17328e;

    /* renamed from: f, reason: collision with root package name */
    public int f17329f;

    /* renamed from: g, reason: collision with root package name */
    public float f17330g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17331h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f17332i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f17333j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f17334k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f17335m;

    /* renamed from: n, reason: collision with root package name */
    public int f17336n;

    /* renamed from: p, reason: collision with root package name */
    public int f17337p;

    public z1(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f17324a = true;
        this.f17325b = -1;
        this.f17326c = 0;
        this.f17328e = 8388659;
        int[] iArr = p.a.f12527n;
        s4.a aVarJ = s4.a.j(context, attributeSet, iArr, i10);
        x0.b1.w(this, context, iArr, attributeSet, (TypedArray) aVarJ.f14294c, i10);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        int i11 = typedArray.getInt(1, -1);
        if (i11 >= 0) {
            setOrientation(i11);
        }
        int i12 = typedArray.getInt(0, -1);
        if (i12 >= 0) {
            setGravity(i12);
        }
        boolean z = typedArray.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f17330g = typedArray.getFloat(4, -1.0f);
        this.f17325b = typedArray.getInt(3, -1);
        this.f17331h = typedArray.getBoolean(7, false);
        setDividerDrawable(aVarJ.e(5));
        this.f17336n = typedArray.getInt(8, 0);
        this.f17337p = typedArray.getDimensionPixelSize(6, 0);
        aVarJ.r();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof y1;
    }

    public final void f(Canvas canvas, int i10) {
        this.f17334k.setBounds(getPaddingLeft() + this.f17337p, i10, (getWidth() - getPaddingRight()) - this.f17337p, this.f17335m + i10);
        this.f17334k.draw(canvas);
    }

    public final void g(Canvas canvas, int i10) {
        this.f17334k.setBounds(i10, getPaddingTop() + this.f17337p, this.l + i10, (getHeight() - getPaddingBottom()) - this.f17337p);
        this.f17334k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i10;
        if (this.f17325b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i11 = this.f17325b;
        if (childCount <= i11) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i11);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f17325b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int iG = this.f17326c;
        if (this.f17327d == 1 && (i10 = this.f17328e & 112) != 48) {
            if (i10 == 16) {
                iG = ta.q.g(((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom(), this.f17329f, 2, iG);
            } else if (i10 == 80) {
                iG = ((getBottom() - getTop()) - getPaddingBottom()) - this.f17329f;
            }
        }
        return iG + ((LinearLayout.LayoutParams) ((y1) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f17325b;
    }

    public Drawable getDividerDrawable() {
        return this.f17334k;
    }

    public int getDividerPadding() {
        return this.f17337p;
    }

    public int getDividerWidth() {
        return this.l;
    }

    public int getGravity() {
        return this.f17328e;
    }

    public int getOrientation() {
        return this.f17327d;
    }

    public int getShowDividers() {
        return this.f17336n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f17330g;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public y1 generateDefaultLayoutParams() {
        int i10 = this.f17327d;
        if (i10 == 0) {
            return new y1(-2);
        }
        if (i10 == 1) {
            return new y1(-1);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public y1 generateLayoutParams(AttributeSet attributeSet) {
        return new y1(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public y1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new y1(layoutParams);
    }

    public final boolean k(int i10) {
        if (i10 == 0) {
            return (this.f17336n & 1) != 0;
        }
        if (i10 == getChildCount()) {
            return (this.f17336n & 4) != 0;
        }
        if ((this.f17336n & 2) == 0) {
            return false;
        }
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i10;
        if (this.f17334k == null) {
            return;
        }
        int i11 = 0;
        if (this.f17327d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i11 < virtualChildCount) {
                View childAt = getChildAt(i11);
                if (childAt != null && childAt.getVisibility() != 8 && k(i11)) {
                    f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((y1) childAt.getLayoutParams())).topMargin) - this.f17335m);
                }
                i11++;
            }
            if (k(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                f(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f17335m : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((y1) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zA = u3.a(this);
        while (i11 < virtualChildCount2) {
            View childAt3 = getChildAt(i11);
            if (childAt3 != null && childAt3.getVisibility() != 8 && k(i11)) {
                y1 y1Var = (y1) childAt3.getLayoutParams();
                g(canvas, zA ? childAt3.getRight() + ((LinearLayout.LayoutParams) y1Var).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) y1Var).leftMargin) - this.l);
            }
            i11++;
        }
        if (k(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                y1 y1Var2 = (y1) childAt4.getLayoutParams();
                if (zA) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) y1Var2).leftMargin;
                    i10 = this.l;
                    right = left - i10;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) y1Var2).rightMargin;
                }
            } else if (zA) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i10 = this.l;
                right = left - i10;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a7  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z4;
        int i20;
        int i21;
        int i22;
        int iG;
        int i23 = 8;
        if (this.f17327d == 1) {
            int paddingLeft = getPaddingLeft();
            int i24 = i12 - i10;
            int paddingRight = i24 - getPaddingRight();
            int paddingRight2 = (i24 - paddingLeft) - getPaddingRight();
            int virtualChildCount = getVirtualChildCount();
            int i25 = this.f17328e;
            int i26 = i25 & 112;
            int i27 = 8388615 & i25;
            int paddingTop = i26 != 16 ? i26 != 80 ? getPaddingTop() : ((getPaddingTop() + i13) - i11) - this.f17329f : ta.q.g(i13 - i11, this.f17329f, 2, getPaddingTop());
            int i28 = 0;
            while (i28 < virtualChildCount) {
                View childAt = getChildAt(i28);
                if (childAt != null && childAt.getVisibility() != i23) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    y1 y1Var = (y1) childAt.getLayoutParams();
                    int i29 = ((LinearLayout.LayoutParams) y1Var).gravity;
                    if (i29 < 0) {
                        i29 = i27;
                    }
                    WeakHashMap weakHashMap = x0.b1.f17953a;
                    int absoluteGravity = Gravity.getAbsoluteGravity(i29, x0.k0.d(this)) & 7;
                    int iG2 = absoluteGravity != 1 ? absoluteGravity != 5 ? ((LinearLayout.LayoutParams) y1Var).leftMargin + paddingLeft : (paddingRight - measuredWidth) - ((LinearLayout.LayoutParams) y1Var).rightMargin : (ta.q.g(paddingRight2, measuredWidth, 2, paddingLeft) + ((LinearLayout.LayoutParams) y1Var).leftMargin) - ((LinearLayout.LayoutParams) y1Var).rightMargin;
                    if (k(i28)) {
                        paddingTop += this.f17335m;
                    }
                    int i30 = paddingTop + ((LinearLayout.LayoutParams) y1Var).topMargin;
                    childAt.layout(iG2, i30, measuredWidth + iG2, i30 + measuredHeight);
                    paddingTop = measuredHeight + ((LinearLayout.LayoutParams) y1Var).bottomMargin + i30;
                }
                i28++;
                i23 = 8;
            }
            return;
        }
        boolean zA = u3.a(this);
        int paddingTop2 = getPaddingTop();
        int i31 = i13 - i11;
        int paddingBottom = i31 - getPaddingBottom();
        int paddingBottom2 = (i31 - paddingTop2) - getPaddingBottom();
        int virtualChildCount2 = getVirtualChildCount();
        int i32 = this.f17328e;
        int i33 = 8388615 & i32;
        int i34 = i32 & 112;
        boolean z10 = this.f17324a;
        int[] iArr = this.f17332i;
        int[] iArr2 = this.f17333j;
        WeakHashMap weakHashMap2 = x0.b1.f17953a;
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i33, x0.k0.d(this));
        int paddingLeft2 = absoluteGravity2 != 1 ? absoluteGravity2 != 5 ? getPaddingLeft() : ((getPaddingLeft() + i12) - i10) - this.f17329f : ta.q.g(i12 - i10, this.f17329f, 2, getPaddingLeft());
        if (zA) {
            i14 = virtualChildCount2 - 1;
            i15 = -1;
        } else {
            i14 = 0;
            i15 = 1;
        }
        int i35 = 0;
        while (i35 < virtualChildCount2) {
            int i36 = (i15 * i35) + i14;
            View childAt2 = getChildAt(i36);
            if (childAt2 == null) {
                i16 = i14;
                i17 = i15;
                i18 = virtualChildCount2;
                i19 = i34;
                z4 = z10;
                i20 = 1;
            } else {
                i16 = i14;
                if (childAt2.getVisibility() != 8) {
                    int measuredWidth2 = childAt2.getMeasuredWidth();
                    int measuredHeight2 = childAt2.getMeasuredHeight();
                    i17 = i15;
                    y1 y1Var2 = (y1) childAt2.getLayoutParams();
                    i18 = virtualChildCount2;
                    if (z10) {
                        i19 = i34;
                        int baseline = ((LinearLayout.LayoutParams) y1Var2).height != -1 ? childAt2.getBaseline() : -1;
                        i21 = ((LinearLayout.LayoutParams) y1Var2).gravity;
                        if (i21 < 0) {
                            i21 = i19;
                        }
                        i22 = i21 & 112;
                        z4 = z10;
                        if (i22 != 16) {
                            iG = (ta.q.g(paddingBottom2, measuredHeight2, 2, paddingTop2) + ((LinearLayout.LayoutParams) y1Var2).topMargin) - ((LinearLayout.LayoutParams) y1Var2).bottomMargin;
                        } else if (i22 == 48) {
                            iG = ((LinearLayout.LayoutParams) y1Var2).topMargin + paddingTop2;
                            if (baseline != -1) {
                                iG = (iArr[1] - baseline) + iG;
                            }
                        } else if (i22 != 80) {
                            iG = paddingTop2;
                        } else {
                            iG = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) y1Var2).bottomMargin;
                            if (baseline != -1) {
                                iG -= iArr2[2] - (childAt2.getMeasuredHeight() - baseline);
                            }
                        }
                        if (k(i36)) {
                            paddingLeft2 += this.l;
                        }
                        int i37 = paddingLeft2 + ((LinearLayout.LayoutParams) y1Var2).leftMargin;
                        childAt2.layout(i37, iG, i37 + measuredWidth2, measuredHeight2 + iG);
                        paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) y1Var2).rightMargin + i37;
                    } else {
                        i19 = i34;
                    }
                    i21 = ((LinearLayout.LayoutParams) y1Var2).gravity;
                    if (i21 < 0) {
                    }
                    i22 = i21 & 112;
                    z4 = z10;
                    if (i22 != 16) {
                    }
                    if (k(i36)) {
                    }
                    int i372 = paddingLeft2 + ((LinearLayout.LayoutParams) y1Var2).leftMargin;
                    childAt2.layout(i372, iG, i372 + measuredWidth2, measuredHeight2 + iG);
                    paddingLeft2 = measuredWidth2 + ((LinearLayout.LayoutParams) y1Var2).rightMargin + i372;
                } else {
                    i17 = i15;
                    i18 = virtualChildCount2;
                    i19 = i34;
                    z4 = z10;
                }
                i20 = 1;
            }
            i35 += i20;
            i14 = i16;
            i15 = i17;
            virtualChildCount2 = i18;
            i34 = i19;
            z10 = z4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0800  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0837  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:442:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i10, int i11) {
        char c7;
        int i12;
        int iMax;
        float f10;
        int i13;
        int i14;
        int i15;
        int i16;
        char c10;
        int i17;
        int i18;
        int i19;
        int i20;
        float f11;
        int i21;
        int i22;
        int baseline;
        int i23;
        int i24;
        float f12;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z;
        boolean z4;
        y1 y1Var;
        boolean z10;
        int i30;
        boolean z11;
        int i31;
        int i32;
        int baseline2;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        y1 y1Var2;
        boolean z12;
        int i42;
        boolean z13;
        int iMax2;
        int i43 = -2;
        int i44 = 1073741824;
        int i45 = 8;
        int i46 = Integer.MIN_VALUE;
        float f13 = 0.0f;
        if (this.f17327d == 1) {
            this.f17329f = 0;
            int virtualChildCount = getVirtualChildCount();
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int i47 = this.f17325b;
            boolean z14 = this.f17331h;
            int i48 = 0;
            float f14 = 0.0f;
            int iMax3 = 0;
            int iMax4 = 0;
            boolean z15 = false;
            int iMax5 = 0;
            int i49 = 0;
            int i50 = 0;
            boolean z16 = true;
            boolean z17 = false;
            while (i48 < virtualChildCount) {
                View childAt = getChildAt(i48);
                if (childAt == null) {
                    this.f17329f = this.f17329f;
                } else {
                    if (childAt.getVisibility() != i45) {
                        if (k(i48)) {
                            this.f17329f += this.f17335m;
                        }
                        y1 y1Var3 = (y1) childAt.getLayoutParams();
                        float f15 = ((LinearLayout.LayoutParams) y1Var3).weight;
                        f14 += f15;
                        if (mode2 == i44 && ((LinearLayout.LayoutParams) y1Var3).height == 0 && f15 > f13) {
                            int i51 = this.f17329f;
                            this.f17329f = Math.max(i51, ((LinearLayout.LayoutParams) y1Var3).topMargin + i51 + ((LinearLayout.LayoutParams) y1Var3).bottomMargin);
                            i38 = i47;
                            i39 = mode2;
                            i40 = mode;
                            i41 = virtualChildCount;
                            y1Var2 = y1Var3;
                            z12 = true;
                        } else {
                            if (((LinearLayout.LayoutParams) y1Var3).height != 0 || f15 <= f13) {
                                i37 = Integer.MIN_VALUE;
                            } else {
                                ((LinearLayout.LayoutParams) y1Var3).height = i43;
                                i37 = 0;
                            }
                            int i52 = f14 == f13 ? this.f17329f : 0;
                            i38 = i47;
                            i39 = mode2;
                            i40 = mode;
                            i41 = virtualChildCount;
                            y1Var2 = y1Var3;
                            measureChildWithMargins(childAt, i10, 0, i11, i52);
                            if (i37 != i46) {
                                ((LinearLayout.LayoutParams) y1Var2).height = i37;
                            }
                            int measuredHeight = childAt.getMeasuredHeight();
                            int i53 = this.f17329f;
                            this.f17329f = Math.max(i53, i53 + measuredHeight + ((LinearLayout.LayoutParams) y1Var2).topMargin + ((LinearLayout.LayoutParams) y1Var2).bottomMargin);
                            int i54 = iMax5;
                            if (z14) {
                                iMax5 = Math.max(measuredHeight, i54);
                            }
                            z12 = z15;
                        }
                        if (i38 >= 0 && i38 == i48 + 1) {
                            this.f17326c = this.f17329f;
                        }
                        if (i48 < i38 && ((LinearLayout.LayoutParams) y1Var2).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        i42 = i40;
                        if (i42 == 1073741824 || ((LinearLayout.LayoutParams) y1Var2).width != -1) {
                            z13 = false;
                        } else {
                            z13 = true;
                            z17 = true;
                        }
                        int i55 = ((LinearLayout.LayoutParams) y1Var2).leftMargin + ((LinearLayout.LayoutParams) y1Var2).rightMargin;
                        int measuredWidth = childAt.getMeasuredWidth() + i55;
                        iMax2 = Math.max(i49, measuredWidth);
                        int iCombineMeasuredStates = View.combineMeasuredStates(i50, childAt.getMeasuredState());
                        boolean z18 = z16 && ((LinearLayout.LayoutParams) y1Var2).width == -1;
                        if (((LinearLayout.LayoutParams) y1Var2).weight > 0.0f) {
                            if (!z13) {
                                i55 = measuredWidth;
                            }
                            iMax4 = Math.max(iMax4, i55);
                        } else {
                            int i56 = iMax4;
                            if (!z13) {
                                i55 = measuredWidth;
                            }
                            iMax3 = Math.max(iMax3, i55);
                            iMax4 = i56;
                        }
                        z15 = z12;
                        i50 = iCombineMeasuredStates;
                        z16 = z18;
                    }
                    i48++;
                    mode = i42;
                    i49 = iMax2;
                    i47 = i38;
                    mode2 = i39;
                    virtualChildCount = i41;
                    i43 = -2;
                    i44 = 1073741824;
                    i45 = 8;
                    i46 = Integer.MIN_VALUE;
                    f13 = 0.0f;
                }
                i38 = i47;
                i39 = mode2;
                i42 = mode;
                i41 = virtualChildCount;
                iMax2 = i49;
                i48++;
                mode = i42;
                i49 = iMax2;
                i47 = i38;
                mode2 = i39;
                virtualChildCount = i41;
                i43 = -2;
                i44 = 1073741824;
                i45 = 8;
                i46 = Integer.MIN_VALUE;
                f13 = 0.0f;
            }
            int i57 = mode2;
            int i58 = mode;
            int i59 = virtualChildCount;
            int iMax6 = iMax3;
            int i60 = iMax4;
            int i61 = iMax5;
            int i62 = i49;
            int iCombineMeasuredStates2 = i50;
            if (this.f17329f > 0 && k(i59)) {
                this.f17329f += this.f17335m;
            }
            int i63 = i57;
            if (z14 && (i63 == Integer.MIN_VALUE || i63 == 0)) {
                this.f17329f = 0;
                for (int i64 = 0; i64 < i59; i64++) {
                    View childAt2 = getChildAt(i64);
                    if (childAt2 == null) {
                        this.f17329f = this.f17329f;
                    } else if (childAt2.getVisibility() != 8) {
                        y1 y1Var4 = (y1) childAt2.getLayoutParams();
                        int i65 = this.f17329f;
                        this.f17329f = Math.max(i65, i65 + i61 + ((LinearLayout.LayoutParams) y1Var4).topMargin + ((LinearLayout.LayoutParams) y1Var4).bottomMargin);
                    }
                }
            }
            int paddingBottom = getPaddingBottom() + getPaddingTop() + this.f17329f;
            this.f17329f = paddingBottom;
            int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, 0);
            int i66 = (16777215 & iResolveSizeAndState) - this.f17329f;
            if (z15 || (i66 != 0 && f14 > 0.0f)) {
                float f16 = this.f17330g;
                if (f16 > 0.0f) {
                    f14 = f16;
                }
                this.f17329f = 0;
                int i67 = 0;
                while (i67 < i59) {
                    View childAt3 = getChildAt(i67);
                    if (childAt3.getVisibility() == 8) {
                        i34 = i63;
                    } else {
                        y1 y1Var5 = (y1) childAt3.getLayoutParams();
                        float f17 = ((LinearLayout.LayoutParams) y1Var5).weight;
                        if (f17 > 0.0f) {
                            int i68 = (int) ((i66 * f17) / f14);
                            f14 -= f17;
                            int i69 = i66 - i68;
                            int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) y1Var5).leftMargin + ((LinearLayout.LayoutParams) y1Var5).rightMargin, ((LinearLayout.LayoutParams) y1Var5).width);
                            if (((LinearLayout.LayoutParams) y1Var5).height == 0) {
                                i36 = 1073741824;
                                if (i63 == 1073741824) {
                                    if (i68 <= 0) {
                                        i68 = 0;
                                    }
                                    childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i68, 1073741824));
                                }
                                iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                                i66 = i69;
                            } else {
                                i36 = 1073741824;
                            }
                            int measuredHeight2 = childAt3.getMeasuredHeight() + i68;
                            if (measuredHeight2 < 0) {
                                measuredHeight2 = 0;
                            }
                            childAt3.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i36));
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, childAt3.getMeasuredState() & (-256));
                            i66 = i69;
                        }
                        int i70 = ((LinearLayout.LayoutParams) y1Var5).leftMargin + ((LinearLayout.LayoutParams) y1Var5).rightMargin;
                        int measuredWidth2 = childAt3.getMeasuredWidth() + i70;
                        int iMax7 = Math.max(i62, measuredWidth2);
                        if (i58 != 1073741824) {
                            i34 = i63;
                            i35 = -1;
                            if (((LinearLayout.LayoutParams) y1Var5).width != -1) {
                            }
                            iMax6 = Math.max(iMax6, i70);
                            boolean z19 = !z16 && ((LinearLayout.LayoutParams) y1Var5).width == i35;
                            int i71 = this.f17329f;
                            this.f17329f = Math.max(i71, childAt3.getMeasuredHeight() + i71 + ((LinearLayout.LayoutParams) y1Var5).topMargin + ((LinearLayout.LayoutParams) y1Var5).bottomMargin);
                            z16 = z19;
                            i62 = iMax7;
                        } else {
                            i34 = i63;
                            i35 = -1;
                        }
                        i70 = measuredWidth2;
                        iMax6 = Math.max(iMax6, i70);
                        if (z16) {
                            int i712 = this.f17329f;
                            this.f17329f = Math.max(i712, childAt3.getMeasuredHeight() + i712 + ((LinearLayout.LayoutParams) y1Var5).topMargin + ((LinearLayout.LayoutParams) y1Var5).bottomMargin);
                            z16 = z19;
                            i62 = iMax7;
                        }
                    }
                    i67++;
                    i63 = i34;
                }
                this.f17329f = getPaddingBottom() + getPaddingTop() + this.f17329f;
            } else {
                iMax6 = Math.max(iMax6, i60);
                if (z14 && i63 != 1073741824) {
                    for (int i72 = 0; i72 < i59; i72++) {
                        View childAt4 = getChildAt(i72);
                        if (childAt4 != null && childAt4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((y1) childAt4.getLayoutParams())).weight > 0.0f) {
                            childAt4.measure(View.MeasureSpec.makeMeasureSpec(childAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i61, 1073741824));
                        }
                    }
                }
            }
            int i73 = i62;
            if (z16 || i58 == 1073741824) {
                iMax6 = i73;
            }
            setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax6, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), iResolveSizeAndState);
            if (z17) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
                for (int i74 = 0; i74 < i59; i74++) {
                    View childAt5 = getChildAt(i74);
                    if (childAt5.getVisibility() != 8) {
                        y1 y1Var6 = (y1) childAt5.getLayoutParams();
                        if (((LinearLayout.LayoutParams) y1Var6).width == -1) {
                            int i75 = ((LinearLayout.LayoutParams) y1Var6).height;
                            ((LinearLayout.LayoutParams) y1Var6).height = childAt5.getMeasuredHeight();
                            measureChildWithMargins(childAt5, iMakeMeasureSpec, 0, i11, 0);
                            ((LinearLayout.LayoutParams) y1Var6).height = i75;
                        }
                    }
                }
                return;
            }
            return;
        }
        this.f17329f = 0;
        int virtualChildCount2 = getVirtualChildCount();
        int mode3 = View.MeasureSpec.getMode(i10);
        int mode4 = View.MeasureSpec.getMode(i11);
        if (this.f17332i == null || this.f17333j == null) {
            this.f17332i = new int[4];
            this.f17333j = new int[4];
        }
        int[] iArr = this.f17332i;
        int[] iArr2 = this.f17333j;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        boolean z20 = this.f17324a;
        boolean z21 = this.f17331h;
        boolean z22 = mode3 == 1073741824;
        int iMax8 = 0;
        float f18 = 0.0f;
        int i76 = 0;
        int i77 = 0;
        int i78 = 0;
        int iMax9 = 0;
        int iMax10 = 0;
        boolean z23 = true;
        boolean z24 = false;
        boolean z25 = false;
        while (i77 < virtualChildCount2) {
            View childAt6 = getChildAt(i77);
            if (childAt6 == null) {
                this.f17329f = this.f17329f;
                i29 = i77;
                z = z21;
                z4 = z20;
            } else {
                int i79 = iMax8;
                int i80 = i76;
                if (childAt6.getVisibility() == 8) {
                    z4 = z20;
                    iMax8 = i79;
                    i76 = i80;
                    i29 = i77;
                    z = z21;
                } else {
                    if (k(i77)) {
                        this.f17329f += this.l;
                    }
                    y1 y1Var7 = (y1) childAt6.getLayoutParams();
                    float f19 = ((LinearLayout.LayoutParams) y1Var7).weight;
                    float f20 = f18 + f19;
                    if (mode3 == 1073741824 && ((LinearLayout.LayoutParams) y1Var7).width == 0 && f19 > 0.0f) {
                        if (z22) {
                            i33 = i77;
                            this.f17329f = ((LinearLayout.LayoutParams) y1Var7).leftMargin + ((LinearLayout.LayoutParams) y1Var7).rightMargin + this.f17329f;
                        } else {
                            i33 = i77;
                            int i81 = this.f17329f;
                            this.f17329f = Math.max(i81, ((LinearLayout.LayoutParams) y1Var7).leftMargin + i81 + ((LinearLayout.LayoutParams) y1Var7).rightMargin);
                        }
                        if (z20) {
                            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                            childAt6.measure(iMakeMeasureSpec2, iMakeMeasureSpec2);
                            y1Var = y1Var7;
                            i26 = i79;
                            i27 = i80;
                            i29 = i33;
                            z = z21;
                            z4 = z20;
                        } else {
                            y1Var = y1Var7;
                            i26 = i79;
                            i27 = i80;
                            i29 = i33;
                            i30 = 1073741824;
                            z = z21;
                            z4 = z20;
                            z10 = true;
                            if (mode4 == i30 && ((LinearLayout.LayoutParams) y1Var).height == -1) {
                                z11 = true;
                                z25 = true;
                            } else {
                                z11 = false;
                            }
                            i31 = ((LinearLayout.LayoutParams) y1Var).topMargin + ((LinearLayout.LayoutParams) y1Var).bottomMargin;
                            int measuredHeight3 = childAt6.getMeasuredHeight() + i31;
                            int iCombineMeasuredStates3 = View.combineMeasuredStates(i78, childAt6.getMeasuredState());
                            if (z4 || (baseline2 = childAt6.getBaseline()) == -1) {
                                i32 = i31;
                            } else {
                                int i82 = ((LinearLayout.LayoutParams) y1Var).gravity;
                                if (i82 < 0) {
                                    i82 = this.f17328e;
                                }
                                int i83 = (((i82 & 112) >> 4) & (-2)) >> 1;
                                i32 = i31;
                                iArr[i83] = Math.max(iArr[i83], baseline2);
                                iArr2[i83] = Math.max(iArr2[i83], measuredHeight3 - baseline2);
                            }
                            int iMax11 = Math.max(i27, measuredHeight3);
                            boolean z26 = !z23 && ((LinearLayout.LayoutParams) y1Var).height == -1;
                            if (((LinearLayout.LayoutParams) y1Var).weight <= 0.0f) {
                                if (z11) {
                                    measuredHeight3 = i32;
                                }
                                iMax10 = Math.max(iMax10, measuredHeight3);
                                iMax8 = i26;
                            } else {
                                if (z11) {
                                    measuredHeight3 = i32;
                                }
                                iMax8 = Math.max(i26, measuredHeight3);
                            }
                            i76 = iMax11;
                            i78 = iCombineMeasuredStates3;
                            z24 = z10;
                            z23 = z26;
                            f18 = f20;
                        }
                    } else {
                        int i84 = i77;
                        if (((LinearLayout.LayoutParams) y1Var7).width == 0) {
                            f12 = 0.0f;
                            if (f19 > 0.0f) {
                                ((LinearLayout.LayoutParams) y1Var7).width = -2;
                                i25 = 0;
                            }
                            i26 = i79;
                            i27 = i80;
                            i28 = i25;
                            i29 = i84;
                            z = z21;
                            z4 = z20;
                            measureChildWithMargins(childAt6, i10, f20 != f12 ? this.f17329f : 0, i11, 0);
                            if (i28 == Integer.MIN_VALUE) {
                                y1Var = y1Var7;
                                ((LinearLayout.LayoutParams) y1Var).width = i28;
                            } else {
                                y1Var = y1Var7;
                            }
                            int measuredWidth3 = childAt6.getMeasuredWidth();
                            if (z22) {
                                int i85 = this.f17329f;
                                this.f17329f = Math.max(i85, i85 + measuredWidth3 + ((LinearLayout.LayoutParams) y1Var).leftMargin + ((LinearLayout.LayoutParams) y1Var).rightMargin);
                            } else {
                                this.f17329f = ((LinearLayout.LayoutParams) y1Var).leftMargin + measuredWidth3 + ((LinearLayout.LayoutParams) y1Var).rightMargin + this.f17329f;
                            }
                            if (z) {
                                iMax9 = Math.max(measuredWidth3, iMax9);
                            }
                        } else {
                            f12 = 0.0f;
                        }
                        i25 = Integer.MIN_VALUE;
                        i26 = i79;
                        i27 = i80;
                        i28 = i25;
                        i29 = i84;
                        z = z21;
                        z4 = z20;
                        measureChildWithMargins(childAt6, i10, f20 != f12 ? this.f17329f : 0, i11, 0);
                        if (i28 == Integer.MIN_VALUE) {
                        }
                        int measuredWidth32 = childAt6.getMeasuredWidth();
                        if (z22) {
                        }
                        if (z) {
                        }
                    }
                    z10 = z24;
                    i30 = 1073741824;
                    if (mode4 == i30) {
                        z11 = false;
                        i31 = ((LinearLayout.LayoutParams) y1Var).topMargin + ((LinearLayout.LayoutParams) y1Var).bottomMargin;
                        int measuredHeight32 = childAt6.getMeasuredHeight() + i31;
                        int iCombineMeasuredStates32 = View.combineMeasuredStates(i78, childAt6.getMeasuredState());
                        if (z4) {
                            i32 = i31;
                            int iMax112 = Math.max(i27, measuredHeight32);
                            if (z23) {
                                if (((LinearLayout.LayoutParams) y1Var).weight <= 0.0f) {
                                }
                                i76 = iMax112;
                                i78 = iCombineMeasuredStates32;
                                z24 = z10;
                                z23 = z26;
                                f18 = f20;
                            }
                        }
                    }
                }
            }
            i77 = i29 + 1;
            z21 = z;
            z20 = z4;
        }
        int i86 = i76;
        boolean z27 = z21;
        boolean z28 = z20;
        if (this.f17329f > 0 && k(virtualChildCount2)) {
            this.f17329f += this.l;
        }
        int i87 = iArr[1];
        if (i87 == -1 && iArr[0] == -1 && iArr[2] == -1) {
            c7 = 3;
            if (iArr[3] == -1) {
                iMax = i86;
                i12 = i78;
            }
            if (z27 && (mode3 == Integer.MIN_VALUE || mode3 == 0)) {
                this.f17329f = 0;
                for (i24 = 0; i24 < virtualChildCount2; i24++) {
                    View childAt7 = getChildAt(i24);
                    if (childAt7 == null) {
                        this.f17329f = this.f17329f;
                    } else if (childAt7.getVisibility() != 8) {
                        y1 y1Var8 = (y1) childAt7.getLayoutParams();
                        if (z22) {
                            this.f17329f = ((LinearLayout.LayoutParams) y1Var8).leftMargin + iMax9 + ((LinearLayout.LayoutParams) y1Var8).rightMargin + this.f17329f;
                        } else {
                            int i88 = this.f17329f;
                            this.f17329f = Math.max(i88, i88 + iMax9 + ((LinearLayout.LayoutParams) y1Var8).leftMargin + ((LinearLayout.LayoutParams) y1Var8).rightMargin);
                        }
                    }
                }
            }
            int paddingRight = getPaddingRight() + getPaddingLeft() + this.f17329f;
            this.f17329f = paddingRight;
            int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i10, 0);
            int i89 = (16777215 & iResolveSizeAndState2) - this.f17329f;
            if (!z24 || (i89 != 0 && f18 > 0.0f)) {
                f10 = this.f17330g;
                if (f10 > 0.0f) {
                    f18 = f10;
                }
                iArr[3] = -1;
                iArr[2] = -1;
                iArr[1] = -1;
                iArr[0] = -1;
                iArr2[3] = -1;
                iArr2[2] = -1;
                iArr2[1] = -1;
                iArr2[0] = -1;
                this.f17329f = 0;
                int iCombineMeasuredStates4 = i12;
                iMax = -1;
                i13 = 0;
                while (i13 < virtualChildCount2) {
                    View childAt8 = getChildAt(i13);
                    if (childAt8 == null || childAt8.getVisibility() == 8) {
                        i18 = i89;
                        i19 = virtualChildCount2;
                    } else {
                        y1 y1Var9 = (y1) childAt8.getLayoutParams();
                        float f21 = ((LinearLayout.LayoutParams) y1Var9).weight;
                        if (f21 > 0.0f) {
                            i19 = virtualChildCount2;
                            int i90 = (int) ((i89 * f21) / f18);
                            float f22 = f18 - f21;
                            int i91 = i89 - i90;
                            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) y1Var9).topMargin + ((LinearLayout.LayoutParams) y1Var9).bottomMargin, ((LinearLayout.LayoutParams) y1Var9).height);
                            if (((LinearLayout.LayoutParams) y1Var9).width == 0) {
                                i23 = 1073741824;
                                if (mode3 == 1073741824) {
                                    if (i90 <= 0) {
                                        i90 = 0;
                                    }
                                    childAt8.measure(View.MeasureSpec.makeMeasureSpec(i90, 1073741824), childMeasureSpec2);
                                }
                                iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates4, childAt8.getMeasuredState() & (-16777216));
                                f18 = f22;
                                i20 = i91;
                            } else {
                                i23 = 1073741824;
                            }
                            int measuredWidth4 = childAt8.getMeasuredWidth() + i90;
                            if (measuredWidth4 < 0) {
                                measuredWidth4 = 0;
                            }
                            childAt8.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth4, i23), childMeasureSpec2);
                            iCombineMeasuredStates4 = View.combineMeasuredStates(iCombineMeasuredStates4, childAt8.getMeasuredState() & (-16777216));
                            f18 = f22;
                            i20 = i91;
                        } else {
                            i20 = i89;
                            i19 = virtualChildCount2;
                        }
                        if (z22) {
                            f11 = f18;
                            this.f17329f = childAt8.getMeasuredWidth() + ((LinearLayout.LayoutParams) y1Var9).leftMargin + ((LinearLayout.LayoutParams) y1Var9).rightMargin + this.f17329f;
                            i21 = i20;
                        } else {
                            f11 = f18;
                            int i92 = this.f17329f;
                            i21 = i20;
                            this.f17329f = Math.max(i92, childAt8.getMeasuredWidth() + i92 + ((LinearLayout.LayoutParams) y1Var9).leftMargin + ((LinearLayout.LayoutParams) y1Var9).rightMargin);
                        }
                        boolean z29 = mode4 != 1073741824 && ((LinearLayout.LayoutParams) y1Var9).height == -1;
                        int i93 = ((LinearLayout.LayoutParams) y1Var9).topMargin + ((LinearLayout.LayoutParams) y1Var9).bottomMargin;
                        int measuredHeight4 = childAt8.getMeasuredHeight() + i93;
                        iMax = Math.max(iMax, measuredHeight4);
                        if (!z29) {
                            i93 = measuredHeight4;
                        }
                        iMax8 = Math.max(iMax8, i93);
                        if (z23) {
                            i22 = -1;
                            boolean z30 = ((LinearLayout.LayoutParams) y1Var9).height == -1;
                            if (!z28 && (baseline = childAt8.getBaseline()) != i22) {
                                int i94 = ((LinearLayout.LayoutParams) y1Var9).gravity;
                                if (i94 < 0) {
                                    i94 = this.f17328e;
                                }
                                int i95 = (((i94 & 112) >> 4) & (-2)) >> 1;
                                iArr[i95] = Math.max(iArr[i95], baseline);
                                iArr2[i95] = Math.max(iArr2[i95], measuredHeight4 - baseline);
                            }
                            z23 = z30;
                            i18 = i21;
                            f18 = f11;
                        } else {
                            i22 = -1;
                        }
                        if (!z28) {
                            z23 = z30;
                            i18 = i21;
                            f18 = f11;
                        }
                    }
                    i13++;
                    i89 = i18;
                    virtualChildCount2 = i19;
                }
                i14 = i11;
                i15 = virtualChildCount2;
                this.f17329f = getPaddingRight() + getPaddingLeft() + this.f17329f;
                i16 = iArr[1];
                if (i16 != -1 && iArr[0] == -1 && iArr[2] == -1) {
                    c10 = 3;
                    if (iArr[3] == -1) {
                        i17 = 0;
                    }
                    i12 = iCombineMeasuredStates4;
                } else {
                    c10 = 3;
                }
                i17 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c10], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c10], Math.max(iArr[0], Math.max(i16, iArr[2]))));
                i12 = iCombineMeasuredStates4;
            } else {
                iMax8 = Math.max(iMax8, iMax10);
                if (z27 && mode3 != 1073741824) {
                    for (int i96 = 0; i96 < virtualChildCount2; i96++) {
                        View childAt9 = getChildAt(i96);
                        if (childAt9 != null && childAt9.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((y1) childAt9.getLayoutParams())).weight > 0.0f) {
                            childAt9.measure(View.MeasureSpec.makeMeasureSpec(iMax9, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt9.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i14 = i11;
                i15 = virtualChildCount2;
                i17 = 0;
            }
            if (!z23 || mode4 == 1073741824) {
                iMax8 = iMax;
            }
            setMeasuredDimension((i12 & (-16777216)) | iResolveSizeAndState2, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i14, i12 << 16));
            if (z25) {
                return;
            }
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
            int i97 = i15;
            while (i17 < i97) {
                View childAt10 = getChildAt(i17);
                if (childAt10.getVisibility() != 8) {
                    y1 y1Var10 = (y1) childAt10.getLayoutParams();
                    if (((LinearLayout.LayoutParams) y1Var10).height == -1) {
                        int i98 = ((LinearLayout.LayoutParams) y1Var10).width;
                        ((LinearLayout.LayoutParams) y1Var10).width = childAt10.getMeasuredWidth();
                        measureChildWithMargins(childAt10, i10, 0, iMakeMeasureSpec3, 0);
                        ((LinearLayout.LayoutParams) y1Var10).width = i98;
                    }
                }
                i17++;
            }
            return;
        }
        c7 = 3;
        i12 = i78;
        iMax = Math.max(i86, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c7], Math.max(iArr[0], Math.max(i87, iArr[2]))));
        if (z27) {
            this.f17329f = 0;
            while (i24 < virtualChildCount2) {
            }
        }
        int paddingRight2 = getPaddingRight() + getPaddingLeft() + this.f17329f;
        this.f17329f = paddingRight2;
        int iResolveSizeAndState22 = View.resolveSizeAndState(Math.max(paddingRight2, getSuggestedMinimumWidth()), i10, 0);
        int i892 = (16777215 & iResolveSizeAndState22) - this.f17329f;
        if (z24) {
            f10 = this.f17330g;
            if (f10 > 0.0f) {
            }
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            this.f17329f = 0;
            int iCombineMeasuredStates42 = i12;
            iMax = -1;
            i13 = 0;
            while (i13 < virtualChildCount2) {
            }
            i14 = i11;
            i15 = virtualChildCount2;
            this.f17329f = getPaddingRight() + getPaddingLeft() + this.f17329f;
            i16 = iArr[1];
            if (i16 != -1) {
                c10 = 3;
                i17 = 0;
                iMax = Math.max(iMax, Math.max(iArr2[c10], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[c10], Math.max(iArr[0], Math.max(i16, iArr[2]))));
                i12 = iCombineMeasuredStates42;
            }
        }
        if (!z23) {
            iMax8 = iMax;
        }
        setMeasuredDimension((i12 & (-16777216)) | iResolveSizeAndState22, View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax8, getSuggestedMinimumHeight()), i14, i12 << 16));
        if (z25) {
        }
    }

    public void setBaselineAligned(boolean z) {
        this.f17324a = z;
    }

    public void setBaselineAlignedChildIndex(int i10) {
        if (i10 >= 0 && i10 < getChildCount()) {
            this.f17325b = i10;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f17334k) {
            return;
        }
        this.f17334k = drawable;
        if (drawable != null) {
            this.l = drawable.getIntrinsicWidth();
            this.f17335m = drawable.getIntrinsicHeight();
        } else {
            this.l = 0;
            this.f17335m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i10) {
        this.f17337p = i10;
    }

    public void setGravity(int i10) {
        if (this.f17328e != i10) {
            if ((8388615 & i10) == 0) {
                i10 |= 8388611;
            }
            if ((i10 & 112) == 0) {
                i10 |= 48;
            }
            this.f17328e = i10;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i10) {
        int i11 = i10 & 8388615;
        int i12 = this.f17328e;
        if ((8388615 & i12) != i11) {
            this.f17328e = i11 | ((-8388616) & i12);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f17331h = z;
    }

    public void setOrientation(int i10) {
        if (this.f17327d != i10) {
            this.f17327d = i10;
            requestLayout();
        }
    }

    public void setShowDividers(int i10) {
        if (i10 != this.f17336n) {
            requestLayout();
        }
        this.f17336n = i10;
    }

    public void setVerticalGravity(int i10) {
        int i11 = i10 & 112;
        int i12 = this.f17328e;
        if ((i12 & 112) != i11) {
            this.f17328e = i11 | (i12 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f10) {
        this.f17330g = Math.max(0.0f, f10);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}

package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import ta.q;
import v.j;
import v.k;
import v.z;
import w.e;
import w.g3;
import w.h;
import w.i;
import w.l;
import w.m;
import w.u3;
import w.y1;
import w.z1;

/* loaded from: classes.dex */
public class ActionMenuView extends z1 implements j, z {
    public final int A;
    public m B;

    /* renamed from: q, reason: collision with root package name */
    public k f951q;
    public Context r;

    /* renamed from: s, reason: collision with root package name */
    public int f952s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f953t;

    /* renamed from: v, reason: collision with root package name */
    public w.j f954v;

    /* renamed from: w, reason: collision with root package name */
    public g3 f955w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f956x;

    /* renamed from: y, reason: collision with root package name */
    public int f957y;
    public final int z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.z = (int) (56.0f * f10);
        this.A = (int) (f10 * 4.0f);
        this.r = context;
        this.f952s = 0;
    }

    public static l l(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            l lVar = new l();
            ((LinearLayout.LayoutParams) lVar).gravity = 16;
            return lVar;
        }
        l lVar2 = layoutParams instanceof l ? new l((l) layoutParams) : new l(layoutParams);
        if (((LinearLayout.LayoutParams) lVar2).gravity <= 0) {
            ((LinearLayout.LayoutParams) lVar2).gravity = 16;
        }
        return lVar2;
    }

    @Override // v.z
    public final void a(k kVar) {
        this.f951q = kVar;
    }

    @Override // v.j
    public final boolean b(v.m mVar) {
        return this.f951q.q(mVar, null, 0);
    }

    @Override // w.z1, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof l;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // w.z1, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        l lVar = new l();
        ((LinearLayout.LayoutParams) lVar).gravity = 16;
        return lVar;
    }

    @Override // w.z1, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return l(layoutParams);
    }

    public Menu getMenu() {
        if (this.f951q == null) {
            Context context = getContext();
            k kVar = new k(context);
            this.f951q = kVar;
            kVar.f16237e = new i(1, this);
            w.j jVar = new w.j(context);
            this.f954v = jVar;
            jVar.l = true;
            jVar.f17119m = true;
            jVar.f17112e = new s5.c(18);
            this.f951q.b(jVar, this.r);
            w.j jVar2 = this.f954v;
            jVar2.f17115h = this;
            this.f951q = jVar2.f17110c;
        }
        return this.f951q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        w.j jVar = this.f954v;
        h hVar = jVar.f17116i;
        if (hVar != null) {
            return hVar.getDrawable();
        }
        if (jVar.f17118k) {
            return jVar.f17117j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f952s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // w.z1
    /* renamed from: h */
    public final y1 generateDefaultLayoutParams() {
        l lVar = new l();
        ((LinearLayout.LayoutParams) lVar).gravity = 16;
        return lVar;
    }

    @Override // w.z1
    /* renamed from: i */
    public final y1 generateLayoutParams(AttributeSet attributeSet) {
        return new l(getContext(), attributeSet);
    }

    @Override // w.z1
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ y1 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return l(layoutParams);
    }

    public final boolean m(int i10) {
        boolean zA = false;
        if (i10 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i10 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i10);
        if (i10 < getChildCount() && (childAt instanceof w.k)) {
            zA = ((w.k) childAt).a();
        }
        return (i10 <= 0 || !(childAt2 instanceof w.k)) ? zA : zA | ((w.k) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        w.j jVar = this.f954v;
        if (jVar != null) {
            jVar.g();
            if (this.f954v.k()) {
                this.f954v.h();
                this.f954v.l();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        w.j jVar = this.f954v;
        if (jVar != null) {
            jVar.h();
            e eVar = jVar.f17125v;
            if (eVar == null || !eVar.b()) {
                return;
            }
            eVar.f16298i.dismiss();
        }
    }

    @Override // w.z1, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int width;
        int paddingLeft;
        if (!this.f956x) {
            super.onLayout(z, i10, i11, i12, i13);
            return;
        }
        int childCount = getChildCount();
        int i14 = (i13 - i11) / 2;
        int dividerWidth = getDividerWidth();
        int i15 = i12 - i10;
        int paddingRight = (i15 - getPaddingRight()) - getPaddingLeft();
        boolean zA = u3.a(this);
        int i16 = 0;
        int i17 = 0;
        for (int i18 = 0; i18 < childCount; i18++) {
            View childAt = getChildAt(i18);
            if (childAt.getVisibility() != 8) {
                l lVar = (l) childAt.getLayoutParams();
                if (lVar.f17138a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m(i18)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) lVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) lVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i19 = i14 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i19, width, measuredHeight + i19);
                    paddingRight -= measuredWidth;
                    i16 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) lVar).leftMargin) + ((LinearLayout.LayoutParams) lVar).rightMargin;
                    m(i18);
                    i17++;
                }
            }
        }
        if (childCount == 1 && i16 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i20 = (i15 / 2) - (measuredWidth2 / 2);
            int i21 = i14 - (measuredHeight2 / 2);
            childAt2.layout(i20, i21, measuredWidth2 + i20, measuredHeight2 + i21);
            return;
        }
        int i22 = i17 - (i16 ^ 1);
        int iMax = Math.max(0, i22 > 0 ? paddingRight / i22 : 0);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            for (int i23 = 0; i23 < childCount; i23++) {
                View childAt3 = getChildAt(i23);
                l lVar2 = (l) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !lVar2.f17138a) {
                    int i24 = width2 - ((LinearLayout.LayoutParams) lVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i25 = i14 - (measuredHeight3 / 2);
                    childAt3.layout(i24 - measuredWidth3, i25, i24, measuredHeight3 + i25);
                    width2 = i24 - ((measuredWidth3 + ((LinearLayout.LayoutParams) lVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i26 = 0; i26 < childCount; i26++) {
            View childAt4 = getChildAt(i26);
            l lVar3 = (l) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !lVar3.f17138a) {
                int i27 = paddingLeft2 + ((LinearLayout.LayoutParams) lVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i28 = i14 - (measuredHeight4 / 2);
                childAt4.layout(i27, i28, i27 + measuredWidth4, measuredHeight4 + i28);
                paddingLeft2 = q.x(measuredWidth4, ((LinearLayout.LayoutParams) lVar3).rightMargin, iMax, i27);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v24, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v26 */
    /* JADX WARN: Type inference failed for: r4v31 */
    @Override // w.z1, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        boolean z;
        int i13;
        boolean z4;
        int i14;
        int i15;
        int i16;
        ?? r4;
        int i17;
        int i18;
        int i19;
        k kVar;
        boolean z10 = this.f956x;
        boolean z11 = View.MeasureSpec.getMode(i10) == 1073741824;
        this.f956x = z11;
        if (z10 != z11) {
            this.f957y = 0;
        }
        int size = View.MeasureSpec.getSize(i10);
        if (this.f956x && (kVar = this.f951q) != null && size != this.f957y) {
            this.f957y = size;
            kVar.p(true);
        }
        int childCount = getChildCount();
        if (!this.f956x || childCount <= 0) {
            for (int i20 = 0; i20 < childCount; i20++) {
                l lVar = (l) getChildAt(i20).getLayoutParams();
                ((LinearLayout.LayoutParams) lVar).rightMargin = 0;
                ((LinearLayout.LayoutParams) lVar).leftMargin = 0;
            }
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i10);
        int size3 = View.MeasureSpec.getSize(i11);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i11, paddingBottom, -2);
        int i21 = size2 - paddingRight;
        int i22 = this.z;
        int i23 = i21 / i22;
        int i24 = i21 % i22;
        if (i23 == 0) {
            setMeasuredDimension(i21, 0);
            return;
        }
        int i25 = (i24 / i23) + i22;
        int childCount2 = getChildCount();
        int iMax = 0;
        int i26 = 0;
        int iMax2 = 0;
        int i27 = 0;
        boolean z12 = false;
        long j10 = 0;
        int i28 = 0;
        while (true) {
            i12 = this.A;
            if (i27 >= childCount2) {
                break;
            }
            View childAt = getChildAt(i27);
            int i29 = size3;
            int i30 = i21;
            if (childAt.getVisibility() == 8) {
                i17 = mode;
                i18 = paddingBottom;
            } else {
                boolean z13 = childAt instanceof ActionMenuItemView;
                int i31 = i26 + 1;
                if (z13) {
                    childAt.setPadding(i12, 0, i12, 0);
                }
                l lVar2 = (l) childAt.getLayoutParams();
                lVar2.f17143f = false;
                lVar2.f17140c = 0;
                lVar2.f17139b = 0;
                lVar2.f17141d = false;
                ((LinearLayout.LayoutParams) lVar2).leftMargin = 0;
                ((LinearLayout.LayoutParams) lVar2).rightMargin = 0;
                lVar2.f17142e = z13 && !TextUtils.isEmpty(((ActionMenuItemView) childAt).getText());
                int i32 = lVar2.f17138a ? 1 : i23;
                l lVar3 = (l) childAt.getLayoutParams();
                i17 = mode;
                i18 = paddingBottom;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView = z13 ? (ActionMenuItemView) childAt : null;
                boolean z14 = (actionMenuItemView == null || TextUtils.isEmpty(actionMenuItemView.getText())) ? false : true;
                if (i32 <= 0 || (z14 && i32 < 2)) {
                    i19 = 0;
                } else {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i32 * i25, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt.getMeasuredWidth();
                    i19 = measuredWidth / i25;
                    if (measuredWidth % i25 != 0) {
                        i19++;
                    }
                    if (z14 && i19 < 2) {
                        i19 = 2;
                    }
                }
                lVar3.f17141d = !lVar3.f17138a && z14;
                lVar3.f17139b = i19;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i19 * i25, 1073741824), iMakeMeasureSpec);
                iMax2 = Math.max(iMax2, i19);
                if (lVar2.f17141d) {
                    i28++;
                }
                if (lVar2.f17138a) {
                    z12 = true;
                }
                i23 -= i19;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (i19 == 1) {
                    j10 |= 1 << i27;
                }
                i26 = i31;
            }
            i27++;
            size3 = i29;
            i21 = i30;
            paddingBottom = i18;
            mode = i17;
        }
        int i33 = mode;
        int i34 = i21;
        int i35 = size3;
        boolean z15 = z12 && i26 == 2;
        boolean z16 = false;
        while (i28 > 0 && i23 > 0) {
            int i36 = Integer.MAX_VALUE;
            int i37 = 0;
            int i38 = 0;
            long j11 = 0;
            while (i38 < childCount2) {
                l lVar4 = (l) getChildAt(i38).getLayoutParams();
                boolean z17 = z16;
                if (lVar4.f17141d) {
                    int i39 = lVar4.f17139b;
                    if (i39 < i36) {
                        j11 = 1 << i38;
                        i36 = i39;
                        i37 = 1;
                    } else if (i39 == i36) {
                        j11 |= 1 << i38;
                        i37++;
                    }
                }
                i38++;
                z16 = z17;
            }
            z = z16;
            j10 |= j11;
            if (i37 > i23) {
                break;
            }
            int i40 = i36 + 1;
            int i41 = 0;
            while (i41 < childCount2) {
                View childAt2 = getChildAt(i41);
                l lVar5 = (l) childAt2.getLayoutParams();
                int i42 = iMax;
                int i43 = childMeasureSpec;
                int i44 = childCount2;
                long j12 = 1 << i41;
                if ((j11 & j12) != 0) {
                    if (z15 && lVar5.f17142e) {
                        r4 = 1;
                        r4 = 1;
                        if (i23 == 1) {
                            childAt2.setPadding(i12 + i25, 0, i12, 0);
                        }
                    } else {
                        r4 = 1;
                    }
                    lVar5.f17139b += r4;
                    lVar5.f17143f = r4;
                    i23--;
                } else if (lVar5.f17139b == i40) {
                    j10 |= j12;
                }
                i41++;
                childMeasureSpec = i43;
                iMax = i42;
                childCount2 = i44;
            }
            z16 = true;
        }
        z = z16;
        int i45 = iMax;
        int i46 = childMeasureSpec;
        int i47 = childCount2;
        boolean z18 = !z12 && i26 == 1;
        if (i23 <= 0 || j10 == 0 || (i23 >= i26 - 1 && !z18 && iMax2 <= 1)) {
            i13 = i47;
            z4 = z;
        } else {
            float fBitCount = Long.bitCount(j10);
            if (!z18) {
                if ((j10 & 1) != 0 && !((l) getChildAt(0).getLayoutParams()).f17142e) {
                    fBitCount -= 0.5f;
                }
                int i48 = i47 - 1;
                if ((j10 & (1 << i48)) != 0 && !((l) getChildAt(i48).getLayoutParams()).f17142e) {
                    fBitCount -= 0.5f;
                }
            }
            int i49 = fBitCount > 0.0f ? (int) ((i23 * i25) / fBitCount) : 0;
            boolean z19 = z;
            i13 = i47;
            for (int i50 = 0; i50 < i13; i50++) {
                if ((j10 & (1 << i50)) != 0) {
                    View childAt3 = getChildAt(i50);
                    l lVar6 = (l) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        lVar6.f17140c = i49;
                        lVar6.f17143f = true;
                        if (i50 == 0 && !lVar6.f17142e) {
                            ((LinearLayout.LayoutParams) lVar6).leftMargin = (-i49) / 2;
                        }
                        z19 = true;
                    } else {
                        if (lVar6.f17138a) {
                            lVar6.f17140c = i49;
                            lVar6.f17143f = true;
                            ((LinearLayout.LayoutParams) lVar6).rightMargin = (-i49) / 2;
                            z19 = true;
                        } else {
                            if (i50 != 0) {
                                ((LinearLayout.LayoutParams) lVar6).leftMargin = i49 / 2;
                            }
                            if (i50 != i13 - 1) {
                                ((LinearLayout.LayoutParams) lVar6).rightMargin = i49 / 2;
                            }
                        }
                    }
                }
            }
            z4 = z19;
        }
        if (z4) {
            int i51 = 0;
            while (i51 < i13) {
                View childAt4 = getChildAt(i51);
                l lVar7 = (l) childAt4.getLayoutParams();
                if (lVar7.f17143f) {
                    i16 = i46;
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((lVar7.f17139b * i25) + lVar7.f17140c, 1073741824), i16);
                } else {
                    i16 = i46;
                }
                i51++;
                i46 = i16;
            }
        }
        if (i33 != 1073741824) {
            i15 = i34;
            i14 = i45;
        } else {
            i14 = i35;
            i15 = i34;
        }
        setMeasuredDimension(i15, i14);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f954v.r = z;
    }

    public void setOnMenuItemClickListener(m mVar) {
        this.B = mVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        w.j jVar = this.f954v;
        h hVar = jVar.f17116i;
        if (hVar != null) {
            hVar.setImageDrawable(drawable);
        } else {
            jVar.f17118k = true;
            jVar.f17117j = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.f953t = z;
    }

    public void setPopupTheme(int i10) {
        if (this.f952s != i10) {
            this.f952s = i10;
            if (i10 == 0) {
                this.r = getContext();
            } else {
                this.r = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setPresenter(w.j jVar) {
        this.f954v = jVar;
        jVar.f17115h = this;
        this.f951q = jVar.f17110c;
    }

    @Override // w.z1, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new l(getContext(), attributeSet);
    }
}

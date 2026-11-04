package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import ha.l2;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import k4.a;
import k4.b;
import k4.g;
import p7.c;
import p7.e;
import p7.h;
import p7.i;
import p7.k;
import p7.l;
import w0.d;
import x0.b1;
import x0.j0;
import x0.k0;

@b
/* loaded from: classes.dex */
public class TabLayout extends HorizontalScrollView {
    public static final d O0 = new d(16);
    public int A;
    public final int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public int G;
    public int H;
    public boolean I;
    public l2 K;
    public final TimeInterpolator L;
    public p7.d M;
    public int M0;
    public final ArrayList N;
    public final d0.d N0;
    public l O;
    public ValueAnimator P;
    public g R;
    public a S;
    public c1.b T;
    public i V;

    /* renamed from: a, reason: collision with root package name */
    public int f3646a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3647b;

    /* renamed from: c, reason: collision with root package name */
    public h f3648c;

    /* renamed from: d, reason: collision with root package name */
    public final p7.g f3649d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3650e;

    /* renamed from: f, reason: collision with root package name */
    public final int f3651f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3652g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3653h;

    /* renamed from: h0, reason: collision with root package name */
    public c f3654h0;

    /* renamed from: i, reason: collision with root package name */
    public final int f3655i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3656j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3657k;
    public ColorStateList l;

    /* renamed from: m, reason: collision with root package name */
    public ColorStateList f3658m;

    /* renamed from: n, reason: collision with root package name */
    public ColorStateList f3659n;

    /* renamed from: p, reason: collision with root package name */
    public Drawable f3660p;

    /* renamed from: q, reason: collision with root package name */
    public int f3661q;
    public final float r;

    /* renamed from: s, reason: collision with root package name */
    public final float f3662s;

    /* renamed from: t, reason: collision with root package name */
    public final int f3663t;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f3664t0;

    /* renamed from: v, reason: collision with root package name */
    public int f3665v;

    /* renamed from: w, reason: collision with root package name */
    public final int f3666w;

    /* renamed from: x, reason: collision with root package name */
    public final int f3667x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3668y;
    public final int z;

    public TabLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(s7.a.a(context, attributeSet, R.attr.tabStyle, R.style.Widget_Design_TabLayout), attributeSet, R.attr.tabStyle);
        this.f3646a = -1;
        this.f3647b = new ArrayList();
        this.f3657k = -1;
        this.f3661q = 0;
        this.f3665v = Integer.MAX_VALUE;
        this.G = -1;
        this.N = new ArrayList();
        this.N0 = new d0.d(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        p7.g gVar = new p7.g(this, context2);
        this.f3649d = gVar;
        super.addView(gVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayG = g7.l.g(context2, attributeSet, q6.a.z, R.attr.tabStyle, R.style.Widget_Design_TabLayout, 24);
        ColorStateList colorStateListX = d.b.x(getBackground());
        if (colorStateListX != null) {
            m7.g gVar2 = new m7.g();
            gVar2.k(colorStateListX);
            gVar2.i(context2);
            gVar2.j(b1.g(this));
            j0.q(this, gVar2);
        }
        setSelectedTabIndicator(com.bumptech.glide.c.C(context2, typedArrayG, 5));
        setSelectedTabIndicatorColor(typedArrayG.getColor(8, 0));
        gVar.b(typedArrayG.getDimensionPixelSize(11, -1));
        setSelectedTabIndicatorGravity(typedArrayG.getInt(10, 0));
        setTabIndicatorAnimationMode(typedArrayG.getInt(7, 0));
        setTabIndicatorFullWidth(typedArrayG.getBoolean(9, true));
        int dimensionPixelSize = typedArrayG.getDimensionPixelSize(16, 0);
        this.f3653h = dimensionPixelSize;
        this.f3652g = dimensionPixelSize;
        this.f3651f = dimensionPixelSize;
        this.f3650e = dimensionPixelSize;
        this.f3650e = typedArrayG.getDimensionPixelSize(19, dimensionPixelSize);
        this.f3651f = typedArrayG.getDimensionPixelSize(20, dimensionPixelSize);
        this.f3652g = typedArrayG.getDimensionPixelSize(18, dimensionPixelSize);
        this.f3653h = typedArrayG.getDimensionPixelSize(17, dimensionPixelSize);
        if (android.support.v4.media.session.b.E(context2, R.attr.isMaterial3Theme, false)) {
            this.f3655i = R.attr.textAppearanceTitleSmall;
        } else {
            this.f3655i = R.attr.textAppearanceButton;
        }
        int resourceId = typedArrayG.getResourceId(24, R.style.TextAppearance_Design_Tab);
        this.f3656j = resourceId;
        int[] iArr = p.a.f12535w;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(resourceId, iArr);
        try {
            float dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.r = dimensionPixelSize2;
            this.l = com.bumptech.glide.c.w(context2, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayG.hasValue(22)) {
                this.f3657k = typedArrayG.getResourceId(22, resourceId);
            }
            int i10 = this.f3657k;
            if (i10 != -1) {
                typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(i10, iArr);
                try {
                    typedArrayObtainStyledAttributes.getDimensionPixelSize(0, (int) dimensionPixelSize2);
                    ColorStateList colorStateListW = com.bumptech.glide.c.w(context2, typedArrayObtainStyledAttributes, 3);
                    if (colorStateListW != null) {
                        this.l = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{colorStateListW.getColorForState(new int[]{android.R.attr.state_selected}, colorStateListW.getDefaultColor()), this.l.getDefaultColor()});
                    }
                } finally {
                }
            }
            if (typedArrayG.hasValue(25)) {
                this.l = com.bumptech.glide.c.w(context2, typedArrayG, 25);
            }
            if (typedArrayG.hasValue(23)) {
                this.l = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayG.getColor(23, 0), this.l.getDefaultColor()});
            }
            this.f3658m = com.bumptech.glide.c.w(context2, typedArrayG, 3);
            g7.l.h(typedArrayG.getInt(4, -1), null);
            this.f3659n = com.bumptech.glide.c.w(context2, typedArrayG, 21);
            this.B = typedArrayG.getInt(6, NoConst.RECORDING_TIME_INTERVAL);
            this.L = com.bumptech.glide.d.c0(context2, R.attr.motionEasingEmphasizedInterpolator, r6.a.f13711b);
            this.f3666w = typedArrayG.getDimensionPixelSize(14, -1);
            this.f3667x = typedArrayG.getDimensionPixelSize(13, -1);
            this.f3663t = typedArrayG.getResourceId(0, 0);
            this.z = typedArrayG.getDimensionPixelSize(1, 0);
            this.D = typedArrayG.getInt(15, 1);
            this.A = typedArrayG.getInt(2, 0);
            this.E = typedArrayG.getBoolean(12, false);
            this.I = typedArrayG.getBoolean(26, false);
            typedArrayG.recycle();
            Resources resources = getResources();
            this.f3662s = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f3668y = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            c();
        } finally {
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f3647b;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i10 = this.f3666w;
        if (i10 != -1) {
            return i10;
        }
        int i11 = this.D;
        if (i11 == 0 || i11 == 2) {
            return this.f3668y;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f3649d.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i10) {
        p7.g gVar = this.f3649d;
        int childCount = gVar.getChildCount();
        if (i10 < childCount) {
            int i11 = 0;
            while (i11 < childCount) {
                View childAt = gVar.getChildAt(i11);
                if ((i11 != i10 || childAt.isSelected()) && (i11 == i10 || !childAt.isSelected())) {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                } else {
                    childAt.setSelected(i11 == i10);
                    childAt.setActivated(i11 == i10);
                    if (childAt instanceof k) {
                        ((k) childAt).f();
                    }
                }
                i11++;
            }
        }
    }

    public final void a(h hVar, boolean z) {
        ArrayList arrayList = this.f3647b;
        int size = arrayList.size();
        if (hVar.f12590d != this) {
            throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
        }
        hVar.f12588b = size;
        arrayList.add(size, hVar);
        int size2 = arrayList.size();
        int i10 = -1;
        for (int i11 = size + 1; i11 < size2; i11++) {
            if (((h) arrayList.get(i11)).f12588b == this.f3646a) {
                i10 = i11;
            }
            ((h) arrayList.get(i11)).f12588b = i11;
        }
        this.f3646a = i10;
        k kVar = hVar.f12591e;
        kVar.setSelected(false);
        kVar.setActivated(false);
        int i12 = hVar.f12588b;
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        if (this.D == 1 && this.A == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
        this.f3649d.addView(kVar, i12, layoutParams);
        if (z) {
            TabLayout tabLayout = hVar.f12590d;
            if (tabLayout == null) {
                throw new IllegalArgumentException("Tab not attached to a TabLayout");
            }
            tabLayout.j(hVar, true);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void b(int i10) {
        if (i10 == -1) {
            return;
        }
        if (getWindowToken() != null && b1.m(this)) {
            p7.g gVar = this.f3649d;
            int childCount = gVar.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                if (gVar.getChildAt(i11).getWidth() > 0) {
                }
            }
            int scrollX = getScrollX();
            int iD = d(0.0f, i10);
            if (scrollX != iD) {
                e();
                this.P.setIntValues(scrollX, iD);
                this.P.start();
            }
            ValueAnimator valueAnimator = gVar.f12584a;
            if (valueAnimator != null && valueAnimator.isRunning() && gVar.f12586c.f3646a != i10) {
                gVar.f12584a.cancel();
            }
            gVar.d(i10, this.B, true);
            return;
        }
        l(i10, 0.0f, true, true, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        int i10 = this.D;
        int iMax = (i10 == 0 || i10 == 2) ? Math.max(0, this.z - this.f3650e) : 0;
        WeakHashMap weakHashMap = b1.f17953a;
        p7.g gVar = this.f3649d;
        k0.k(gVar, iMax, 0, 0, 0);
        int i11 = this.D;
        if (i11 == 0) {
            int i12 = this.A;
            if (i12 == 0) {
                gVar.setGravity(8388611);
            } else if (i12 == 1) {
                gVar.setGravity(1);
            } else if (i12 == 2) {
            }
        } else if (i11 == 1 || i11 == 2) {
            gVar.setGravity(1);
        }
        n(true);
    }

    public final int d(float f10, int i10) {
        p7.g gVar;
        View childAt;
        int i11 = this.D;
        if ((i11 != 0 && i11 != 2) || (childAt = (gVar = this.f3649d).getChildAt(i10)) == null) {
            return 0;
        }
        int i12 = i10 + 1;
        View childAt2 = i12 < gVar.getChildCount() ? gVar.getChildAt(i12) : null;
        int width = childAt.getWidth();
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i13 = (int) ((width + width2) * 0.5f * f10);
        WeakHashMap weakHashMap = b1.f17953a;
        return k0.d(this) == 0 ? left + i13 : left - i13;
    }

    public final void e() {
        if (this.P == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.P = valueAnimator;
            valueAnimator.setInterpolator(this.L);
            this.P.setDuration(this.B);
            this.P.addUpdateListener(new p7.b(0, this));
        }
    }

    public final h f(int i10) {
        if (i10 < 0 || i10 >= getTabCount()) {
            return null;
        }
        return (h) this.f3647b.get(i10);
    }

    public final h g() {
        h hVar = (h) O0.a();
        if (hVar == null) {
            hVar = new h();
        }
        hVar.f12590d = this;
        d0.d dVar = this.N0;
        k kVar = dVar != null ? (k) dVar.a() : null;
        if (kVar == null) {
            kVar = new k(this, getContext());
        }
        kVar.setTab(hVar);
        kVar.setFocusable(true);
        kVar.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(null)) {
            kVar.setContentDescription(hVar.f12587a);
        } else {
            kVar.setContentDescription(null);
        }
        hVar.f12591e = kVar;
        return hVar;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        h hVar = this.f3648c;
        if (hVar != null) {
            return hVar.f12588b;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f3647b.size();
    }

    public int getTabGravity() {
        return this.A;
    }

    public ColorStateList getTabIconTint() {
        return this.f3658m;
    }

    public int getTabIndicatorAnimationMode() {
        return this.H;
    }

    public int getTabIndicatorGravity() {
        return this.C;
    }

    public int getTabMaxWidth() {
        return this.f3665v;
    }

    public int getTabMode() {
        return this.D;
    }

    public ColorStateList getTabRippleColor() {
        return this.f3659n;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f3660p;
    }

    public ColorStateList getTabTextColors() {
        return this.l;
    }

    public final void h() {
        int currentItem;
        i();
        a aVar = this.S;
        if (aVar != null) {
            int iC = aVar.c();
            for (int i10 = 0; i10 < iC; i10++) {
                h hVarG = g();
                this.S.getClass();
                hVarG.a(null);
                a(hVarG, false);
            }
            g gVar = this.R;
            if (gVar == null || iC <= 0 || (currentItem = gVar.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            j(f(currentItem), true);
        }
    }

    public final void i() {
        p7.g gVar = this.f3649d;
        int childCount = gVar.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                break;
            }
            k kVar = (k) gVar.getChildAt(childCount);
            gVar.removeViewAt(childCount);
            if (kVar != null) {
                kVar.setTab(null);
                kVar.setSelected(false);
                this.N0.c(kVar);
            }
            requestLayout();
        }
        Iterator it = this.f3647b.iterator();
        while (it.hasNext()) {
            h hVar = (h) it.next();
            it.remove();
            hVar.f12590d = null;
            hVar.f12591e = null;
            hVar.f12587a = null;
            hVar.f12588b = -1;
            hVar.f12589c = null;
            O0.c(hVar);
        }
        this.f3648c = null;
    }

    public final void j(h hVar, boolean z) {
        h hVar2 = this.f3648c;
        ArrayList arrayList = this.N;
        if (hVar2 == hVar) {
            if (hVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((p7.d) arrayList.get(size)).getClass();
                }
                b(hVar.f12588b);
                return;
            }
            return;
        }
        int i10 = hVar != null ? hVar.f12588b : -1;
        if (z) {
            if ((hVar2 == null || hVar2.f12588b == -1) && i10 != -1) {
                l(i10, 0.0f, true, true, true);
            } else {
                b(i10);
            }
            if (i10 != -1) {
                setSelectedTabView(i10);
            }
        }
        this.f3648c = hVar;
        if (hVar2 != null && hVar2.f12590d != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((p7.d) arrayList.get(size2)).getClass();
            }
        }
        if (hVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                ((p7.d) arrayList.get(size3)).a(hVar);
            }
        }
    }

    public final void k(a aVar, boolean z) {
        c1.b bVar;
        a aVar2 = this.S;
        if (aVar2 != null && (bVar = this.T) != null) {
            aVar2.f10132a.unregisterObserver(bVar);
        }
        this.S = aVar;
        if (z && aVar != null) {
            if (this.T == null) {
                this.T = new c1.b(2, this);
            }
            aVar.f10132a.registerObserver(this.T);
        }
        h();
    }

    public final void l(int i10, float f10, boolean z, boolean z4, boolean z10) {
        float f11 = i10 + f10;
        int iRound = Math.round(f11);
        if (iRound >= 0) {
            p7.g gVar = this.f3649d;
            if (iRound >= gVar.getChildCount()) {
                return;
            }
            if (z4) {
                gVar.f12586c.f3646a = Math.round(f11);
                ValueAnimator valueAnimator = gVar.f12584a;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    gVar.f12584a.cancel();
                }
                gVar.c(gVar.getChildAt(i10), gVar.getChildAt(i10 + 1), f10);
            }
            ValueAnimator valueAnimator2 = this.P;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.P.cancel();
            }
            int iD = d(f10, i10);
            int scrollX = getScrollX();
            boolean z11 = (i10 < getSelectedTabPosition() && iD >= scrollX) || (i10 > getSelectedTabPosition() && iD <= scrollX) || i10 == getSelectedTabPosition();
            WeakHashMap weakHashMap = b1.f17953a;
            if (k0.d(this) == 1) {
                z11 = (i10 < getSelectedTabPosition() && iD <= scrollX) || (i10 > getSelectedTabPosition() && iD >= scrollX) || i10 == getSelectedTabPosition();
            }
            if (z11 || this.M0 == 1 || z10) {
                if (i10 < 0) {
                    iD = 0;
                }
                scrollTo(iD, 0);
            }
            if (z) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void m(g gVar, boolean z) {
        ArrayList arrayList;
        ArrayList arrayList2;
        g gVar2 = this.R;
        if (gVar2 != null) {
            i iVar = this.V;
            if (iVar != null && (arrayList2 = gVar2.C) != null) {
                arrayList2.remove(iVar);
            }
            c cVar = this.f3654h0;
            if (cVar != null && (arrayList = this.R.E) != null) {
                arrayList.remove(cVar);
            }
        }
        l lVar = this.O;
        ArrayList arrayList3 = this.N;
        if (lVar != null) {
            arrayList3.remove(lVar);
            this.O = null;
        }
        if (gVar != null) {
            this.R = gVar;
            if (this.V == null) {
                this.V = new i(this);
            }
            i iVar2 = this.V;
            iVar2.f12594c = 0;
            iVar2.f12593b = 0;
            if (gVar.C == null) {
                gVar.C = new ArrayList();
            }
            gVar.C.add(iVar2);
            l lVar2 = new l(0, gVar);
            this.O = lVar2;
            if (!arrayList3.contains(lVar2)) {
                arrayList3.add(lVar2);
            }
            a adapter = gVar.getAdapter();
            if (adapter != null) {
                k(adapter, true);
            }
            if (this.f3654h0 == null) {
                this.f3654h0 = new c(this);
            }
            c cVar2 = this.f3654h0;
            cVar2.f12578a = true;
            if (gVar.E == null) {
                gVar.E = new ArrayList();
            }
            gVar.E.add(cVar2);
            l(gVar.getCurrentItem(), 0.0f, true, true, true);
        } else {
            this.R = null;
            k(null, false);
        }
        this.f3664t0 = z;
    }

    public final void n(boolean z) {
        int i10 = 0;
        while (true) {
            p7.g gVar = this.f3649d;
            if (i10 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i10);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.D == 1 && this.A == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z) {
                childAt.requestLayout();
            }
            i10++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof m7.g) {
            s1.g.X(this, (m7.g) background);
        }
        if (this.R == null) {
            ViewParent parent = getParent();
            if (parent instanceof g) {
                m((g) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f3664t0) {
            setupWithViewPager(null);
            this.f3664t0 = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        k kVar;
        Drawable drawable;
        int i10 = 0;
        while (true) {
            p7.g gVar = this.f3649d;
            if (i10 >= gVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = gVar.getChildAt(i10);
            if ((childAt instanceof k) && (drawable = (kVar = (k) childAt).f12605i) != null) {
                drawable.setBounds(kVar.getLeft(), kVar.getTop(), kVar.getRight(), kVar.getBottom());
                kVar.f12605i.draw(canvas);
            }
            i10++;
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        kh.h hVarB = kh.h.b(1, getTabCount(), 1, false);
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityNodeInfo.setCollectionInfo(vb.b.c(hVarB.f10353a));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (getTabMode() == 0 || getTabMode() == 2) && super.onInterceptTouchEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i10, int i11) {
        int iRound = Math.round(g7.l.d(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i11 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + iRound, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i11) >= iRound) {
            getChildAt(0).setMinimumHeight(iRound);
        }
        int size = View.MeasureSpec.getSize(i10);
        if (View.MeasureSpec.getMode(i10) != 0) {
            int iD = this.f3667x;
            if (iD <= 0) {
                iD = (int) (size - g7.l.d(getContext(), 56));
            }
            this.f3665v = iD;
        }
        super.onMeasure(i10, i11);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i12 = this.D;
            if (i12 == 0) {
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                    return;
                }
            } else if (i12 != 1) {
                if (i12 != 2) {
                    return;
                }
                if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                }
            } else if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i11, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() != 8 || getTabMode() == 0 || getTabMode() == 2) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        Drawable background = getBackground();
        if (background instanceof m7.g) {
            ((m7.g) background).j(f10);
        }
    }

    public void setInlineLabel(boolean z) {
        if (this.E == z) {
            return;
        }
        this.E = z;
        int i10 = 0;
        while (true) {
            p7.g gVar = this.f3649d;
            if (i10 >= gVar.getChildCount()) {
                c();
                return;
            }
            View childAt = gVar.getChildAt(i10);
            if (childAt instanceof k) {
                k kVar = (k) childAt;
                kVar.setOrientation(!kVar.f12607k.E ? 1 : 0);
                TextView textView = kVar.f12603g;
                if (textView == null && kVar.f12604h == null) {
                    kVar.g(kVar.f12598b, kVar.f12599c, true);
                } else {
                    kVar.g(textView, kVar.f12604h, false);
                }
            }
            i10++;
        }
    }

    public void setInlineLabelResource(int i10) {
        setInlineLabel(getResources().getBoolean(i10));
    }

    @Deprecated
    public void setOnTabSelectedListener(e eVar) {
        setOnTabSelectedListener((p7.d) eVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        e();
        this.P.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable drawableMutate = com.bumptech.glide.c.n0(drawable).mutate();
        this.f3660p = drawableMutate;
        d.b.p0(drawableMutate, this.f3661q);
        int intrinsicHeight = this.G;
        if (intrinsicHeight == -1) {
            intrinsicHeight = this.f3660p.getIntrinsicHeight();
        }
        this.f3649d.b(intrinsicHeight);
    }

    public void setSelectedTabIndicatorColor(int i10) {
        this.f3661q = i10;
        d.b.p0(this.f3660p, i10);
        n(false);
    }

    public void setSelectedTabIndicatorGravity(int i10) {
        if (this.C != i10) {
            this.C = i10;
            WeakHashMap weakHashMap = b1.f17953a;
            j0.k(this.f3649d);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i10) {
        this.G = i10;
        this.f3649d.b(i10);
    }

    public void setTabGravity(int i10) {
        if (this.A != i10) {
            this.A = i10;
            c();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f3658m != colorStateList) {
            this.f3658m = colorStateList;
            ArrayList arrayList = this.f3647b;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                k kVar = ((h) arrayList.get(i10)).f12591e;
                if (kVar != null) {
                    kVar.d();
                }
            }
        }
    }

    public void setTabIconTintResource(int i10) {
        setTabIconTint(n0.g.d(getContext(), i10));
    }

    public void setTabIndicatorAnimationMode(int i10) {
        this.H = i10;
        if (i10 == 0) {
            this.K = new l2(27);
            return;
        }
        if (i10 == 1) {
            this.K = new p7.a(0);
        } else {
            if (i10 == 2) {
                this.K = new p7.a(1);
                return;
            }
            throw new IllegalArgumentException(i10 + " is not a valid TabIndicatorAnimationMode");
        }
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.F = z;
        int i10 = p7.g.f12583d;
        p7.g gVar = this.f3649d;
        gVar.a(gVar.f12586c.getSelectedTabPosition());
        WeakHashMap weakHashMap = b1.f17953a;
        j0.k(gVar);
    }

    public void setTabMode(int i10) {
        if (i10 != this.D) {
            this.D = i10;
            c();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f3659n == colorStateList) {
            return;
        }
        this.f3659n = colorStateList;
        int i10 = 0;
        while (true) {
            p7.g gVar = this.f3649d;
            if (i10 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i10);
            if (childAt instanceof k) {
                Context context = getContext();
                int i11 = k.l;
                ((k) childAt).e(context);
            }
            i10++;
        }
    }

    public void setTabRippleColorResource(int i10) {
        setTabRippleColor(n0.g.d(getContext(), i10));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            ArrayList arrayList = this.f3647b;
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                k kVar = ((h) arrayList.get(i10)).f12591e;
                if (kVar != null) {
                    kVar.d();
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(a aVar) {
        k(aVar, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.I == z) {
            return;
        }
        this.I = z;
        int i10 = 0;
        while (true) {
            p7.g gVar = this.f3649d;
            if (i10 >= gVar.getChildCount()) {
                return;
            }
            View childAt = gVar.getChildAt(i10);
            if (childAt instanceof k) {
                Context context = getContext();
                int i11 = k.l;
                ((k) childAt).e(context);
            }
            i10++;
        }
    }

    public void setUnboundedRippleResource(int i10) {
        setUnboundedRipple(getResources().getBoolean(i10));
    }

    public void setupWithViewPager(g gVar) {
        m(gVar, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void setOnTabSelectedListener(p7.d dVar) {
        p7.d dVar2 = this.M;
        ArrayList arrayList = this.N;
        if (dVar2 != null) {
            arrayList.remove(dVar2);
        }
        this.M = dVar;
        if (dVar == null || arrayList.contains(dVar)) {
            return;
        }
        arrayList.add(dVar);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public void setSelectedTabIndicator(int i10) {
        if (i10 != 0) {
            setSelectedTabIndicator(com.bumptech.glide.d.x(getContext(), i10));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}

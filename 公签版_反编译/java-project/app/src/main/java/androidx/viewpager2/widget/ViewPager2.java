package androidx.viewpager2.widget;

import a0.k;
import a2.w0;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.emoji2.text.j;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.m1;
import androidx.recyclerview.widget.t1;
import androidx.viewpager2.adapter.c;
import java.util.ArrayList;
import java.util.WeakHashMap;
import l4.a;
import l5.y;
import m4.b;
import m4.d;
import m4.e;
import m4.f;
import m4.g;
import m4.h;
import m4.l;
import m4.m;
import m4.n;
import ta.q;
import x0.b1;
import x0.j0;
import x0.k0;

/* loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public final Rect f2471a;

    /* renamed from: b, reason: collision with root package name */
    public final Rect f2472b;

    /* renamed from: c, reason: collision with root package name */
    public final c f2473c;

    /* renamed from: d, reason: collision with root package name */
    public int f2474d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2475e;

    /* renamed from: f, reason: collision with root package name */
    public final e f2476f;

    /* renamed from: g, reason: collision with root package name */
    public final h f2477g;

    /* renamed from: h, reason: collision with root package name */
    public int f2478h;

    /* renamed from: i, reason: collision with root package name */
    public Parcelable f2479i;

    /* renamed from: j, reason: collision with root package name */
    public final m f2480j;

    /* renamed from: k, reason: collision with root package name */
    public final l f2481k;
    public final d l;

    /* renamed from: m, reason: collision with root package name */
    public final c f2482m;

    /* renamed from: n, reason: collision with root package name */
    public final y f2483n;

    /* renamed from: p, reason: collision with root package name */
    public final b f2484p;

    /* renamed from: q, reason: collision with root package name */
    public t1 f2485q;
    public boolean r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f2486s;

    /* renamed from: t, reason: collision with root package name */
    public int f2487t;

    /* renamed from: v, reason: collision with root package name */
    public final w0 f2488v;

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2471a = new Rect();
        this.f2472b = new Rect();
        c cVar = new c();
        this.f2473c = cVar;
        int i10 = 0;
        this.f2475e = false;
        this.f2476f = new e(0, this);
        this.f2478h = -1;
        this.f2485q = null;
        this.r = false;
        int i11 = 1;
        this.f2486s = true;
        this.f2487t = -1;
        this.f2488v = new w0(this);
        m mVar = new m(this, context);
        this.f2480j = mVar;
        WeakHashMap weakHashMap = b1.f17953a;
        mVar.setId(k0.a());
        this.f2480j.setDescendantFocusability(131072);
        h hVar = new h(this);
        this.f2477g = hVar;
        this.f2480j.setLayoutManager(hVar);
        this.f2480j.setScrollingTouchSlop(1);
        int[] iArr = a.f10559a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        b1.w(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.f2480j.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.f2480j.addOnChildAttachStateChangeListener(new g());
            d dVar = new d(this);
            this.l = dVar;
            this.f2483n = new y(i11, dVar);
            l lVar = new l(this);
            this.f2481k = lVar;
            lVar.a(this.f2480j);
            this.f2480j.addOnScrollListener(this.l);
            c cVar2 = new c();
            this.f2482m = cVar2;
            this.l.f10854a = cVar2;
            f fVar = new f(this, i10);
            f fVar2 = new f(this, i11);
            ((ArrayList) cVar2.f2453b).add(fVar);
            ((ArrayList) this.f2482m.f2453b).add(fVar2);
            w0 w0Var = this.f2488v;
            m mVar2 = this.f2480j;
            w0Var.getClass();
            b1.B(mVar2, 2);
            w0Var.f348d = new e(1, w0Var);
            ViewPager2 viewPager2 = (ViewPager2) w0Var.f349e;
            if (j0.c(viewPager2) == 0) {
                b1.B(viewPager2, 1);
            }
            ((ArrayList) this.f2482m.f2453b).add(cVar);
            b bVar = new b(this.f2477g);
            this.f2484p = bVar;
            ((ArrayList) this.f2482m.f2453b).add(bVar);
            m mVar3 = this.f2480j;
            attachViewToParent(mVar3, 0, mVar3.getLayoutParams());
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a() {
        m1 adapter;
        if (this.f2478h == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.f2479i;
        if (parcelable != null) {
            if (adapter instanceof androidx.viewpager2.adapter.h) {
                ((androidx.viewpager2.adapter.f) ((androidx.viewpager2.adapter.h) adapter)).v(parcelable);
            }
            this.f2479i = null;
        }
        int iMax = Math.max(0, Math.min(this.f2478h, adapter.b() - 1));
        this.f2474d = iMax;
        this.f2478h = -1;
        this.f2480j.scrollToPosition(iMax);
        this.f2488v.g0();
    }

    public final void b(int i10) {
        c cVar;
        m1 adapter = getAdapter();
        if (adapter == null) {
            if (this.f2478h != -1) {
                this.f2478h = Math.max(i10, 0);
                return;
            }
            return;
        }
        if (adapter.b() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i10, 0), adapter.b() - 1);
        int i11 = this.f2474d;
        if ((iMin == i11 && this.l.f10859f == 0) || iMin == i11) {
            return;
        }
        double d10 = i11;
        this.f2474d = iMin;
        this.f2488v.g0();
        d dVar = this.l;
        if (dVar.f10859f != 0) {
            dVar.e();
            m4.c cVar2 = dVar.f10860g;
            double d11 = cVar2.f10852b;
            double d12 = cVar2.f10851a;
            Double.isNaN(d11);
            Double.isNaN(d12);
            d10 = d11 + d12;
        }
        d dVar2 = this.l;
        dVar2.getClass();
        dVar2.f10858e = 2;
        boolean z = dVar2.f10862i != iMin;
        dVar2.f10862i = iMin;
        dVar2.c(2);
        if (z && (cVar = dVar2.f10854a) != null) {
            cVar.c(iMin);
        }
        double d13 = iMin;
        Double.isNaN(d13);
        if (Math.abs(d13 - d10) <= 3.0d) {
            this.f2480j.smoothScrollToPosition(iMin);
            return;
        }
        this.f2480j.scrollToPosition(d13 > d10 ? iMin - 3 : iMin + 3);
        m mVar = this.f2480j;
        mVar.post(new j(iMin, mVar));
    }

    public final void c() {
        l lVar = this.f2481k;
        if (lVar == null) {
            throw new IllegalStateException("Design assumption violated.");
        }
        View viewC = lVar.c(this.f2477g);
        if (viewC == null) {
            return;
        }
        int position = this.f2477g.getPosition(viewC);
        if (position != this.f2474d && getScrollState() == 0) {
            this.f2482m.c(position);
        }
        this.f2475e = false;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i10) {
        return this.f2480j.canScrollHorizontally(i10);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i10) {
        return this.f2480j.canScrollVertically(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof n) {
            int i10 = ((n) parcelable).f10874a;
            sparseArray.put(this.f2480j.getId(), (Parcelable) sparseArray.get(i10));
            sparseArray.remove(i10);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        this.f2488v.getClass();
        this.f2488v.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    public m1 getAdapter() {
        return this.f2480j.getAdapter();
    }

    public int getCurrentItem() {
        return this.f2474d;
    }

    public int getItemDecorationCount() {
        return this.f2480j.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.f2487t;
    }

    public int getOrientation() {
        return this.f2477g.getOrientation() == 1 ? 1 : 0;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        m mVar = this.f2480j;
        if (getOrientation() == 0) {
            height = mVar.getWidth() - mVar.getPaddingLeft();
            paddingBottom = mVar.getPaddingRight();
        } else {
            height = mVar.getHeight() - mVar.getPaddingTop();
            paddingBottom = mVar.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.l.f10859f;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int iB;
        int iB2;
        int iB3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        ViewPager2 viewPager2 = (ViewPager2) this.f2488v.f349e;
        if (viewPager2.getAdapter() == null) {
            iB = 0;
            iB2 = 0;
        } else if (viewPager2.getOrientation() == 1) {
            iB = viewPager2.getAdapter().b();
            iB2 = 1;
        } else {
            iB2 = viewPager2.getAdapter().b();
            iB = 1;
        }
        kh.h hVarB = kh.h.b(iB, iB2, 0, false);
        if (Build.VERSION.SDK_INT >= 19) {
            accessibilityNodeInfo.setCollectionInfo(vb.b.c(hVarB.f10353a));
        }
        m1 adapter = viewPager2.getAdapter();
        if (adapter == null || (iB3 = adapter.b()) == 0 || !viewPager2.f2486s) {
            return;
        }
        if (viewPager2.f2474d > 0) {
            accessibilityNodeInfo.addAction(8192);
        }
        if (viewPager2.f2474d < iB3 - 1) {
            accessibilityNodeInfo.addAction(4096);
        }
        accessibilityNodeInfo.setScrollable(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int measuredWidth = this.f2480j.getMeasuredWidth();
        int measuredHeight = this.f2480j.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f2471a;
        rect.left = paddingLeft;
        rect.right = (i12 - i10) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i13 - i11) - getPaddingBottom();
        Rect rect2 = this.f2472b;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.f2480j.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.f2475e) {
            c();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        measureChild(this.f2480j, i10, i11);
        int measuredWidth = this.f2480j.getMeasuredWidth();
        int measuredHeight = this.f2480j.getMeasuredHeight();
        int measuredState = this.f2480j.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i10, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof n)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        n nVar = (n) parcelable;
        super.onRestoreInstanceState(nVar.getSuperState());
        this.f2478h = nVar.f10875b;
        this.f2479i = nVar.f10876c;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        n nVar = new n(super.onSaveInstanceState());
        nVar.f10874a = this.f2480j.getId();
        int i10 = this.f2478h;
        if (i10 == -1) {
            i10 = this.f2474d;
        }
        nVar.f10875b = i10;
        Parcelable parcelable = this.f2479i;
        if (parcelable != null) {
            nVar.f10876c = parcelable;
        } else {
            Object adapter = this.f2480j.getAdapter();
            if (adapter instanceof androidx.viewpager2.adapter.h) {
                androidx.viewpager2.adapter.f fVar = (androidx.viewpager2.adapter.f) ((androidx.viewpager2.adapter.h) adapter);
                fVar.getClass();
                k kVar = fVar.f2464f;
                int iJ = kVar.j();
                k kVar2 = fVar.f2465g;
                Bundle bundle = new Bundle(kVar2.j() + iJ);
                for (int i11 = 0; i11 < kVar.j(); i11++) {
                    long jG = kVar.g(i11);
                    Fragment fragment = (Fragment) kVar.d(jG);
                    if (fragment != null && fragment.isAdded()) {
                        fVar.f2463e.Q(bundle, q.j(jG, "f#"), fragment);
                    }
                }
                for (int i12 = 0; i12 < kVar2.j(); i12++) {
                    long jG2 = kVar2.g(i12);
                    if (fVar.q(jG2)) {
                        bundle.putParcelable(q.j(jG2, "s#"), (Parcelable) kVar2.d(jG2));
                    }
                }
                nVar.f10876c = bundle;
            }
        }
        return nVar;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i10, Bundle bundle) {
        this.f2488v.getClass();
        if (i10 != 8192 && i10 != 4096) {
            return super.performAccessibilityAction(i10, bundle);
        }
        w0 w0Var = this.f2488v;
        w0Var.getClass();
        if (i10 != 8192 && i10 != 4096) {
            throw new IllegalStateException();
        }
        ViewPager2 viewPager2 = (ViewPager2) w0Var.f349e;
        int currentItem = i10 == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        if (viewPager2.f2486s) {
            viewPager2.b(currentItem);
        }
        return true;
    }

    public void setAdapter(m1 m1Var) {
        m1 adapter = this.f2480j.getAdapter();
        w0 w0Var = this.f2488v;
        if (adapter != null) {
            adapter.f2188a.unregisterObserver((e) w0Var.f348d);
        } else {
            w0Var.getClass();
        }
        e eVar = this.f2476f;
        if (adapter != null) {
            adapter.f2188a.unregisterObserver(eVar);
        }
        this.f2480j.setAdapter(m1Var);
        this.f2474d = 0;
        a();
        w0 w0Var2 = this.f2488v;
        w0Var2.g0();
        if (m1Var != null) {
            m1Var.o((e) w0Var2.f348d);
        }
        if (m1Var != null) {
            m1Var.o(eVar);
        }
    }

    public void setCurrentItem(int i10) {
        Object obj = this.f2483n.f10629b;
        b(i10);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i10) {
        super.setLayoutDirection(i10);
        this.f2488v.g0();
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1 && i10 != -1) {
            throw new IllegalArgumentException("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        }
        this.f2487t = i10;
        this.f2480j.requestLayout();
    }

    public void setOrientation(int i10) {
        this.f2477g.setOrientation(i10);
        this.f2488v.g0();
    }

    public void setPageTransformer(m4.k kVar) {
        if (kVar != null) {
            if (!this.r) {
                this.f2485q = this.f2480j.getItemAnimator();
                this.r = true;
            }
            this.f2480j.setItemAnimator(null);
        } else if (this.r) {
            this.f2480j.setItemAnimator(this.f2485q);
            this.f2485q = null;
            this.r = false;
        }
        this.f2484p.getClass();
        if (kVar == null) {
            return;
        }
        this.f2484p.getClass();
        this.f2484p.getClass();
    }

    public void setUserInputEnabled(boolean z) {
        this.f2486s = z;
        w0 w0Var = this.f2488v;
        w0Var.g0();
        if (Build.VERSION.SDK_INT < 21) {
            ((ViewPager2) w0Var.f349e).sendAccessibilityEvent(2048);
        }
    }
}

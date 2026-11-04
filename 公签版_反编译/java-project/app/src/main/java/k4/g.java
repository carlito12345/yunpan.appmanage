package k4;

import a2.g1;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.activity.h;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.e1;
import androidx.fragment.app.m1;
import androidx.lifecycle.n;
import androidx.recyclerview.widget.o0;
import com.google.android.material.datepicker.i;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import x0.b1;
import x0.j0;
import x9.k2;

/* loaded from: classes.dex */
public abstract class g extends ViewGroup {
    public static final int[] M = {R.attr.layout_gravity};
    public static final a5.a N = new a5.a(8);
    public static final o0 O = new o0(5);
    public static final a5.a P = new a5.a(9);
    public boolean A;
    public int B;
    public ArrayList C;
    public e D;
    public ArrayList E;
    public s9.a F;
    public int G;
    public int H;
    public ArrayList I;
    public final h K;
    public int L;

    /* renamed from: a, reason: collision with root package name */
    public int f10146a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f10147b;

    /* renamed from: c, reason: collision with root package name */
    public final c f10148c;

    /* renamed from: d, reason: collision with root package name */
    public a f10149d;

    /* renamed from: e, reason: collision with root package name */
    public int f10150e;

    /* renamed from: f, reason: collision with root package name */
    public int f10151f;

    /* renamed from: g, reason: collision with root package name */
    public Parcelable f10152g;

    /* renamed from: h, reason: collision with root package name */
    public Scroller f10153h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f10154i;

    /* renamed from: j, reason: collision with root package name */
    public c1.b f10155j;

    /* renamed from: k, reason: collision with root package name */
    public int f10156k;
    public Drawable l;

    /* renamed from: m, reason: collision with root package name */
    public int f10157m;

    /* renamed from: n, reason: collision with root package name */
    public int f10158n;

    /* renamed from: p, reason: collision with root package name */
    public float f10159p;

    /* renamed from: q, reason: collision with root package name */
    public float f10160q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f10161s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f10162t;

    /* renamed from: v, reason: collision with root package name */
    public int f10163v;

    /* renamed from: w, reason: collision with root package name */
    public final int f10164w;

    /* renamed from: x, reason: collision with root package name */
    public final EdgeEffect f10165x;

    /* renamed from: y, reason: collision with root package name */
    public final EdgeEffect f10166y;
    public boolean z;

    public g(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10147b = new ArrayList();
        this.f10148c = new c();
        new Rect();
        this.f10151f = -1;
        this.f10159p = -3.4028235E38f;
        this.f10160q = Float.MAX_VALUE;
        this.f10163v = 1;
        this.z = true;
        this.K = new h(12, this);
        this.L = 0;
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.f10153h = new Scroller(context2, O);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f10 = context2.getResources().getDisplayMetrics().density;
        viewConfiguration.getScaledPagingTouchSlop();
        viewConfiguration.getScaledMaximumFlingVelocity();
        this.f10165x = new EdgeEffect(context2);
        this.f10166y = new EdgeEffect(context2);
        this.f10164w = (int) (f10 * 16.0f);
        b1.x(this, new i(3, this));
        if (j0.c(this) == 0) {
            b1.B(this, 1);
        }
        b1.C(this, new g1(this));
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f10162t != z) {
            this.f10162t = z;
        }
    }

    public final c a(int i10, int i11) {
        c cVar = new c();
        cVar.f10134b = i10;
        k2 k2Var = (k2) this.f10149d;
        androidx.fragment.app.a aVar = k2Var.f18256d;
        e1 e1Var = k2Var.f18254b;
        if (aVar == null) {
            e1Var.getClass();
            k2Var.f18256d = new androidx.fragment.app.a(e1Var);
        }
        long j10 = i10;
        Fragment fragmentC = e1Var.C("android:switcher:" + getId() + ":" + j10);
        if (fragmentC != null) {
            androidx.fragment.app.a aVar2 = k2Var.f18256d;
            aVar2.getClass();
            aVar2.b(new m1(fragmentC, 7));
        } else {
            fragmentC = (Fragment) k2Var.f18260h.get(i10);
            k2Var.f18256d.f(getId(), fragmentC, "android:switcher:" + getId() + ":" + j10, 1);
        }
        if (fragmentC != k2Var.f18257e) {
            fragmentC.setMenuVisibility(false);
            if (k2Var.f18255c == 1) {
                k2Var.f18256d.j(fragmentC, n.STARTED);
            } else {
                fragmentC.setUserVisibleHint(false);
            }
        }
        e1 e1Var2 = k2Var.f18259g;
        e1Var2.getClass();
        androidx.fragment.app.a aVar3 = new androidx.fragment.app.a(e1Var2);
        aVar3.k(fragmentC);
        aVar3.d(true);
        cVar.f10133a = fragmentC;
        this.f10149d.getClass();
        cVar.f10136d = 1.0f;
        ArrayList arrayList = this.f10147b;
        if (i11 < 0 || i11 >= arrayList.size()) {
            arrayList.add(cVar);
        } else {
            arrayList.add(i11, cVar);
        }
        return cVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i10, int i11) {
        c cVarE;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (cVarE = e(childAt)) != null && cVarE.f10134b == this.f10150e) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        c cVarE;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (cVarE = e(childAt)) != null && cVarE.f10134b == this.f10150e) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = new d();
        }
        d dVar = (d) layoutParams;
        boolean z = dVar.f10138a | (view.getClass().getAnnotation(b.class) != null);
        dVar.f10138a = z;
        if (!this.f10161s) {
            super.addView(view, i10, layoutParams);
        } else {
            if (z) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            dVar.f10141d = true;
            addViewInLayout(view, i10, layoutParams);
        }
    }

    public final void b(boolean z) throws SecurityException, IllegalArgumentException {
        boolean z4 = this.L == 2;
        if (z4) {
            setScrollingCacheEnabled(false);
            if (!this.f10153h.isFinished()) {
                this.f10153h.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f10153h.getCurrX();
                int currY = this.f10153h.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        h(currX);
                    }
                }
            }
        }
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f10147b;
            if (i10 >= arrayList.size()) {
                break;
            }
            c cVar = (c) arrayList.get(i10);
            if (cVar.f10135c) {
                cVar.f10135c = false;
                z4 = true;
            }
            i10++;
        }
        if (z4) {
            h hVar = this.K;
            if (!z) {
                hVar.run();
            } else {
                WeakHashMap weakHashMap = b1.f17953a;
                j0.m(this, hVar);
            }
        }
    }

    public final void c() {
        int iC = this.f10149d.c();
        this.f10146a = iC;
        ArrayList arrayList = this.f10147b;
        boolean z = arrayList.size() < (this.f10163v * 2) + 1 && arrayList.size() < iC;
        int i10 = this.f10150e;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            c cVar = (c) arrayList.get(i11);
            a aVar = this.f10149d;
            Fragment fragment = cVar.f10133a;
            aVar.getClass();
        }
        Collections.sort(arrayList, N);
        if (z) {
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                d dVar = (d) getChildAt(i12).getLayoutParams();
                if (!dVar.f10138a) {
                    dVar.f10140c = 0.0f;
                }
            }
            m(i10, false, true);
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i10) {
        if (this.f10149d == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i10 < 0 ? scrollX > ((int) (((float) clientWidth) * this.f10159p)) : i10 > 0 && scrollX < ((int) (((float) clientWidth) * this.f10160q));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof d) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() throws SecurityException, IllegalArgumentException {
        this.f10154i = true;
        if (this.f10153h.isFinished() || !this.f10153h.computeScrollOffset()) {
            b(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f10153h.getCurrX();
        int currY = this.f10153h.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!h(currX)) {
                this.f10153h.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = b1.f17953a;
        j0.k(this);
    }

    public final void d(int i10) {
        e eVar = this.D;
        if (eVar != null) {
            ((p7.i) eVar).b(i10);
        }
        ArrayList arrayList = this.C;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                e eVar2 = (e) this.C.get(i11);
                if (eVar2 != null) {
                    ((p7.i) eVar2).b(i10);
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        c cVarE;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (cVarE = e(childAt)) != null && cVarE.f10134b == this.f10150e && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        a aVar;
        EdgeEffect edgeEffect = this.f10166y;
        EdgeEffect edgeEffect2 = this.f10165x;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (aVar = this.f10149d) != null && aVar.c() > 1)) {
            if (!edgeEffect2.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.f10159p * width);
                edgeEffect2.setSize(height, width);
                zDraw = edgeEffect2.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!edgeEffect.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f10160q + 1.0f)) * width2);
                edgeEffect.setSize(height2, width2);
                zDraw |= edgeEffect.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            edgeEffect2.finish();
            edgeEffect.finish();
        }
        if (zDraw) {
            WeakHashMap weakHashMap = b1.f17953a;
            j0.k(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.l;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final c e(View view) {
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f10147b;
            if (i10 >= arrayList.size()) {
                return null;
            }
            c cVar = (c) arrayList.get(i10);
            a aVar = this.f10149d;
            Fragment fragment = cVar.f10133a;
            ((k2) aVar).getClass();
            if (fragment.getView() == view) {
                return cVar;
            }
            i10++;
        }
    }

    public final c f(int i10) {
        int i11 = 0;
        while (true) {
            ArrayList arrayList = this.f10147b;
            if (i11 >= arrayList.size()) {
                return null;
            }
            c cVar = (c) arrayList.get(i11);
            if (cVar.f10134b == i10) {
                return cVar;
            }
            i11++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(int i10, float f10, int i11) {
        int iMax;
        int width;
        int left;
        if (this.B > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.f10138a) {
                    int i13 = dVar.f10139b & 7;
                    if (i13 != 1) {
                        if (i13 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i13 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i14 = iMax;
                    width = paddingLeft;
                    paddingLeft = i14;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                    }
                    paddingLeft = width;
                }
            }
        }
        e eVar = this.D;
        if (eVar != null) {
            ((p7.i) eVar).a(f10, i10);
        }
        ArrayList arrayList = this.C;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i15 = 0; i15 < size; i15++) {
                e eVar2 = (e) this.C.get(i15);
                if (eVar2 != null) {
                    ((p7.i) eVar2).a(f10, i10);
                }
            }
        }
        if (this.F != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i16 = 0; i16 < childCount2; i16++) {
                View childAt2 = getChildAt(i16);
                if (!((d) childAt2.getLayoutParams()).f10138a) {
                    childAt2.getLeft();
                    getClientWidth();
                    this.F.getClass();
                }
            }
        }
        this.A = true;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new d();
    }

    public a getAdapter() {
        return this.f10149d;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i10, int i11) {
        if (this.H == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((d) ((View) this.I.get(i11)).getLayoutParams()).f10143f;
    }

    public int getCurrentItem() {
        return this.f10150e;
    }

    public int getOffscreenPageLimit() {
        return this.f10163v;
    }

    public int getPageMargin() {
        return this.f10156k;
    }

    public final boolean h(int i10) {
        c cVar;
        int i11;
        ArrayList arrayList = this.f10147b;
        float f10 = 0.0f;
        if (arrayList.size() == 0) {
            if (this.z) {
                return false;
            }
            this.A = false;
            g(0, 0.0f, 0);
            if (this.A) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f11 = clientWidth > 0 ? this.f10156k / clientWidth : 0.0f;
        c cVar2 = null;
        float f12 = 0.0f;
        int i12 = -1;
        int i13 = 0;
        boolean z = true;
        while (i13 < arrayList.size()) {
            c cVar3 = (c) arrayList.get(i13);
            if (z || cVar3.f10134b == (i11 = i12 + 1)) {
                cVar = cVar3;
            } else {
                float f13 = f10 + f12 + f11;
                c cVar4 = this.f10148c;
                cVar4.f10137e = f13;
                cVar4.f10134b = i11;
                this.f10149d.getClass();
                cVar4.f10136d = 1.0f;
                i13--;
                cVar = cVar4;
            }
            f10 = cVar.f10137e;
            float f14 = cVar.f10136d + f10 + f11;
            if (!z && scrollX < f10) {
                break;
            }
            if (scrollX < f14 || i13 == arrayList.size() - 1) {
                cVar2 = cVar;
                break;
            }
            int i14 = cVar.f10134b;
            float f15 = cVar.f10136d;
            i13++;
            z = false;
            c cVar5 = cVar;
            i12 = i14;
            f12 = f15;
            cVar2 = cVar5;
        }
        int clientWidth2 = getClientWidth();
        int i15 = this.f10156k;
        int i16 = clientWidth2 + i15;
        float f16 = clientWidth2;
        int i17 = cVar2.f10134b;
        float f17 = ((i10 / f16) - cVar2.f10137e) / (cVar2.f10136d + (i15 / f16));
        this.A = false;
        g(i17, f17, (int) (i16 * f17));
        if (this.A) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    public final void i() {
        j(this.f10150e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005c, code lost:
    
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9 A[PHI: r7 r11 r16
  0x00b9: PHI (r7v19 int) = (r7v18 int), (r7v6 int), (r7v22 int) binds: [B:59:0x00dd, B:56:0x00c8, B:48:0x00b0] A[DONT_GENERATE, DONT_INLINE]
  0x00b9: PHI (r11v32 int) = (r11v1 int), (r11v31 int), (r11v35 int) binds: [B:59:0x00dd, B:56:0x00c8, B:48:0x00b0] A[DONT_GENERATE, DONT_INLINE]
  0x00b9: PHI (r16v4 float) = (r16v2 float), (r16v3 float), (r16v1 float) binds: [B:59:0x00dd, B:56:0x00c8, B:48:0x00b0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0138 A[PHI: r3 r12
  0x0138: PHI (r3v28 float) = (r3v26 float), (r3v27 float), (r3v25 float) binds: [B:93:0x015f, B:90:0x0149, B:83:0x012f] A[DONT_GENERATE, DONT_INLINE]
  0x0138: PHI (r12v25 int) = (r12v23 int), (r12v24 int), (r12v22 int) binds: [B:93:0x015f, B:90:0x0149, B:83:0x012f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(int i10) throws Resources.NotFoundException {
        c cVarF;
        String hexString;
        ArrayList arrayList;
        c cVarA;
        c cVarE;
        c cVarE2;
        int i11;
        int i12;
        c cVar;
        c cVar2;
        c cVar3;
        int i13 = this.f10150e;
        if (i13 != i10) {
            cVarF = f(i13);
            this.f10150e = i10;
        } else {
            cVarF = null;
        }
        if (this.f10149d == null) {
            o();
            return;
        }
        if (getWindowToken() == null) {
            return;
        }
        this.f10149d.e(this);
        int i14 = this.f10163v;
        int iMax = Math.max(0, this.f10150e - i14);
        int iC = this.f10149d.c();
        int iMin = Math.min(iC - 1, this.f10150e + i14);
        if (iC != this.f10146a) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f10146a + ", found: " + iC + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f10149d.getClass());
        }
        int i15 = 0;
        while (true) {
            arrayList = this.f10147b;
            if (i15 >= arrayList.size()) {
                break;
            }
            cVarA = (c) arrayList.get(i15);
            int i16 = cVarA.f10134b;
            int i17 = this.f10150e;
            if (i16 >= i17) {
                if (i16 != i17) {
                    break;
                }
            } else {
                i15++;
            }
        }
        if (cVarA == null && iC > 0) {
            cVarA = a(this.f10150e, i15);
        }
        if (cVarA != null) {
            int i18 = i15 - 1;
            c cVar4 = i18 >= 0 ? (c) arrayList.get(i18) : null;
            int clientWidth = getClientWidth();
            float paddingLeft = clientWidth <= 0 ? 0.0f : (getPaddingLeft() / clientWidth) + (2.0f - cVarA.f10136d);
            float f10 = 0.0f;
            for (int i19 = this.f10150e - 1; i19 >= 0; i19--) {
                if (f10 >= paddingLeft && i19 < iMax) {
                    if (cVar4 == null) {
                        break;
                    }
                    if (i19 == cVar4.f10134b && !cVar4.f10135c) {
                        arrayList.remove(i18);
                        this.f10149d.a(i19);
                        i18--;
                        i15--;
                        if (i18 >= 0) {
                            cVar3 = (c) arrayList.get(i18);
                        }
                        cVar4 = cVar3;
                    }
                } else if (cVar4 == null || i19 != cVar4.f10134b) {
                    f10 += a(i19, i18 + 1).f10136d;
                    i15++;
                    cVar3 = i18 >= 0 ? (c) arrayList.get(i18) : null;
                    cVar4 = cVar3;
                } else {
                    f10 += cVar4.f10136d;
                    i18--;
                    if (i18 >= 0) {
                        cVar3 = (c) arrayList.get(i18);
                    }
                    cVar4 = cVar3;
                }
            }
            float f11 = cVarA.f10136d;
            int i20 = i15 + 1;
            if (f11 < 2.0f) {
                c cVar5 = i20 < arrayList.size() ? (c) arrayList.get(i20) : null;
                float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                int i21 = i20;
                for (int i22 = this.f10150e + 1; i22 < iC; i22++) {
                    if (f11 >= paddingRight && i22 > iMin) {
                        if (cVar5 == null) {
                            break;
                        }
                        if (i22 == cVar5.f10134b && !cVar5.f10135c) {
                            arrayList.remove(i21);
                            this.f10149d.a(i22);
                            if (i21 < arrayList.size()) {
                                cVar5 = (c) arrayList.get(i21);
                            }
                        }
                    } else if (cVar5 == null || i22 != cVar5.f10134b) {
                        c cVarA2 = a(i22, i21);
                        i21++;
                        f11 += cVarA2.f10136d;
                        cVar5 = i21 < arrayList.size() ? (c) arrayList.get(i21) : null;
                    } else {
                        f11 += cVar5.f10136d;
                        i21++;
                        if (i21 < arrayList.size()) {
                            cVar5 = (c) arrayList.get(i21);
                        }
                    }
                }
            }
            int iC2 = this.f10149d.c();
            int clientWidth2 = getClientWidth();
            float f12 = clientWidth2 > 0 ? this.f10156k / clientWidth2 : 0.0f;
            if (cVarF != null) {
                int i23 = cVarF.f10134b;
                int i24 = cVarA.f10134b;
                if (i23 < i24) {
                    float f13 = cVarF.f10137e + cVarF.f10136d + f12;
                    int i25 = i23 + 1;
                    int i26 = 0;
                    while (i25 <= cVarA.f10134b && i26 < arrayList.size()) {
                        Object obj = arrayList.get(i26);
                        while (true) {
                            cVar2 = (c) obj;
                            if (i25 <= cVar2.f10134b || i26 >= arrayList.size() - 1) {
                                break;
                            }
                            i26++;
                            obj = arrayList.get(i26);
                        }
                        while (i25 < cVar2.f10134b) {
                            this.f10149d.getClass();
                            f13 += 1.0f + f12;
                            i25++;
                        }
                        cVar2.f10137e = f13;
                        f13 += cVar2.f10136d + f12;
                        i25++;
                    }
                } else if (i23 > i24) {
                    int size = arrayList.size() - 1;
                    float f14 = cVarF.f10137e;
                    int i27 = i23 - 1;
                    while (i27 >= cVarA.f10134b && size >= 0) {
                        Object obj2 = arrayList.get(size);
                        while (true) {
                            cVar = (c) obj2;
                            if (i27 >= cVar.f10134b || size <= 0) {
                                break;
                            }
                            size--;
                            obj2 = arrayList.get(size);
                        }
                        while (i27 > cVar.f10134b) {
                            this.f10149d.getClass();
                            f14 -= 1.0f + f12;
                            i27--;
                        }
                        f14 -= cVar.f10136d + f12;
                        cVar.f10137e = f14;
                        i27--;
                    }
                }
            }
            int size2 = arrayList.size();
            float f15 = cVarA.f10137e;
            int i28 = cVarA.f10134b;
            int i29 = i28 - 1;
            this.f10159p = i28 == 0 ? f15 : -3.4028235E38f;
            int i30 = iC2 - 1;
            this.f10160q = i28 == i30 ? (cVarA.f10136d + f15) - 1.0f : Float.MAX_VALUE;
            int i31 = i15 - 1;
            while (i31 >= 0) {
                c cVar6 = (c) arrayList.get(i31);
                while (true) {
                    i12 = cVar6.f10134b;
                    if (i29 <= i12) {
                        break;
                    }
                    i29--;
                    this.f10149d.getClass();
                    f15 -= 1.0f + f12;
                }
                f15 -= cVar6.f10136d + f12;
                cVar6.f10137e = f15;
                if (i12 == 0) {
                    this.f10159p = f15;
                }
                i31--;
                i29--;
            }
            float f16 = cVarA.f10137e + cVarA.f10136d + f12;
            int i32 = cVarA.f10134b + 1;
            while (i20 < size2) {
                c cVar7 = (c) arrayList.get(i20);
                while (true) {
                    i11 = cVar7.f10134b;
                    if (i32 >= i11) {
                        break;
                    }
                    i32++;
                    this.f10149d.getClass();
                    f16 += 1.0f + f12;
                }
                if (i11 == i30) {
                    this.f10160q = (cVar7.f10136d + f16) - 1.0f;
                }
                cVar7.f10137e = f16;
                f16 += cVar7.f10136d + f12;
                i20++;
                i32++;
            }
            a aVar = this.f10149d;
            Fragment fragment = cVarA.f10133a;
            k2 k2Var = (k2) aVar;
            k2Var.getClass();
            Fragment fragment2 = k2Var.f18257e;
            if (fragment != fragment2) {
                e1 e1Var = k2Var.f18254b;
                int i33 = k2Var.f18255c;
                if (fragment2 != null) {
                    fragment2.setMenuVisibility(false);
                    if (i33 == 1) {
                        if (k2Var.f18256d == null) {
                            e1Var.getClass();
                            k2Var.f18256d = new androidx.fragment.app.a(e1Var);
                        }
                        k2Var.f18256d.j(k2Var.f18257e, n.STARTED);
                    } else {
                        k2Var.f18257e.setUserVisibleHint(false);
                    }
                }
                fragment.setMenuVisibility(true);
                if (i33 == 1) {
                    if (k2Var.f18256d == null) {
                        e1Var.getClass();
                        k2Var.f18256d = new androidx.fragment.app.a(e1Var);
                    }
                    k2Var.f18256d.j(fragment, n.RESUMED);
                } else {
                    fragment.setUserVisibleHint(true);
                }
                k2Var.f18257e = fragment;
            }
        }
        this.f10149d.b();
        int childCount = getChildCount();
        for (int i34 = 0; i34 < childCount; i34++) {
            View childAt = getChildAt(i34);
            d dVar = (d) childAt.getLayoutParams();
            dVar.f10143f = i34;
            if (!dVar.f10138a && dVar.f10140c == 0.0f && (cVarE2 = e(childAt)) != null) {
                dVar.f10140c = cVarE2.f10136d;
                dVar.f10142e = cVarE2.f10134b;
            }
        }
        o();
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus != null) {
                while (true) {
                    Object parent = viewFindFocus.getParent();
                    if (parent == this) {
                        cVarE = e(viewFindFocus);
                        break;
                    } else if (parent == null || !(parent instanceof View)) {
                        break;
                    } else {
                        viewFindFocus = (View) parent;
                    }
                }
                cVarE = null;
            } else {
                cVarE = null;
            }
            if (cVarE == null || cVarE.f10134b != this.f10150e) {
                for (int i35 = 0; i35 < getChildCount(); i35++) {
                    View childAt2 = getChildAt(i35);
                    c cVarE3 = e(childAt2);
                    if (cVarE3 != null && cVarE3.f10134b == this.f10150e && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    public final void k(int i10, int i11, int i12, int i13) throws SecurityException, IllegalArgumentException {
        if (i11 > 0 && !this.f10147b.isEmpty()) {
            if (!this.f10153h.isFinished()) {
                this.f10153h.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        c cVarF = f(this.f10150e);
        int iMin = (int) ((cVarF != null ? Math.min(cVarF.f10137e, this.f10160q) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            b(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public final void l(int i10, boolean z, boolean z4) throws SecurityException, IllegalArgumentException {
        int scrollX;
        int iAbs;
        c cVarF = f(i10);
        int iMax = cVarF != null ? (int) (Math.max(this.f10159p, Math.min(cVarF.f10137e, this.f10160q)) * getClientWidth()) : 0;
        if (!z) {
            if (z4) {
                d(i10);
            }
            b(false);
            scrollTo(iMax, 0);
            h(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.f10153h;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                scrollX = this.f10154i ? this.f10153h.getCurrX() : this.f10153h.getStartX();
                this.f10153h.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i11 = scrollX;
            int scrollY = getScrollY();
            int i12 = iMax - i11;
            int i13 = 0 - scrollY;
            if (i12 == 0 && i13 == 0) {
                b(false);
                i();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i14 = clientWidth / 2;
                float f10 = clientWidth;
                float f11 = i14;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i12) * 1.0f) / f10) - 0.5f) * 0.47123894f)) * f11) + f11;
                int iAbs2 = Math.abs(0);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.f10149d.getClass();
                    iAbs = (int) (((Math.abs(i12) / ((f10 * 1.0f) + this.f10156k)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.f10154i = false;
                this.f10153h.startScroll(i11, scrollY, i12, i13, iMin);
                WeakHashMap weakHashMap = b1.f17953a;
                j0.k(this);
            }
        }
        if (z4) {
            d(i10);
        }
    }

    public final void m(int i10, boolean z, boolean z4) throws Resources.NotFoundException, SecurityException, IllegalArgumentException {
        a aVar = this.f10149d;
        if (aVar == null || aVar.c() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.f10147b;
        if (!z4 && this.f10150e == i10 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i10 < 0) {
            i10 = 0;
        } else if (i10 >= this.f10149d.c()) {
            i10 = this.f10149d.c() - 1;
        }
        int i11 = this.f10163v;
        int i12 = this.f10150e;
        if (i10 > i12 + i11 || i10 < i12 - i11) {
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                ((c) arrayList.get(i13)).f10135c = true;
            }
        }
        boolean z10 = this.f10150e != i10;
        if (!this.z) {
            j(i10);
            l(i10, z, z10);
        } else {
            this.f10150e = i10;
            if (z10) {
                d(i10);
            }
            requestLayout();
        }
    }

    public final void n(s9.a aVar) {
        boolean z = this.F == null;
        this.F = aVar;
        setChildrenDrawingOrderEnabled(true);
        this.H = 2;
        this.G = 2;
        if (z) {
            i();
        }
    }

    public final void o() {
        if (this.H != 0) {
            ArrayList arrayList = this.I;
            if (arrayList == null) {
                this.I = new ArrayList();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.I.add(getChildAt(i10));
            }
            Collections.sort(this.I, P);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.z = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.K);
        Scroller scroller = this.f10153h;
        if (scroller != null && !scroller.isFinished()) {
            this.f10153h.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i10;
        float f10;
        ArrayList arrayList;
        float f11;
        super.onDraw(canvas);
        if (this.f10156k <= 0 || this.l == null) {
            return;
        }
        ArrayList arrayList2 = this.f10147b;
        if (arrayList2.size() <= 0 || this.f10149d == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f12 = this.f10156k / width;
        int i11 = 0;
        c cVar = (c) arrayList2.get(0);
        float f13 = cVar.f10137e;
        int size = arrayList2.size();
        int i12 = cVar.f10134b;
        int i13 = ((c) arrayList2.get(size - 1)).f10134b;
        while (i12 < i13) {
            while (true) {
                i10 = cVar.f10134b;
                if (i12 <= i10 || i11 >= size) {
                    break;
                }
                i11++;
                cVar = (c) arrayList2.get(i11);
            }
            if (i12 == i10) {
                float f14 = cVar.f10137e;
                float f15 = cVar.f10136d;
                f10 = (f14 + f15) * width;
                f13 = f14 + f15 + f12;
            } else {
                this.f10149d.getClass();
                f10 = (f13 + 1.0f) * width;
                f13 = 1.0f + f12 + f13;
            }
            if (this.f10156k + f10 > scrollX) {
                arrayList = arrayList2;
                f11 = f12;
                this.l.setBounds(Math.round(f10), this.f10157m, Math.round(this.f10156k + f10), this.f10158n);
                this.l.draw(canvas);
            } else {
                arrayList = arrayList2;
                f11 = f12;
            }
            if (f10 > scrollX + r3) {
                return;
            }
            i12++;
            arrayList2 = arrayList;
            f12 = f11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) throws SecurityException, IllegalArgumentException {
        boolean z4;
        c cVarE;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i14 = i12 - i10;
        int i15 = i13 - i11;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            if (childAt.getVisibility() != 8) {
                d dVar = (d) childAt.getLayoutParams();
                if (dVar.f10138a) {
                    int i18 = dVar.f10139b;
                    int i19 = i18 & 7;
                    int i20 = i18 & 112;
                    if (i19 != 1) {
                        if (i19 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i19 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i14 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i20 == 16) {
                            if (i20 == 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i20 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i15 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i21 = paddingLeft + scrollX;
                            childAt.layout(i21, paddingTop, childAt.getMeasuredWidth() + i21, childAt.getMeasuredHeight() + paddingTop);
                            i16++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i15 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i22 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i22;
                        int i212 = paddingLeft + scrollX;
                        childAt.layout(i212, paddingTop, childAt.getMeasuredWidth() + i212, childAt.getMeasuredHeight() + paddingTop);
                        i16++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i14 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i23 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i23;
                    if (i20 == 16) {
                    }
                    int i222 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i222;
                    int i2122 = paddingLeft + scrollX;
                    childAt.layout(i2122, paddingTop, childAt.getMeasuredWidth() + i2122, childAt.getMeasuredHeight() + paddingTop);
                    i16++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i24 = (i14 - paddingLeft) - paddingRight;
        for (int i25 = 0; i25 < childCount; i25++) {
            View childAt2 = getChildAt(i25);
            if (childAt2.getVisibility() != 8) {
                d dVar2 = (d) childAt2.getLayoutParams();
                if (!dVar2.f10138a && (cVarE = e(childAt2)) != null) {
                    float f10 = i24;
                    int i26 = ((int) (cVarE.f10137e * f10)) + paddingLeft;
                    if (dVar2.f10141d) {
                        dVar2.f10141d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f10 * dVar2.f10140c), 1073741824), View.MeasureSpec.makeMeasureSpec((i15 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i26, paddingTop, childAt2.getMeasuredWidth() + i26, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f10157m = paddingTop;
        this.f10158n = i15 - paddingBottom;
        this.B = i16;
        if (this.z) {
            z4 = false;
            l(this.f10150e, false, false);
        } else {
            z4 = false;
        }
        this.z = z4;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onMeasure(int i10, int i11) {
        d dVar;
        d dVar2;
        int i12;
        int i13;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        Math.min(measuredWidth / 10, this.f10164w);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i14 = 0;
        while (true) {
            boolean z = true;
            int i15 = 1073741824;
            if (i14 >= childCount) {
                break;
            }
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8 && (dVar2 = (d) childAt.getLayoutParams()) != null && dVar2.f10138a) {
                int i16 = dVar2.f10139b;
                int i17 = i16 & 7;
                int i18 = i16 & 112;
                boolean z4 = i18 == 48 || i18 == 80;
                if (i17 != 3 && i17 != 5) {
                    z = false;
                }
                int i19 = Integer.MIN_VALUE;
                if (z4) {
                    i19 = 1073741824;
                } else {
                    int i20 = z ? 1073741824 : Integer.MIN_VALUE;
                    i12 = ((ViewGroup.LayoutParams) dVar2).width;
                    if (i12 == -2) {
                        if (i12 == -1) {
                            i12 = paddingLeft;
                        }
                        i19 = 1073741824;
                    } else {
                        i12 = paddingLeft;
                    }
                    i13 = ((ViewGroup.LayoutParams) dVar2).height;
                    if (i13 != -2) {
                        i13 = measuredHeight;
                        i15 = i20;
                    } else if (i13 == -1) {
                        i13 = measuredHeight;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i12, i19), View.MeasureSpec.makeMeasureSpec(i13, i15));
                    if (!z4) {
                        measuredHeight -= childAt.getMeasuredHeight();
                    } else if (z) {
                        paddingLeft -= childAt.getMeasuredWidth();
                    }
                }
                i12 = ((ViewGroup.LayoutParams) dVar2).width;
                if (i12 == -2) {
                }
                i13 = ((ViewGroup.LayoutParams) dVar2).height;
                if (i13 != -2) {
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i12, i19), View.MeasureSpec.makeMeasureSpec(i13, i15));
                if (!z4) {
                }
            }
            i14++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.r = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f10161s = true;
        i();
        this.f10161s = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((dVar = (d) childAt2.getLayoutParams()) == null || !dVar.f10138a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * dVar.f10140c), 1073741824), this.r);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        c cVarE;
        int childCount = getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (cVarE = e(childAt)) != null && cVarE.f10134b == this.f10150e && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i13;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException, SecurityException, IllegalArgumentException {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.f4709a);
        if (this.f10149d != null) {
            m(fVar.f10144c, false, true);
        } else {
            this.f10151f = fVar.f10144c;
            this.f10152g = fVar.f10145d;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        fVar.f10144c = this.f10150e;
        a aVar = this.f10149d;
        if (aVar != null) {
            aVar.getClass();
            fVar.f10145d = null;
        }
        return fVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i10, int i11, int i12, int i13) throws SecurityException, IllegalArgumentException {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.f10156k;
            k(i10, i12, i14, i14);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.f10161s) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(a aVar) throws Resources.NotFoundException, SecurityException, IllegalArgumentException {
        ArrayList arrayList;
        a aVar2 = this.f10149d;
        if (aVar2 != null) {
            synchronized (aVar2) {
            }
            this.f10149d.e(this);
            int i10 = 0;
            while (true) {
                arrayList = this.f10147b;
                if (i10 >= arrayList.size()) {
                    break;
                }
                this.f10149d.a(((c) arrayList.get(i10)).f10134b);
                i10++;
            }
            this.f10149d.b();
            arrayList.clear();
            int i11 = 0;
            while (i11 < getChildCount()) {
                if (!((d) getChildAt(i11).getLayoutParams()).f10138a) {
                    removeViewAt(i11);
                    i11--;
                }
                i11++;
            }
            this.f10150e = 0;
            scrollTo(0, 0);
        }
        this.f10149d = aVar;
        this.f10146a = 0;
        if (aVar != null) {
            if (this.f10155j == null) {
                this.f10155j = new c1.b(1, this);
            }
            this.f10149d.d();
            boolean z = this.z;
            this.z = true;
            this.f10146a = this.f10149d.c();
            if (this.f10151f >= 0) {
                this.f10149d.getClass();
                m(this.f10151f, false, true);
                this.f10151f = -1;
            } else if (z) {
                requestLayout();
            } else {
                i();
            }
        }
        ArrayList arrayList2 = this.E;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.E.size();
        for (int i12 = 0; i12 < size; i12++) {
            p7.c cVar = (p7.c) this.E.get(i12);
            TabLayout tabLayout = cVar.f12579b;
            if (tabLayout.R == this) {
                tabLayout.k(aVar, cVar.f12578a);
            }
        }
    }

    public void setCurrentItem(int i10) {
        m(i10, !this.z, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 < 1) {
            i10 = 1;
        }
        if (i10 != this.f10163v) {
            this.f10163v = i10;
            i();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(e eVar) {
        this.D = eVar;
    }

    public void setPageMargin(int i10) throws SecurityException, IllegalArgumentException {
        int i11 = this.f10156k;
        this.f10156k = i10;
        int width = getWidth();
        k(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.l = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i10) {
        if (this.L == i10) {
            return;
        }
        this.L = i10;
        if (this.F != null) {
            boolean z = i10 != 0;
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                getChildAt(i11).setLayerType(z ? this.G : 0, null);
            }
        }
        e eVar = this.D;
        if (eVar != null) {
            p7.i iVar = (p7.i) eVar;
            iVar.f12593b = iVar.f12594c;
            iVar.f12594c = i10;
            TabLayout tabLayout = (TabLayout) iVar.f12592a.get();
            if (tabLayout != null) {
                tabLayout.M0 = iVar.f12594c;
            }
        }
        ArrayList arrayList = this.C;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                e eVar2 = (e) this.C.get(i12);
                if (eVar2 != null) {
                    p7.i iVar2 = (p7.i) eVar2;
                    iVar2.f12593b = iVar2.f12594c;
                    iVar2.f12594c = i10;
                    TabLayout tabLayout2 = (TabLayout) iVar2.f12592a.get();
                    if (tabLayout2 != null) {
                        tabLayout2.M0 = iVar2.f12594c;
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.l;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new d(getContext(), attributeSet);
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(n0.g.e(getContext(), i10));
    }
}

package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import com.yunpan.appmanage.R;
import eb.j;
import h4.q;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import q.m0;
import v.k;
import w.i3;
import w.l1;
import w.m1;
import w.n3;
import w.u3;
import x0.a2;
import x0.b1;
import x0.g2;
import x0.j0;
import x0.j2;
import x0.p0;
import x0.u;
import x0.v;
import x0.w;
import x0.x1;
import x0.y1;
import x0.z1;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements l1, w, u, v {
    public static final int[] H = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};
    public w.c A;
    public OverScroller B;
    public ViewPropertyAnimator C;
    public final q D;
    public final w.b E;
    public final w.b F;
    public final j G;

    /* renamed from: a, reason: collision with root package name */
    public int f930a;

    /* renamed from: b, reason: collision with root package name */
    public int f931b;

    /* renamed from: c, reason: collision with root package name */
    public ContentFrameLayout f932c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContainer f933d;

    /* renamed from: e, reason: collision with root package name */
    public m1 f934e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f935f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f936g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f937h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f938i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f939j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f940k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f941m;

    /* renamed from: n, reason: collision with root package name */
    public final Rect f942n;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f943p;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f944q;
    public final Rect r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f945s;

    /* renamed from: t, reason: collision with root package name */
    public final Rect f946t;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f947v;

    /* renamed from: w, reason: collision with root package name */
    public j2 f948w;

    /* renamed from: x, reason: collision with root package name */
    public j2 f949x;

    /* renamed from: y, reason: collision with root package name */
    public j2 f950y;
    public j2 z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f931b = 0;
        this.f942n = new Rect();
        this.f943p = new Rect();
        this.f944q = new Rect();
        this.r = new Rect();
        this.f945s = new Rect();
        this.f946t = new Rect();
        this.f947v = new Rect();
        j2 j2Var = j2.f18005b;
        this.f948w = j2Var;
        this.f949x = j2Var;
        this.f950y = j2Var;
        this.z = j2Var;
        this.D = new q(4, this);
        this.E = new w.b(this, 0);
        this.F = new w.b(this, 1);
        i(context);
        this.G = new j();
    }

    public static boolean g(View view, Rect rect, boolean z) {
        boolean z4;
        w.d dVar = (w.d) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) dVar).leftMargin;
        int i11 = rect.left;
        if (i10 != i11) {
            ((ViewGroup.MarginLayoutParams) dVar).leftMargin = i11;
            z4 = true;
        } else {
            z4 = false;
        }
        int i12 = ((ViewGroup.MarginLayoutParams) dVar).topMargin;
        int i13 = rect.top;
        if (i12 != i13) {
            ((ViewGroup.MarginLayoutParams) dVar).topMargin = i13;
            z4 = true;
        }
        int i14 = ((ViewGroup.MarginLayoutParams) dVar).rightMargin;
        int i15 = rect.right;
        if (i14 != i15) {
            ((ViewGroup.MarginLayoutParams) dVar).rightMargin = i15;
            z4 = true;
        }
        if (z) {
            int i16 = ((ViewGroup.MarginLayoutParams) dVar).bottomMargin;
            int i17 = rect.bottom;
            if (i16 != i17) {
                ((ViewGroup.MarginLayoutParams) dVar).bottomMargin = i17;
                return true;
            }
        }
        return z4;
    }

    @Override // x0.u
    public final void a(int i10, View view) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // x0.v
    public final void b(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        c(view, i10, i11, i12, i13, i14);
    }

    @Override // x0.u
    public final void c(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof w.d;
    }

    @Override // x0.u
    public final boolean d(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f935f == null || this.f936g) {
            return;
        }
        if (this.f933d.getVisibility() == 0) {
            translationY = (int) (this.f933d.getTranslationY() + this.f933d.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f935f.setBounds(0, translationY, getWidth(), this.f935f.getIntrinsicHeight() + translationY);
        this.f935f.draw(canvas);
    }

    @Override // x0.u
    public final void e(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // x0.u
    public final void f(View view, int i10, int i11, int[] iArr, int i12) {
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        k();
        boolean zG = g(this.f933d, rect, false);
        Rect rect2 = this.r;
        rect2.set(rect);
        Method method = u3.f17278a;
        Rect rect3 = this.f942n;
        if (method != null) {
            try {
                method.invoke(this, rect2, rect3);
            } catch (Exception unused) {
            }
        }
        Rect rect4 = this.f945s;
        if (!rect4.equals(rect2)) {
            rect4.set(rect2);
            zG = true;
        }
        Rect rect5 = this.f943p;
        if (!rect5.equals(rect3)) {
            rect5.set(rect3);
            zG = true;
        }
        if (zG) {
            requestLayout();
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new w.d();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new w.d(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f933d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        j jVar = this.G;
        return jVar.f4864b | jVar.f4863a;
    }

    public CharSequence getTitle() {
        k();
        return ((n3) this.f934e).f17162a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.E);
        removeCallbacks(this.F);
        ViewPropertyAnimator viewPropertyAnimator = this.C;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(H);
        this.f930a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f935f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f936g = context.getApplicationInfo().targetSdkVersion < 19;
        this.B = new OverScroller(context);
    }

    public final void j(int i10) {
        k();
        if (i10 == 2) {
            this.f934e.getClass();
        } else if (i10 == 5) {
            this.f934e.getClass();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        m1 wrapper;
        if (this.f932c == null) {
            this.f932c = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f933d = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof m1) {
                wrapper = (m1) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f934e = wrapper;
        }
    }

    public final void l(k kVar, v.w wVar) {
        k();
        n3 n3Var = (n3) this.f934e;
        w.j jVar = n3Var.f17173m;
        Toolbar toolbar = n3Var.f17162a;
        if (jVar == null) {
            n3Var.f17173m = new w.j(toolbar.getContext());
        }
        w.j jVar2 = n3Var.f17173m;
        jVar2.f17112e = wVar;
        if (kVar == null && toolbar.f986a == null) {
            return;
        }
        toolbar.e();
        k kVar2 = toolbar.f986a.f951q;
        if (kVar2 == kVar) {
            return;
        }
        if (kVar2 != null) {
            kVar2.r(toolbar.N);
            kVar2.r(toolbar.O);
        }
        if (toolbar.O == null) {
            toolbar.O = new i3(toolbar);
        }
        jVar2.r = true;
        if (kVar != null) {
            kVar.b(jVar2, toolbar.f995j);
            kVar.b(toolbar.O, toolbar.f995j);
        } else {
            jVar2.f(toolbar.f995j, null);
            toolbar.O.f(toolbar.f995j, null);
            jVar2.g();
            toolbar.O.g();
        }
        toolbar.f986a.setPopupTheme(toolbar.f996k);
        toolbar.f986a.setPresenter(jVar2);
        toolbar.N = jVar2;
        toolbar.v();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        j2 j2VarH = j2.h(this, windowInsets);
        boolean zG = g(this.f933d, new Rect(j2VarH.b(), j2VarH.d(), j2VarH.c(), j2VarH.a()), false);
        WeakHashMap weakHashMap = b1.f17953a;
        int i10 = Build.VERSION.SDK_INT;
        Rect rect = this.f942n;
        if (i10 >= 21) {
            p0.b(this, j2VarH, rect);
        }
        int i11 = rect.left;
        int i12 = rect.top;
        int i13 = rect.right;
        int i14 = rect.bottom;
        g2 g2Var = j2VarH.f18006a;
        j2 j2VarL = g2Var.l(i11, i12, i13, i14);
        this.f948w = j2VarL;
        boolean z = true;
        if (!this.f949x.equals(j2VarL)) {
            this.f949x = this.f948w;
            zG = true;
        }
        Rect rect2 = this.f943p;
        if (rect2.equals(rect)) {
            z = zG;
        } else {
            rect2.set(rect);
        }
        if (z) {
            requestLayout();
        }
        return g2Var.a().f18006a.c().f18006a.b().g();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        b1.v(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                w.d dVar = (w.d) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) dVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) dVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int measuredHeight;
        k();
        measureChildWithMargins(this.f933d, i10, 0, i11, 0);
        w.d dVar = (w.d) this.f933d.getLayoutParams();
        int iMax = Math.max(0, this.f933d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) dVar).leftMargin + ((ViewGroup.MarginLayoutParams) dVar).rightMargin);
        int iMax2 = Math.max(0, this.f933d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) dVar).topMargin + ((ViewGroup.MarginLayoutParams) dVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f933d.getMeasuredState());
        WeakHashMap weakHashMap = b1.f17953a;
        boolean z = (j0.g(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f930a;
            if (this.f938i && this.f933d.getTabContainer() != null) {
                measuredHeight += this.f930a;
            }
        } else {
            measuredHeight = this.f933d.getVisibility() != 8 ? this.f933d.getMeasuredHeight() : 0;
        }
        Rect rect = this.f942n;
        Rect rect2 = this.f944q;
        rect2.set(rect);
        int i12 = Build.VERSION.SDK_INT;
        Rect rect3 = this.f946t;
        if (i12 >= 21) {
            this.f950y = this.f948w;
        } else {
            rect3.set(this.r);
        }
        if (!this.f937h && !z) {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            if (i12 >= 21) {
                this.f950y = this.f950y.f18006a.l(0, measuredHeight, 0, 0);
            }
        } else if (i12 >= 21) {
            p0.c cVarB = p0.c.b(this.f950y.b(), this.f950y.d() + measuredHeight, this.f950y.c(), this.f950y.a());
            j2 j2Var = this.f950y;
            a2 z1Var = i12 >= 30 ? new z1(j2Var) : i12 >= 29 ? new y1(j2Var) : i12 >= 20 ? new x1(j2Var) : new a2(j2Var);
            z1Var.g(cVarB);
            this.f950y = z1Var.b();
        } else {
            rect3.top += measuredHeight;
            rect3.bottom = rect3.bottom;
        }
        g(this.f932c, rect2, true);
        if (i12 >= 21 && !this.z.equals(this.f950y)) {
            j2 j2Var2 = this.f950y;
            this.z = j2Var2;
            b1.b(this.f932c, j2Var2);
        } else if (i12 < 21) {
            Rect rect4 = this.f947v;
            if (!rect4.equals(rect3)) {
                rect4.set(rect3);
                this.f932c.a(rect3);
            }
        }
        measureChildWithMargins(this.f932c, i10, 0, i11, 0);
        w.d dVar2 = (w.d) this.f932c.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f932c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) dVar2).leftMargin + ((ViewGroup.MarginLayoutParams) dVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f932c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) dVar2).topMargin + ((ViewGroup.MarginLayoutParams) dVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f932c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedFling(View view, float f10, float f11, boolean z) {
        if (!this.f939j || !z) {
            return false;
        }
        this.B.fling(0, 0, 0, (int) f11, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.B.getFinalY() > this.f933d.getHeight()) {
            h();
            this.F.run();
        } else {
            h();
            this.E.run();
        }
        this.f940k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.l + i11;
        this.l = i14;
        setActionBarHideOffset(i14);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onNestedScrollAccepted(View view, View view2, int i10) {
        m0 m0Var;
        u.k kVar;
        this.G.f4863a = i10;
        this.l = getActionBarHideOffset();
        h();
        w.c cVar = this.A;
        if (cVar == null || (kVar = (m0Var = (m0) cVar).f12880t) == null) {
            return;
        }
        kVar.a();
        m0Var.f12880t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f933d.getVisibility() != 0) {
            return false;
        }
        return this.f939j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, x0.w
    public final void onStopNestedScroll(View view) {
        if (!this.f939j || this.f940k) {
            return;
        }
        if (this.l <= this.f933d.getHeight()) {
            h();
            postDelayed(this.E, 600L);
        } else {
            h();
            postDelayed(this.F, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i10) {
        super.onWindowSystemUiVisibilityChanged(i10);
        k();
        int i11 = this.f941m ^ i10;
        this.f941m = i10;
        boolean z = (i10 & 4) == 0;
        boolean z4 = (i10 & 256) != 0;
        w.c cVar = this.A;
        if (cVar != null) {
            m0 m0Var = (m0) cVar;
            m0Var.f12877p = !z4;
            if (z || !z4) {
                if (m0Var.f12878q) {
                    m0Var.f12878q = false;
                    m0Var.p0(true);
                }
            } else if (!m0Var.f12878q) {
                m0Var.f12878q = true;
                m0Var.p0(true);
            }
        }
        if ((i11 & 256) == 0 || this.A == null) {
            return;
        }
        b1.v(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f931b = i10;
        w.c cVar = this.A;
        if (cVar != null) {
            ((m0) cVar).f12876o = i10;
        }
    }

    public void setActionBarHideOffset(int i10) {
        h();
        this.f933d.setTranslationY(-Math.max(0, Math.min(i10, this.f933d.getHeight())));
    }

    public void setActionBarVisibilityCallback(w.c cVar) {
        this.A = cVar;
        if (getWindowToken() != null) {
            ((m0) this.A).f12876o = this.f931b;
            int i10 = this.f941m;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                b1.v(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f938i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f939j) {
            this.f939j = z;
            if (z) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        k();
        n3 n3Var = (n3) this.f934e;
        n3Var.f17165d = i10 != 0 ? com.bumptech.glide.d.x(n3Var.f17162a.getContext(), i10) : null;
        n3Var.c();
    }

    public void setLogo(int i10) {
        k();
        n3 n3Var = (n3) this.f934e;
        n3Var.f17166e = i10 != 0 ? com.bumptech.glide.d.x(n3Var.f17162a.getContext(), i10) : null;
        n3Var.c();
    }

    public void setOverlayMode(boolean z) {
        this.f937h = z;
        this.f936g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // w.l1
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((n3) this.f934e).f17172k = callback;
    }

    @Override // w.l1
    public void setWindowTitle(CharSequence charSequence) {
        k();
        n3 n3Var = (n3) this.f934e;
        if (n3Var.f17168g) {
            return;
        }
        n3Var.f17169h = charSequence;
        if ((n3Var.f17163b & 8) != 0) {
            Toolbar toolbar = n3Var.f17162a;
            toolbar.setTitle(charSequence);
            if (n3Var.f17168g) {
                b1.z(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new w.d(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        n3 n3Var = (n3) this.f934e;
        n3Var.f17165d = drawable;
        n3Var.c();
    }
}

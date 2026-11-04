package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.h;
import androidx.fragment.app.v0;
import androidx.leanback.widget.h0;
import com.yunpan.appmanage.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import u.i;
import v.k;
import v.m;
import w.b1;
import w.f3;
import w.g3;
import w.h3;
import w.i3;
import w.j;
import w.j3;
import w.k3;
import w.l3;
import w.m1;
import w.n3;
import w.r2;
import w.u3;
import w.w;
import w.x;
import x0.j0;
import x0.k0;
import x0.p;
import x0.q;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements q {
    public CharSequence A;
    public ColorStateList B;
    public ColorStateList C;
    public boolean D;
    public boolean E;
    public final ArrayList F;
    public final ArrayList G;
    public final int[] H;
    public final s4.a I;
    public ArrayList K;
    public final g3 L;
    public n3 M;
    public j N;
    public i3 O;
    public boolean P;
    public OnBackInvokedCallback R;
    public OnBackInvokedDispatcher S;
    public boolean T;
    public final h V;

    /* renamed from: a, reason: collision with root package name */
    public ActionMenuView f986a;

    /* renamed from: b, reason: collision with root package name */
    public b1 f987b;

    /* renamed from: c, reason: collision with root package name */
    public b1 f988c;

    /* renamed from: d, reason: collision with root package name */
    public w f989d;

    /* renamed from: e, reason: collision with root package name */
    public x f990e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f991f;

    /* renamed from: g, reason: collision with root package name */
    public final CharSequence f992g;

    /* renamed from: h, reason: collision with root package name */
    public w f993h;

    /* renamed from: i, reason: collision with root package name */
    public View f994i;

    /* renamed from: j, reason: collision with root package name */
    public Context f995j;

    /* renamed from: k, reason: collision with root package name */
    public int f996k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f997m;

    /* renamed from: n, reason: collision with root package name */
    public final int f998n;

    /* renamed from: p, reason: collision with root package name */
    public final int f999p;

    /* renamed from: q, reason: collision with root package name */
    public int f1000q;
    public int r;

    /* renamed from: s, reason: collision with root package name */
    public int f1001s;

    /* renamed from: t, reason: collision with root package name */
    public int f1002t;

    /* renamed from: v, reason: collision with root package name */
    public r2 f1003v;

    /* renamed from: w, reason: collision with root package name */
    public int f1004w;

    /* renamed from: x, reason: collision with root package name */
    public int f1005x;

    /* renamed from: y, reason: collision with root package name */
    public final int f1006y;
    public CharSequence z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static j3 g(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof j3;
        if (z) {
            j3 j3Var = (j3) layoutParams;
            j3 j3Var2 = new j3(j3Var);
            j3Var2.f17133b = 0;
            j3Var2.f17133b = j3Var.f17133b;
            return j3Var2;
        }
        if (z) {
            j3 j3Var3 = new j3((j3) layoutParams);
            j3Var3.f17133b = 0;
            return j3Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            j3 j3Var4 = new j3(layoutParams);
            j3Var4.f17133b = 0;
            return j3Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        j3 j3Var5 = new j3(marginLayoutParams);
        j3Var5.f17133b = 0;
        ((ViewGroup.MarginLayoutParams) j3Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) j3Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) j3Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) j3Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return j3Var5;
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i10 = 0; i10 < menu.size(); i10++) {
            arrayList.add(menu.getItem(i10));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new i(getContext());
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return p.b(marginLayoutParams) + p.c(marginLayoutParams);
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i10, ArrayList arrayList) {
        WeakHashMap weakHashMap = x0.b1.f17953a;
        boolean z = k0.d(this) == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, k0.d(this));
        arrayList.clear();
        if (!z) {
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                j3 j3Var = (j3) childAt.getLayoutParams();
                if (j3Var.f17133b == 0 && u(childAt) && h(j3Var.f17132a) == absoluteGravity) {
                    arrayList.add(childAt);
                }
            }
            return;
        }
        for (int i12 = childCount - 1; i12 >= 0; i12--) {
            View childAt2 = getChildAt(i12);
            j3 j3Var2 = (j3) childAt2.getLayoutParams();
            if (j3Var2.f17133b == 0 && u(childAt2) && h(j3Var2.f17132a) == absoluteGravity) {
                arrayList.add(childAt2);
            }
        }
    }

    public final void b(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        j3 j3Var = layoutParams == null ? new j3() : !checkLayoutParams(layoutParams) ? g(layoutParams) : (j3) layoutParams;
        j3Var.f17133b = 1;
        if (!z || this.f994i == null) {
            addView(view, j3Var);
        } else {
            view.setLayoutParams(j3Var);
            this.G.add(view);
        }
    }

    public final void c() {
        if (this.f993h == null) {
            w wVar = new w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f993h = wVar;
            wVar.setImageDrawable(this.f991f);
            this.f993h.setContentDescription(this.f992g);
            j3 j3Var = new j3();
            j3Var.f17132a = (this.f998n & 112) | 8388611;
            j3Var.f17133b = 2;
            this.f993h.setLayoutParams(j3Var);
            this.f993h.setOnClickListener(new h0(7, this));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof j3);
    }

    public final void d() {
        e();
        ActionMenuView actionMenuView = this.f986a;
        if (actionMenuView.f951q == null) {
            k kVar = (k) actionMenuView.getMenu();
            if (this.O == null) {
                this.O = new i3(this);
            }
            this.f986a.setExpandedActionViewsExclusive(true);
            kVar.b(this.O, this.f995j);
            v();
        }
    }

    public final void e() {
        if (this.f986a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f986a = actionMenuView;
            actionMenuView.setPopupTheme(this.f996k);
            this.f986a.setOnMenuItemClickListener(this.L);
            ActionMenuView actionMenuView2 = this.f986a;
            g3 g3Var = new g3(this);
            actionMenuView2.getClass();
            actionMenuView2.f955w = g3Var;
            j3 j3Var = new j3();
            j3Var.f17132a = (this.f998n & 112) | 8388613;
            this.f986a.setLayoutParams(j3Var);
            b(this.f986a, false);
        }
    }

    public final void f() {
        if (this.f989d == null) {
            this.f989d = new w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            j3 j3Var = new j3();
            j3Var.f17132a = (this.f998n & 112) | 8388611;
            this.f989d.setLayoutParams(j3Var);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new j3();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return g(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        w wVar = this.f993h;
        if (wVar != null) {
            return wVar.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        w wVar = this.f993h;
        if (wVar != null) {
            return wVar.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        r2 r2Var = this.f1003v;
        if (r2Var != null) {
            return r2Var.f17240g ? r2Var.f17234a : r2Var.f17235b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i10 = this.f1005x;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        r2 r2Var = this.f1003v;
        if (r2Var != null) {
            return r2Var.f17234a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        r2 r2Var = this.f1003v;
        if (r2Var != null) {
            return r2Var.f17235b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        r2 r2Var = this.f1003v;
        if (r2Var != null) {
            return r2Var.f17240g ? r2Var.f17235b : r2Var.f17234a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i10 = this.f1004w;
        return i10 != Integer.MIN_VALUE ? i10 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        k kVar;
        ActionMenuView actionMenuView = this.f986a;
        return (actionMenuView == null || (kVar = actionMenuView.f951q) == null || !kVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f1005x, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = x0.b1.f17953a;
        return k0.d(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = x0.b1.f17953a;
        return k0.d(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f1004w, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        x xVar = this.f990e;
        if (xVar != null) {
            return xVar.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        x xVar = this.f990e;
        if (xVar != null) {
            return xVar.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        d();
        return this.f986a.getMenu();
    }

    public View getNavButtonView() {
        return this.f989d;
    }

    public CharSequence getNavigationContentDescription() {
        w wVar = this.f989d;
        if (wVar != null) {
            return wVar.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        w wVar = this.f989d;
        if (wVar != null) {
            return wVar.getDrawable();
        }
        return null;
    }

    public j getOuterActionMenuPresenter() {
        return this.N;
    }

    public Drawable getOverflowIcon() {
        d();
        return this.f986a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f995j;
    }

    public int getPopupTheme() {
        return this.f996k;
    }

    public CharSequence getSubtitle() {
        return this.A;
    }

    public final TextView getSubtitleTextView() {
        return this.f988c;
    }

    public CharSequence getTitle() {
        return this.z;
    }

    public int getTitleMarginBottom() {
        return this.f1002t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.f1000q;
    }

    public int getTitleMarginTop() {
        return this.f1001s;
    }

    public final TextView getTitleTextView() {
        return this.f987b;
    }

    public m1 getWrapper() {
        if (this.M == null) {
            this.M = new n3(this);
        }
        return this.M;
    }

    public final int h(int i10) {
        WeakHashMap weakHashMap = x0.b1.f17953a;
        int iD = k0.d(this);
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, iD) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : iD == 1 ? 5 : 3;
    }

    @Override // x0.q
    public final void i(v0 v0Var) {
        s4.a aVar = this.I;
        ((CopyOnWriteArrayList) aVar.f14294c).add(v0Var);
        ((Runnable) aVar.f14293b).run();
    }

    public final int j(int i10, View view) {
        j3 j3Var = (j3) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = i10 > 0 ? (measuredHeight - i10) / 2 : 0;
        int i12 = j3Var.f17132a & 112;
        if (i12 != 16 && i12 != 48 && i12 != 80) {
            i12 = this.f1006y & 112;
        }
        if (i12 == 48) {
            return getPaddingTop() - i11;
        }
        if (i12 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) j3Var).bottomMargin) - i11;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i13 = ((ViewGroup.MarginLayoutParams) j3Var).topMargin;
        if (iMax < i13) {
            iMax = i13;
        } else {
            int i14 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i15 = ((ViewGroup.MarginLayoutParams) j3Var).bottomMargin;
            if (i14 < i15) {
                iMax = Math.max(0, iMax - (i15 - i14));
            }
        }
        return paddingTop + iMax;
    }

    @Override // x0.q
    public final void k(v0 v0Var) {
        s4.a aVar = this.I;
        ((CopyOnWriteArrayList) aVar.f14294c).remove(v0Var);
        if (((HashMap) aVar.f14295d).remove(v0Var) != null) {
            throw new ClassCastException();
        }
        ((Runnable) aVar.f14293b).run();
    }

    public void n(int i10) {
        getMenuInflater().inflate(i10, getMenu());
    }

    public final void o() {
        Iterator it = this.K.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.I.f14294c).iterator();
        while (it2.hasNext()) {
            ((v0) it2.next()).f1413a.j(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.K = currentMenuItems2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        v();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.V);
        v();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.E = false;
        }
        if (!this.E) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.E = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.E = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x029b A[LOOP:0: B:106:0x0299->B:107:0x029b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02b8 A[LOOP:1: B:109:0x02b6->B:110:0x02b8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d6 A[LOOP:2: B:112:0x02d4->B:113:0x02d6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0325 A[LOOP:3: B:121:0x0323->B:122:0x0325, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0222  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i10, int i11, int i12, int i13) {
        int iQ;
        int iR;
        boolean zU;
        boolean zU2;
        int i14;
        int measuredHeight;
        int i15;
        int i16;
        boolean z4;
        int i17;
        int i18;
        int i19;
        int paddingTop;
        int i20;
        int i21;
        int i22;
        int i23;
        int size;
        int iQ2;
        int i24;
        int size2;
        int i25;
        int size3;
        int i26;
        int i27;
        int size4;
        int i28;
        WeakHashMap weakHashMap = x0.b1.f17953a;
        boolean z10 = k0.d(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i29 = width - paddingRight;
        int[] iArr = this.H;
        iArr[1] = 0;
        iArr[0] = 0;
        int iD = j0.d(this);
        int iMin = iD >= 0 ? Math.min(iD, i13 - i11) : 0;
        if (!u(this.f989d)) {
            iQ = paddingLeft;
        } else {
            if (z10) {
                iR = r(this.f989d, i29, iMin, iArr);
                iQ = paddingLeft;
                if (u(this.f993h)) {
                    if (z10) {
                        iR = r(this.f993h, iR, iMin, iArr);
                    } else {
                        iQ = q(this.f993h, iQ, iMin, iArr);
                    }
                }
                if (u(this.f986a)) {
                    if (z10) {
                        iQ = q(this.f986a, iQ, iMin, iArr);
                    } else {
                        iR = r(this.f986a, iR, iMin, iArr);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - iQ);
                iArr[1] = Math.max(0, currentContentInsetRight - (i29 - iR));
                int iMax = Math.max(iQ, currentContentInsetLeft);
                int iMin2 = Math.min(iR, i29 - currentContentInsetRight);
                if (u(this.f994i)) {
                    if (z10) {
                        iMin2 = r(this.f994i, iMin2, iMin, iArr);
                    } else {
                        iMax = q(this.f994i, iMax, iMin, iArr);
                    }
                }
                if (u(this.f990e)) {
                    if (z10) {
                        iMin2 = r(this.f990e, iMin2, iMin, iArr);
                    } else {
                        iMax = q(this.f990e, iMax, iMin, iArr);
                    }
                }
                zU = u(this.f987b);
                zU2 = u(this.f988c);
                if (zU) {
                    i14 = paddingRight;
                    measuredHeight = 0;
                } else {
                    j3 j3Var = (j3) this.f987b.getLayoutParams();
                    i14 = paddingRight;
                    measuredHeight = ((ViewGroup.MarginLayoutParams) j3Var).bottomMargin + this.f987b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) j3Var).topMargin;
                }
                if (zU2) {
                    i15 = width;
                } else {
                    j3 j3Var2 = (j3) this.f988c.getLayoutParams();
                    i15 = width;
                    measuredHeight += this.f988c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) j3Var2).topMargin + ((ViewGroup.MarginLayoutParams) j3Var2).bottomMargin;
                }
                if (!zU || zU2) {
                    b1 b1Var = !zU ? this.f987b : this.f988c;
                    b1 b1Var2 = !zU2 ? this.f988c : this.f987b;
                    j3 j3Var3 = (j3) b1Var.getLayoutParams();
                    j3 j3Var4 = (j3) b1Var2.getLayoutParams();
                    if ((zU || this.f987b.getMeasuredWidth() <= 0) && (!zU2 || this.f988c.getMeasuredWidth() <= 0)) {
                        i16 = paddingLeft;
                        z4 = false;
                    } else {
                        i16 = paddingLeft;
                        z4 = true;
                    }
                    i17 = this.f1006y & 112;
                    i18 = iMin;
                    if (i17 == 48) {
                        i19 = iMax;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) j3Var3).topMargin + this.f1001s;
                    } else if (i17 != 80) {
                        int iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                        i19 = iMax;
                        int i30 = ((ViewGroup.MarginLayoutParams) j3Var3).topMargin + this.f1001s;
                        if (iMax2 < i30) {
                            iMax2 = i30;
                        } else {
                            int i31 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                            int i32 = ((ViewGroup.MarginLayoutParams) j3Var3).bottomMargin;
                            int i33 = this.f1002t;
                            if (i31 < i32 + i33) {
                                iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) j3Var4).bottomMargin + i33) - i31));
                            }
                        }
                        paddingTop = paddingTop2 + iMax2;
                    } else {
                        i19 = iMax;
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) j3Var4).bottomMargin) - this.f1002t) - measuredHeight;
                    }
                    if (z10) {
                        int i34 = (z4 ? this.f1000q : 0) - iArr[1];
                        iMin2 -= Math.max(0, i34);
                        iArr[1] = Math.max(0, -i34);
                        if (zU) {
                            j3 j3Var5 = (j3) this.f987b.getLayoutParams();
                            int measuredWidth = iMin2 - this.f987b.getMeasuredWidth();
                            int measuredHeight2 = this.f987b.getMeasuredHeight() + paddingTop;
                            this.f987b.layout(measuredWidth, paddingTop, iMin2, measuredHeight2);
                            i22 = measuredWidth - this.r;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) j3Var5).bottomMargin;
                        } else {
                            i22 = iMin2;
                        }
                        if (zU2) {
                            int i35 = paddingTop + ((ViewGroup.MarginLayoutParams) ((j3) this.f988c.getLayoutParams())).topMargin;
                            this.f988c.layout(iMin2 - this.f988c.getMeasuredWidth(), i35, iMin2, this.f988c.getMeasuredHeight() + i35);
                            i23 = iMin2 - this.r;
                        } else {
                            i23 = iMin2;
                        }
                        if (z4) {
                            iMin2 = Math.min(i22, i23);
                        }
                        iMax = i19;
                    } else {
                        int i36 = (z4 ? this.f1000q : 0) - iArr[0];
                        int iMax3 = Math.max(0, i36) + i19;
                        iArr[0] = Math.max(0, -i36);
                        if (zU) {
                            j3 j3Var6 = (j3) this.f987b.getLayoutParams();
                            int measuredWidth2 = this.f987b.getMeasuredWidth() + iMax3;
                            int measuredHeight3 = this.f987b.getMeasuredHeight() + paddingTop;
                            this.f987b.layout(iMax3, paddingTop, measuredWidth2, measuredHeight3);
                            i20 = measuredWidth2 + this.r;
                            paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) j3Var6).bottomMargin;
                        } else {
                            i20 = iMax3;
                        }
                        if (zU2) {
                            int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((j3) this.f988c.getLayoutParams())).topMargin;
                            int measuredWidth3 = this.f988c.getMeasuredWidth() + iMax3;
                            this.f988c.layout(iMax3, i37, measuredWidth3, this.f988c.getMeasuredHeight() + i37);
                            i21 = measuredWidth3 + this.r;
                        } else {
                            i21 = iMax3;
                        }
                        iMax = z4 ? Math.max(i20, i21) : iMax3;
                    }
                } else {
                    i16 = paddingLeft;
                    i18 = iMin;
                }
                ArrayList arrayList = this.F;
                a(3, arrayList);
                size = arrayList.size();
                iQ2 = iMax;
                for (i24 = 0; i24 < size; i24++) {
                    iQ2 = q((View) arrayList.get(i24), iQ2, i18, iArr);
                }
                int i38 = i18;
                a(5, arrayList);
                size2 = arrayList.size();
                for (i25 = 0; i25 < size2; i25++) {
                    iMin2 = r((View) arrayList.get(i25), iMin2, i38, iArr);
                }
                a(1, arrayList);
                int i39 = iArr[0];
                int i40 = iArr[1];
                size3 = arrayList.size();
                int i41 = i40;
                int i42 = i39;
                i26 = 0;
                int measuredWidth4 = 0;
                while (i26 < size3) {
                    View view = (View) arrayList.get(i26);
                    j3 j3Var7 = (j3) view.getLayoutParams();
                    int i43 = ((ViewGroup.MarginLayoutParams) j3Var7).leftMargin - i42;
                    int i44 = ((ViewGroup.MarginLayoutParams) j3Var7).rightMargin - i41;
                    int iMax4 = Math.max(0, i43);
                    int iMax5 = Math.max(0, i44);
                    int iMax6 = Math.max(0, -i43);
                    int iMax7 = Math.max(0, -i44);
                    measuredWidth4 += view.getMeasuredWidth() + iMax4 + iMax5;
                    i26++;
                    i41 = iMax7;
                    i42 = iMax6;
                }
                i27 = ((((i15 - i16) - i14) / 2) + i16) - (measuredWidth4 / 2);
                int i45 = measuredWidth4 + i27;
                if (i27 >= iQ2) {
                    iQ2 = i45 > iMin2 ? i27 - (i45 - iMin2) : i27;
                }
                size4 = arrayList.size();
                for (i28 = 0; i28 < size4; i28++) {
                    iQ2 = q((View) arrayList.get(i28), iQ2, i38, iArr);
                }
                arrayList.clear();
            }
            iQ = q(this.f989d, paddingLeft, iMin, iArr);
        }
        iR = i29;
        if (u(this.f993h)) {
        }
        if (u(this.f986a)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iQ);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i29 - iR));
        int iMax8 = Math.max(iQ, currentContentInsetLeft2);
        int iMin22 = Math.min(iR, i29 - currentContentInsetRight2);
        if (u(this.f994i)) {
        }
        if (u(this.f990e)) {
        }
        zU = u(this.f987b);
        zU2 = u(this.f988c);
        if (zU) {
        }
        if (zU2) {
        }
        if (zU) {
            if (!zU) {
            }
            if (!zU2) {
            }
            j3 j3Var32 = (j3) b1Var.getLayoutParams();
            j3 j3Var42 = (j3) b1Var2.getLayoutParams();
            if (zU) {
                i16 = paddingLeft;
                z4 = false;
                i17 = this.f1006y & 112;
                i18 = iMin;
                if (i17 == 48) {
                }
                if (z10) {
                }
            } else {
                i16 = paddingLeft;
                z4 = false;
                i17 = this.f1006y & 112;
                i18 = iMin;
                if (i17 == 48) {
                }
                if (z10) {
                }
            }
        }
        ArrayList arrayList2 = this.F;
        a(3, arrayList2);
        size = arrayList2.size();
        iQ2 = iMax8;
        while (i24 < size) {
        }
        int i382 = i18;
        a(5, arrayList2);
        size2 = arrayList2.size();
        while (i25 < size2) {
        }
        a(1, arrayList2);
        int i392 = iArr[0];
        int i402 = iArr[1];
        size3 = arrayList2.size();
        int i412 = i402;
        int i422 = i392;
        i26 = 0;
        int measuredWidth42 = 0;
        while (i26 < size3) {
        }
        i27 = ((((i15 - i16) - i14) / 2) + i16) - (measuredWidth42 / 2);
        int i452 = measuredWidth42 + i27;
        if (i27 >= iQ2) {
        }
        size4 = arrayList2.size();
        while (i28 < size4) {
        }
        arrayList2.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iCombineMeasuredStates2;
        int iMax2;
        int iM;
        boolean zA = u3.a(this);
        int i12 = !zA ? 1 : 0;
        int i13 = 0;
        if (u(this.f989d)) {
            t(this.f989d, i10, 0, i11, this.f999p);
            iL = l(this.f989d) + this.f989d.getMeasuredWidth();
            iMax = Math.max(0, m(this.f989d) + this.f989d.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f989d.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (u(this.f993h)) {
            t(this.f993h, i10, 0, i11, this.f999p);
            iL = l(this.f993h) + this.f993h.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f993h) + this.f993h.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f993h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iL);
        int iMax4 = Math.max(0, currentContentInsetStart - iL);
        int[] iArr = this.H;
        iArr[zA ? 1 : 0] = iMax4;
        if (u(this.f986a)) {
            t(this.f986a, i10, iMax3, i11, this.f999p);
            iL2 = l(this.f986a) + this.f986a.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f986a) + this.f986a.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f986a.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iL2);
        iArr[i12] = Math.max(0, currentContentInsetEnd - iL2);
        if (u(this.f994i)) {
            iMax5 += s(this.f994i, i10, iMax5, i11, 0, iArr);
            iMax = Math.max(iMax, m(this.f994i) + this.f994i.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f994i.getMeasuredState());
        }
        if (u(this.f990e)) {
            iMax5 += s(this.f990e, i10, iMax5, i11, 0, iArr);
            iMax = Math.max(iMax, m(this.f990e) + this.f990e.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f990e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (((j3) childAt.getLayoutParams()).f17133b == 0 && u(childAt)) {
                iMax5 += s(childAt, i10, iMax5, i11, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i15 = this.f1001s + this.f1002t;
        int i16 = this.f1000q + this.r;
        if (u(this.f987b)) {
            s(this.f987b, i10, iMax5 + i16, i11, i15, iArr);
            int iL3 = l(this.f987b) + this.f987b.getMeasuredWidth();
            iM = m(this.f987b) + this.f987b.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f987b.getMeasuredState());
            iMax2 = iL3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            iM = 0;
        }
        if (u(this.f988c)) {
            iMax2 = Math.max(iMax2, s(this.f988c, i10, iMax5 + i16, i11, iM + i15, iArr));
            iM += m(this.f988c) + this.f988c.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f988c.getMeasuredState());
        }
        int iMax6 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax6;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax5 + iMax2, getSuggestedMinimumWidth()), i10, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16);
        if (!this.P) {
            i13 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i17 = 0; i17 < childCount2; i17++) {
            View childAt2 = getChildAt(i17);
            if (u(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i13 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i13);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof l3)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        l3 l3Var = (l3) parcelable;
        super.onRestoreInstanceState(l3Var.f4709a);
        ActionMenuView actionMenuView = this.f986a;
        k kVar = actionMenuView != null ? actionMenuView.f951q : null;
        int i10 = l3Var.f17150c;
        if (i10 != 0 && this.O != null && kVar != null && (menuItemFindItem = kVar.findItem(i10)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (l3Var.f17151d) {
            h hVar = this.V;
            removeCallbacks(hVar);
            post(hVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
        super.onRtlPropertiesChanged(i10);
        if (this.f1003v == null) {
            this.f1003v = new r2();
        }
        r2 r2Var = this.f1003v;
        boolean z = i10 == 1;
        if (z == r2Var.f17240g) {
            return;
        }
        r2Var.f17240g = z;
        if (!r2Var.f17241h) {
            r2Var.f17234a = r2Var.f17238e;
            r2Var.f17235b = r2Var.f17239f;
            return;
        }
        if (z) {
            int i11 = r2Var.f17237d;
            if (i11 == Integer.MIN_VALUE) {
                i11 = r2Var.f17238e;
            }
            r2Var.f17234a = i11;
            int i12 = r2Var.f17236c;
            if (i12 == Integer.MIN_VALUE) {
                i12 = r2Var.f17239f;
            }
            r2Var.f17235b = i12;
            return;
        }
        int i13 = r2Var.f17236c;
        if (i13 == Integer.MIN_VALUE) {
            i13 = r2Var.f17238e;
        }
        r2Var.f17234a = i13;
        int i14 = r2Var.f17237d;
        if (i14 == Integer.MIN_VALUE) {
            i14 = r2Var.f17239f;
        }
        r2Var.f17235b = i14;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        j jVar;
        m mVar;
        l3 l3Var = new l3(super.onSaveInstanceState());
        i3 i3Var = this.O;
        if (i3Var != null && (mVar = i3Var.f17106b) != null) {
            l3Var.f17150c = mVar.f16257a;
        }
        ActionMenuView actionMenuView = this.f986a;
        l3Var.f17151d = (actionMenuView == null || (jVar = actionMenuView.f954v) == null || !jVar.k()) ? false : true;
        return l3Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.D = false;
        }
        if (!this.D) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    public final boolean p(View view) {
        return view.getParent() == this || this.G.contains(view);
    }

    public final int q(View view, int i10, int i11, int[] iArr) {
        j3 j3Var = (j3) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) j3Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i12) + i10;
        iArr[0] = Math.max(0, -i12);
        int iJ = j(i11, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) j3Var).rightMargin + iMax;
    }

    public final int r(View view, int i10, int i11, int[] iArr) {
        j3 j3Var = (j3) view.getLayoutParams();
        int i12 = ((ViewGroup.MarginLayoutParams) j3Var).rightMargin - iArr[1];
        int iMax = i10 - Math.max(0, i12);
        iArr[1] = Math.max(0, -i12);
        int iJ = j(i11, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) j3Var).leftMargin);
    }

    public final int s(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i14 = marginLayoutParams.leftMargin - iArr[0];
        int i15 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i15) + Math.max(0, i14);
        iArr[0] = Math.max(0, -i14);
        iArr[1] = Math.max(0, -i15);
        view.measure(ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + iMax + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i13, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.T != z) {
            this.T = z;
            v();
        }
    }

    public void setCollapseContentDescription(int i10) {
        setCollapseContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setCollapseIcon(int i10) {
        setCollapseIcon(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setCollapsible(boolean z) {
        this.P = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1005x) {
            this.f1005x = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i10) {
        if (i10 < 0) {
            i10 = Integer.MIN_VALUE;
        }
        if (i10 != this.f1004w) {
            this.f1004w = i10;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i10) {
        setLogo(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setLogoDescription(int i10) {
        setLogoDescription(getContext().getText(i10));
    }

    public void setNavigationContentDescription(int i10) {
        setNavigationContentDescription(i10 != 0 ? getContext().getText(i10) : null);
    }

    public void setNavigationIcon(int i10) {
        setNavigationIcon(com.bumptech.glide.d.x(getContext(), i10));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        f();
        this.f989d.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        d();
        this.f986a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i10) {
        if (this.f996k != i10) {
            this.f996k = i10;
            if (i10 == 0) {
                this.f995j = getContext();
            } else {
                this.f995j = new ContextThemeWrapper(getContext(), i10);
            }
        }
    }

    public void setSubtitle(int i10) {
        setSubtitle(getContext().getText(i10));
    }

    public void setSubtitleTextColor(int i10) {
        setSubtitleTextColor(ColorStateList.valueOf(i10));
    }

    public void setTitle(int i10) {
        setTitle(getContext().getText(i10));
    }

    public void setTitleMarginBottom(int i10) {
        this.f1002t = i10;
        requestLayout();
    }

    public void setTitleMarginEnd(int i10) {
        this.r = i10;
        requestLayout();
    }

    public void setTitleMarginStart(int i10) {
        this.f1000q = i10;
        requestLayout();
    }

    public void setTitleMarginTop(int i10) {
        this.f1001s = i10;
        requestLayout();
    }

    public void setTitleTextColor(int i10) {
        setTitleTextColor(ColorStateList.valueOf(i10));
    }

    public final void t(View view, int i10, int i11, int i12, int i13) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i13 >= 0) {
            if (mode != 0) {
                i13 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i13);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i13, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean u(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final void v() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = h3.a(this);
            i3 i3Var = this.O;
            boolean z = (i3Var == null || i3Var.f17106b == null || onBackInvokedDispatcherA == null || !x0.b1.l(this) || !this.T) ? false : true;
            if (z && this.S == null) {
                if (this.R == null) {
                    this.R = h3.b(new f3(this, 0));
                }
                h3.c(onBackInvokedDispatcherA, this.R);
                this.S = onBackInvokedDispatcherA;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.S) == null) {
                return;
            }
            h3.d(onBackInvokedDispatcher, this.R);
            this.S = null;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f1006y = 8388627;
        this.F = new ArrayList();
        this.G = new ArrayList();
        this.H = new int[2];
        this.I = new s4.a(new f3(this, 1));
        this.K = new ArrayList();
        this.L = new g3(this);
        this.V = new h(18, this);
        Context context2 = getContext();
        int[] iArr = p.a.f12536x;
        s4.a aVarJ = s4.a.j(context2, attributeSet, iArr, R.attr.toolbarStyle);
        x0.b1.w(this, context, iArr, attributeSet, (TypedArray) aVarJ.f14294c, R.attr.toolbarStyle);
        TypedArray typedArray = (TypedArray) aVarJ.f14294c;
        this.l = typedArray.getResourceId(28, 0);
        this.f997m = typedArray.getResourceId(19, 0);
        this.f1006y = typedArray.getInteger(0, 8388627);
        this.f998n = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f1002t = dimensionPixelOffset;
        this.f1001s = dimensionPixelOffset;
        this.r = dimensionPixelOffset;
        this.f1000q = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f1000q = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.r = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f1001s = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f1002t = dimensionPixelOffset5;
        }
        this.f999p = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        if (this.f1003v == null) {
            this.f1003v = new r2();
        }
        r2 r2Var = this.f1003v;
        r2Var.f17241h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            r2Var.f17238e = dimensionPixelSize;
            r2Var.f17234a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            r2Var.f17239f = dimensionPixelSize2;
            r2Var.f17235b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            r2Var.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f1004w = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f1005x = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f991f = aVarJ.e(4);
        this.f992g = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f995j = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawableE = aVarJ.e(16);
        if (drawableE != null) {
            setNavigationIcon(drawableE);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableE2 = aVarJ.e(11);
        if (drawableE2 != null) {
            setLogo(drawableE2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(aVarJ.d(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(aVarJ.d(20));
        }
        if (typedArray.hasValue(14)) {
            n(typedArray.getResourceId(14, 0));
        }
        aVarJ.r();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new j3(getContext(), attributeSet);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        w wVar = this.f993h;
        if (wVar != null) {
            wVar.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f993h.setImageDrawable(drawable);
        } else {
            w wVar = this.f993h;
            if (wVar != null) {
                wVar.setImageDrawable(this.f991f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f990e == null) {
                this.f990e = new x(getContext(), null, 0);
            }
            if (!p(this.f990e)) {
                b(this.f990e, true);
            }
        } else {
            x xVar = this.f990e;
            if (xVar != null && p(xVar)) {
                removeView(this.f990e);
                this.G.remove(this.f990e);
            }
        }
        x xVar2 = this.f990e;
        if (xVar2 != null) {
            xVar2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f990e == null) {
            this.f990e = new x(getContext(), null, 0);
        }
        x xVar = this.f990e;
        if (xVar != null) {
            xVar.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            f();
        }
        w wVar = this.f989d;
        if (wVar != null) {
            wVar.setContentDescription(charSequence);
            q4.a.a0(this.f989d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            f();
            if (!p(this.f989d)) {
                b(this.f989d, true);
            }
        } else {
            w wVar = this.f989d;
            if (wVar != null && p(wVar)) {
                removeView(this.f989d);
                this.G.remove(this.f989d);
            }
        }
        w wVar2 = this.f989d;
        if (wVar2 != null) {
            wVar2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            b1 b1Var = this.f988c;
            if (b1Var != null && p(b1Var)) {
                removeView(this.f988c);
                this.G.remove(this.f988c);
            }
        } else {
            if (this.f988c == null) {
                Context context = getContext();
                b1 b1Var2 = new b1(context, null);
                this.f988c = b1Var2;
                b1Var2.setSingleLine();
                this.f988c.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.f997m;
                if (i10 != 0) {
                    this.f988c.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.C;
                if (colorStateList != null) {
                    this.f988c.setTextColor(colorStateList);
                }
            }
            if (!p(this.f988c)) {
                b(this.f988c, true);
            }
        }
        b1 b1Var3 = this.f988c;
        if (b1Var3 != null) {
            b1Var3.setText(charSequence);
        }
        this.A = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.C = colorStateList;
        b1 b1Var = this.f988c;
        if (b1Var != null) {
            b1Var.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            b1 b1Var = this.f987b;
            if (b1Var != null && p(b1Var)) {
                removeView(this.f987b);
                this.G.remove(this.f987b);
            }
        } else {
            if (this.f987b == null) {
                Context context = getContext();
                b1 b1Var2 = new b1(context, null);
                this.f987b = b1Var2;
                b1Var2.setSingleLine();
                this.f987b.setEllipsize(TextUtils.TruncateAt.END);
                int i10 = this.l;
                if (i10 != 0) {
                    this.f987b.setTextAppearance(context, i10);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.f987b.setTextColor(colorStateList);
                }
            }
            if (!p(this.f987b)) {
                b(this.f987b, true);
            }
        }
        b1 b1Var3 = this.f987b;
        if (b1Var3 != null) {
            b1Var3.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        b1 b1Var = this.f987b;
        if (b1Var != null) {
            b1Var.setTextColor(colorStateList);
        }
    }

    public void setOnMenuItemClickListener(k3 k3Var) {
    }
}

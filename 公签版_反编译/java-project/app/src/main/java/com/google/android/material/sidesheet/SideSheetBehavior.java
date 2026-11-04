package com.google.android.material.sidesheet;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.bumptech.glide.c;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import f1.d;
import ha.o;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import k0.a;
import kf.f;
import l2.z;
import m7.g;
import m7.j;
import nh.b;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public class SideSheetBehavior<V extends View> extends a {

    /* renamed from: a, reason: collision with root package name */
    public b f3622a;

    /* renamed from: b, reason: collision with root package name */
    public final g f3623b;

    /* renamed from: c, reason: collision with root package name */
    public final ColorStateList f3624c;

    /* renamed from: d, reason: collision with root package name */
    public final j f3625d;

    /* renamed from: e, reason: collision with root package name */
    public final f f3626e;

    /* renamed from: f, reason: collision with root package name */
    public final float f3627f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3628g;

    /* renamed from: h, reason: collision with root package name */
    public int f3629h;

    /* renamed from: i, reason: collision with root package name */
    public d f3630i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3631j;

    /* renamed from: k, reason: collision with root package name */
    public final float f3632k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3633m;

    /* renamed from: n, reason: collision with root package name */
    public int f3634n;

    /* renamed from: o, reason: collision with root package name */
    public int f3635o;

    /* renamed from: p, reason: collision with root package name */
    public WeakReference f3636p;

    /* renamed from: q, reason: collision with root package name */
    public WeakReference f3637q;
    public final int r;

    /* renamed from: s, reason: collision with root package name */
    public VelocityTracker f3638s;

    /* renamed from: t, reason: collision with root package name */
    public int f3639t;

    /* renamed from: u, reason: collision with root package name */
    public final LinkedHashSet f3640u;

    /* renamed from: v, reason: collision with root package name */
    public final n7.b f3641v;

    public SideSheetBehavior() {
        this.f3626e = new f(this);
        this.f3628g = true;
        this.f3629h = 5;
        this.f3632k = 0.1f;
        this.r = -1;
        this.f3640u = new LinkedHashSet();
        this.f3641v = new n7.b(this, 0);
    }

    @Override // k0.a
    public final void c(k0.d dVar) {
        this.f3636p = null;
        this.f3630i = null;
    }

    @Override // k0.a
    public final void e() {
        this.f3636p = null;
        this.f3630i = null;
    }

    @Override // k0.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        d dVar;
        VelocityTracker velocityTracker;
        if ((!view.isShown() && b1.e(view) == null) || !this.f3628g) {
            this.f3631j = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 && (velocityTracker = this.f3638s) != null) {
            velocityTracker.recycle();
            this.f3638s = null;
        }
        if (this.f3638s == null) {
            this.f3638s = VelocityTracker.obtain();
        }
        this.f3638s.addMovement(motionEvent);
        if (actionMasked == 0) {
            this.f3639t = (int) motionEvent.getX();
        } else if ((actionMasked == 1 || actionMasked == 3) && this.f3631j) {
            this.f3631j = false;
            return false;
        }
        return (this.f3631j || (dVar = this.f3630i) == null || !dVar.o(motionEvent)) ? false : true;
    }

    @Override // k0.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) throws Resources.NotFoundException, NumberFormatException {
        View view2;
        View view3;
        int i11;
        View viewFindViewById;
        int iH = 0;
        int i12 = 1;
        g gVar = this.f3623b;
        WeakHashMap weakHashMap = b1.f17953a;
        if (j0.b(coordinatorLayout) && !j0.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.f3636p == null) {
            this.f3636p = new WeakReference(view);
            Context context = view.getContext();
            com.bumptech.glide.d.c0(context, R.attr.motionEasingStandardDecelerateInterpolator, c.o(0.0f, 0.0f, 0.0f, 1.0f));
            com.bumptech.glide.d.b0(context, R.attr.motionDurationMedium2, NoConst.RECORDING_TIME_INTERVAL);
            com.bumptech.glide.d.b0(context, R.attr.motionDurationShort3, 150);
            com.bumptech.glide.d.b0(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
            resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
            if (gVar != null) {
                j0.q(view, gVar);
                float fG = this.f3627f;
                if (fG == -1.0f) {
                    fG = b1.g(view);
                }
                gVar.j(fG);
            } else {
                ColorStateList colorStateList = this.f3624c;
                if (colorStateList != null) {
                    b1.A(view, colorStateList);
                }
            }
            int i13 = this.f3629h == 5 ? 4 : 0;
            if (view.getVisibility() != i13) {
                view.setVisibility(i13);
            }
            u();
            if (j0.c(view) == 0) {
                b1.B(view, 1);
            }
            if (b1.e(view) == null) {
                b1.z(view, view.getResources().getString(R.string.side_sheet_accessibility_pane_title));
            }
        }
        int i14 = Gravity.getAbsoluteGravity(((k0.d) view.getLayoutParams()).f10000c, i10) == 3 ? 1 : 0;
        b bVar = this.f3622a;
        if (bVar == null || bVar.J() != i14) {
            j jVar = this.f3625d;
            k0.d dVar = null;
            if (i14 == 0) {
                this.f3622a = new n7.a(this, i12);
                if (jVar != null) {
                    WeakReference weakReference = this.f3636p;
                    if (weakReference != null && (view3 = (View) weakReference.get()) != null && (view3.getLayoutParams() instanceof k0.d)) {
                        dVar = (k0.d) view3.getLayoutParams();
                    }
                    if (dVar == null || ((ViewGroup.MarginLayoutParams) dVar).rightMargin <= 0) {
                        ff.b bVar2 = new ff.b(jVar);
                        bVar2.f5807f = new m7.a(0.0f);
                        bVar2.f5808g = new m7.a(0.0f);
                        j jVar2 = new j(bVar2);
                        if (gVar != null) {
                            gVar.setShapeAppearanceModel(jVar2);
                        }
                    }
                }
            } else {
                if (i14 != 1) {
                    throw new IllegalArgumentException(g.b.i("Invalid sheet edge position value: ", i14, ". Must be 0 or 1."));
                }
                this.f3622a = new n7.a(this, iH);
                if (jVar != null) {
                    WeakReference weakReference2 = this.f3636p;
                    if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null && (view2.getLayoutParams() instanceof k0.d)) {
                        dVar = (k0.d) view2.getLayoutParams();
                    }
                    if (dVar == null || ((ViewGroup.MarginLayoutParams) dVar).leftMargin <= 0) {
                        ff.b bVar3 = new ff.b(jVar);
                        bVar3.f5806e = new m7.a(0.0f);
                        bVar3.f5809h = new m7.a(0.0f);
                        j jVar3 = new j(bVar3);
                        if (gVar != null) {
                            gVar.setShapeAppearanceModel(jVar3);
                        }
                    }
                }
            }
        }
        if (this.f3630i == null) {
            this.f3630i = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f3641v);
        }
        int iH2 = this.f3622a.H(view);
        coordinatorLayout.p(i10, view);
        this.f3633m = coordinatorLayout.getWidth();
        this.f3634n = this.f3622a.I(coordinatorLayout);
        this.l = view.getWidth();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        this.f3635o = marginLayoutParams != null ? this.f3622a.g(marginLayoutParams) : 0;
        int i15 = this.f3629h;
        if (i15 == 1 || i15 == 2) {
            iH = iH2 - this.f3622a.H(view);
        } else if (i15 != 3) {
            if (i15 != 5) {
                throw new IllegalStateException("Unexpected value: " + this.f3629h);
            }
            iH = this.f3622a.C();
        }
        b1.o(iH, view);
        if (this.f3637q == null && (i11 = this.r) != -1 && (viewFindViewById = coordinatorLayout.findViewById(i11)) != null) {
            this.f3637q = new WeakReference(viewFindViewById);
        }
        Iterator it = this.f3640u.iterator();
        while (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
        }
        return true;
    }

    @Override // k0.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i10, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i12, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height));
        return true;
    }

    @Override // k0.a
    public final void m(View view, Parcelable parcelable) {
        int i10 = ((n7.c) parcelable).f11311c;
        if (i10 == 1 || i10 == 2) {
            i10 = 5;
        }
        this.f3629h = i10;
    }

    @Override // k0.a
    public final Parcelable n(View view) {
        return new n7.c(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // k0.a
    public final boolean q(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f3629h == 1 && actionMasked == 0) {
            return true;
        }
        if (s()) {
            this.f3630i.i(motionEvent);
        }
        if (actionMasked == 0 && (velocityTracker = this.f3638s) != null) {
            velocityTracker.recycle();
            this.f3638s = null;
        }
        if (this.f3638s == null) {
            this.f3638s = VelocityTracker.obtain();
        }
        this.f3638s.addMovement(motionEvent);
        if (s() && actionMasked == 2 && !this.f3631j && s()) {
            float fAbs = Math.abs(this.f3639t - motionEvent.getX());
            d dVar = this.f3630i;
            if (fAbs > dVar.f5175b) {
                dVar.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.f3631j;
    }

    public final void r(int i10) {
        View view;
        if (this.f3629h == i10) {
            return;
        }
        this.f3629h = i10;
        WeakReference weakReference = this.f3636p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        int i11 = this.f3629h == 5 ? 4 : 0;
        if (view.getVisibility() != i11) {
            view.setVisibility(i11);
        }
        Iterator it = this.f3640u.iterator();
        if (it.hasNext()) {
            throw z.d(it);
        }
        u();
    }

    public final boolean s() {
        return this.f3630i != null && (this.f3628g || this.f3629h == 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002d, code lost:
    
        if (r1.n(r0, r3.getTop()) != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
    
        if (r3 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
    
        r(2);
        r2.f3626e.d(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void t(View view, int i10, boolean z) {
        int iB;
        if (i10 == 3) {
            iB = this.f3622a.B();
        } else {
            if (i10 != 5) {
                throw new IllegalArgumentException(da.b.a(i10, "Invalid state to get outer edge offset: "));
            }
            iB = this.f3622a.C();
        }
        d dVar = this.f3630i;
        if (dVar != null) {
            if (!z) {
                int top = view.getTop();
                dVar.r = view;
                dVar.f5176c = -1;
                boolean zH = dVar.h(iB, top, 0, 0);
                if (!zH && dVar.f5174a == 0 && dVar.r != null) {
                    dVar.r = null;
                }
            }
        }
        r(i10);
    }

    public final void u() {
        View view;
        WeakReference weakReference = this.f3636p;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        b1.s(262144, view);
        b1.s(1048576, view);
        int i10 = 5;
        if (this.f3629h != 5) {
            b1.u(view, y0.f.f18539j, new o(i10, 6, this));
        }
        int i11 = 3;
        if (this.f3629h != 3) {
            b1.u(view, y0.f.f18537h, new o(i11, 6, this));
        }
    }

    public SideSheetBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        this.f3626e = new f(this);
        this.f3628g = true;
        this.f3629h = 5;
        this.f3632k = 0.1f;
        this.r = -1;
        this.f3640u = new LinkedHashSet();
        this.f3641v = new n7.b(this, 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13051x);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f3624c = c.w(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.f3625d = new j(j.b(context, attributeSet, 0, R.style.Widget_Material3_SideSheet));
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(5, -1);
            this.r = resourceId;
            WeakReference weakReference = this.f3637q;
            if (weakReference != null) {
                weakReference.clear();
            }
            this.f3637q = null;
            WeakReference weakReference2 = this.f3636p;
            if (weakReference2 != null) {
                View view = (View) weakReference2.get();
                if (resourceId != -1 && b1.m(view)) {
                    view.requestLayout();
                }
            }
        }
        j jVar = this.f3625d;
        if (jVar != null) {
            g gVar = new g(jVar);
            this.f3623b = gVar;
            gVar.i(context);
            ColorStateList colorStateList = this.f3624c;
            if (colorStateList != null) {
                this.f3623b.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f3623b.setTint(typedValue.data);
            }
        }
        this.f3627f = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        this.f3628g = typedArrayObtainStyledAttributes.getBoolean(4, true);
        typedArrayObtainStyledAttributes.recycle();
        ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}

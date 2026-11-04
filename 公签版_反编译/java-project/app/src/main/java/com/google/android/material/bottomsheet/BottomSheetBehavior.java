package com.google.android.material.bottomsheet;

import a2.g1;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.RoundedCorner;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.media3.exoplayer.video.k;
import com.hsae.autosdk.core.NoConst;
import com.yunpan.appmanage.R;
import f1.d;
import g7.m;
import h5.d0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.WeakHashMap;
import k0.a;
import kf.f;
import m7.g;
import m7.j;
import n7.b;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import x0.b1;
import x0.c;
import x0.j0;
import x0.k0;
import x0.p0;
import x0.q1;
import x0.r1;
import x0.s;
import x0.s1;

/* loaded from: classes.dex */
public class BottomSheetBehavior<V extends View> extends a {
    public final f A;
    public final ValueAnimator B;
    public final int C;
    public int D;
    public int E;
    public final float F;
    public int G;
    public final float H;
    public boolean I;
    public boolean J;
    public final boolean K;
    public int L;
    public d M;
    public boolean N;
    public int O;
    public boolean P;
    public final float Q;
    public int R;
    public int S;
    public int T;
    public WeakReference U;
    public WeakReference V;
    public final ArrayList W;
    public VelocityTracker X;
    public int Y;
    public int Z;

    /* renamed from: a, reason: collision with root package name */
    public final int f3461a;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f3462a0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3463b;

    /* renamed from: b0, reason: collision with root package name */
    public HashMap f3464b0;

    /* renamed from: c, reason: collision with root package name */
    public final float f3465c;

    /* renamed from: c0, reason: collision with root package name */
    public final SparseIntArray f3466c0;

    /* renamed from: d, reason: collision with root package name */
    public final int f3467d;

    /* renamed from: d0, reason: collision with root package name */
    public final b f3468d0;

    /* renamed from: e, reason: collision with root package name */
    public int f3469e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f3470f;

    /* renamed from: g, reason: collision with root package name */
    public int f3471g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3472h;

    /* renamed from: i, reason: collision with root package name */
    public final g f3473i;

    /* renamed from: j, reason: collision with root package name */
    public final ColorStateList f3474j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3475k;
    public final int l;

    /* renamed from: m, reason: collision with root package name */
    public int f3476m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f3477n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f3478o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f3479p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f3480q;
    public final boolean r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f3481s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f3482t;

    /* renamed from: u, reason: collision with root package name */
    public final boolean f3483u;

    /* renamed from: v, reason: collision with root package name */
    public int f3484v;

    /* renamed from: w, reason: collision with root package name */
    public int f3485w;

    /* renamed from: x, reason: collision with root package name */
    public final boolean f3486x;

    /* renamed from: y, reason: collision with root package name */
    public final j f3487y;
    public boolean z;

    public BottomSheetBehavior() {
        this.f3461a = 0;
        this.f3463b = true;
        this.f3475k = -1;
        this.l = -1;
        this.A = new f(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.f3466c0 = new SparseIntArray();
        this.f3468d0 = new b(this, 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static View v(View view) {
        if (view.getVisibility() != 0) {
            return null;
        }
        WeakHashMap weakHashMap = b1.f17953a;
        if (Build.VERSION.SDK_INT >= 21 ? p0.p(view) : view instanceof s ? ((s) view).isNestedScrollingEnabled() : false) {
            return view;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View viewV = v(viewGroup.getChildAt(i10));
                if (viewV != null) {
                    return viewV;
                }
            }
        }
        return null;
    }

    public static int w(int i10, int i11, int i12, int i13) {
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i10, i11, i13);
        if (i12 == -1) {
            return childMeasureSpec;
        }
        int mode = View.MeasureSpec.getMode(childMeasureSpec);
        int size = View.MeasureSpec.getSize(childMeasureSpec);
        if (mode == 1073741824) {
            return View.MeasureSpec.makeMeasureSpec(Math.min(size, i12), 1073741824);
        }
        if (size != 0) {
            i12 = Math.min(size, i12);
        }
        return View.MeasureSpec.makeMeasureSpec(i12, Integer.MIN_VALUE);
    }

    public final void A(int i10) {
        if (i10 == -1) {
            if (this.f3470f) {
                return;
            } else {
                this.f3470f = true;
            }
        } else {
            if (!this.f3470f && this.f3469e == i10) {
                return;
            }
            this.f3470f = false;
            this.f3469e = Math.max(0, i10);
        }
        I();
    }

    public final void B(int i10) {
        if (i10 == 1 || i10 == 2) {
            throw new IllegalArgumentException(g.b.l(i10 == 1 ? "DRAGGING" : "SETTLING", " should not be set externally.", new StringBuilder("STATE_")));
        }
        if (this.I || i10 != 5) {
            int i11 = (i10 == 6 && this.f3463b && y(i10) <= this.D) ? 3 : i10;
            WeakReference weakReference = this.U;
            if (weakReference == null || weakReference.get() == null) {
                C(i10);
                return;
            }
            View view = (View) this.U.get();
            androidx.activity.f fVar = new androidx.activity.f(this, view, i11);
            ViewParent parent = view.getParent();
            if (parent != null && parent.isLayoutRequested() && b1.l(view)) {
                view.post(fVar);
            } else {
                fVar.run();
            }
        }
    }

    public final void C(int i10) {
        if (this.L == i10) {
            return;
        }
        this.L = i10;
        if (i10 != 4 && i10 != 3 && i10 != 6) {
            boolean z = this.I;
        }
        WeakReference weakReference = this.U;
        if (weakReference == null || ((View) weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            H(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            H(false);
        }
        G(i10, true);
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            F();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public final boolean D(View view, float f10) {
        if (this.J) {
            return true;
        }
        if (view.getTop() < this.G) {
            return false;
        }
        return Math.abs(((f10 * this.Q) + ((float) view.getTop())) - ((float) this.G)) / ((float) t()) > 0.5f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0030, code lost:
    
        if (r3 != false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0032, code lost:
    
        C(2);
        G(r4, true);
        r2.A.d(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0012, code lost:
    
        if (r1.n(r3.getLeft(), r0) != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void E(View view, int i10, boolean z) {
        int iY = y(i10);
        d dVar = this.M;
        if (dVar != null) {
            if (!z) {
                int left = view.getLeft();
                dVar.r = view;
                dVar.f5176c = -1;
                boolean zH = dVar.h(left, iY, 0, 0);
                if (!zH && dVar.f5174a == 0 && dVar.r != null) {
                    dVar.r = null;
                }
            }
        }
        C(i10);
    }

    public final void F() throws Resources.NotFoundException {
        View view;
        int iA;
        WeakReference weakReference = this.U;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        b1.s(PKIFailureInfo.signerNotTrusted, view);
        b1.s(262144, view);
        b1.s(1048576, view);
        SparseIntArray sparseIntArray = this.f3466c0;
        int i10 = sparseIntArray.get(0, -1);
        if (i10 != -1) {
            b1.s(i10, view);
            sparseIntArray.delete(0);
        }
        if (!this.f3463b && this.L != 6) {
            String string = view.getResources().getString(R.string.bottomsheet_action_expand_halfway);
            d3.g gVar = new d3.g(i, 21, this);
            ArrayList arrayListF = b1.f(view);
            int i11 = 0;
            while (true) {
                if (i11 >= arrayListF.size()) {
                    int i12 = -1;
                    int i13 = 0;
                    while (true) {
                        int[] iArr = b1.f17958f;
                        if (i13 >= iArr.length || i12 != -1) {
                            break;
                        }
                        int i14 = iArr[i13];
                        boolean z = true;
                        for (int i15 = 0; i15 < arrayListF.size(); i15++) {
                            z &= ((y0.f) arrayListF.get(i15)).a() != i14;
                        }
                        if (z) {
                            i12 = i14;
                        }
                        i13++;
                    }
                    iA = i12;
                } else {
                    if (TextUtils.equals(string, ((y0.f) arrayListF.get(i11)).b())) {
                        iA = ((y0.f) arrayListF.get(i11)).a();
                        break;
                    }
                    i11++;
                }
            }
            if (iA != -1) {
                y0.f fVar = new y0.f(null, iA, string, gVar, null);
                if (Build.VERSION.SDK_INT >= 21) {
                    View.AccessibilityDelegate accessibilityDelegateD = b1.d(view);
                    c cVar = accessibilityDelegateD == null ? null : accessibilityDelegateD instanceof x0.a ? ((x0.a) accessibilityDelegateD).f17943a : new c(accessibilityDelegateD);
                    if (cVar == null) {
                        cVar = new c();
                    }
                    b1.x(view, cVar);
                    b1.t(fVar.a(), view);
                    b1.f(view).add(fVar);
                    b1.n(0, view);
                }
            }
            sparseIntArray.put(0, iA);
        }
        if (this.I) {
            int i16 = 5;
            if (this.L != 5) {
                b1.u(view, y0.f.f18539j, new d3.g(i16, 21, this));
            }
        }
        int i17 = this.L;
        int i18 = 4;
        int i19 = 3;
        if (i17 == 3) {
            b1.u(view, y0.f.f18538i, new d3.g(this.f3463b ? 4 : 6, 21, this));
            return;
        }
        if (i17 == 4) {
            b1.u(view, y0.f.f18537h, new d3.g(this.f3463b ? 3 : 6, 21, this));
        } else {
            if (i17 != 6) {
                return;
            }
            b1.u(view, y0.f.f18538i, new d3.g(i18, 21, this));
            b1.u(view, y0.f.f18537h, new d3.g(i19, 21, this));
        }
    }

    public final void G(int i10, boolean z) {
        g gVar = this.f3473i;
        ValueAnimator valueAnimator = this.B;
        if (i10 == 2) {
            return;
        }
        boolean z4 = this.L == 3 && (this.f3486x || z());
        if (this.z == z4 || gVar == null) {
            return;
        }
        this.z = z4;
        if (z && valueAnimator != null) {
            if (valueAnimator.isRunning()) {
                valueAnimator.reverse();
                return;
            } else {
                valueAnimator.setFloatValues(gVar.f10920a.f10912i, z4 ? s() : 1.0f);
                valueAnimator.start();
                return;
            }
        }
        if (valueAnimator != null && valueAnimator.isRunning()) {
            valueAnimator.cancel();
        }
        float fS = this.z ? s() : 1.0f;
        m7.f fVar = gVar.f10920a;
        if (fVar.f10912i != fS) {
            fVar.f10912i = fS;
            gVar.f10924e = true;
            gVar.invalidateSelf();
        }
    }

    public final void H(boolean z) {
        WeakReference weakReference = this.U;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = ((View) weakReference.get()).getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                if (this.f3464b0 != null) {
                    return;
                } else {
                    this.f3464b0 = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.U.get() && z) {
                    this.f3464b0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                }
            }
            if (z) {
                return;
            }
            this.f3464b0 = null;
        }
    }

    public final void I() {
        View view;
        if (this.U != null) {
            r();
            if (this.L != 4 || (view = (View) this.U.get()) == null) {
                return;
            }
            view.requestLayout();
        }
    }

    @Override // k0.a
    public final void c(k0.d dVar) {
        this.U = null;
        this.M = null;
    }

    @Override // k0.a
    public final void e() {
        this.U = null;
        this.M = null;
    }

    @Override // k0.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int i10;
        d dVar;
        if (!view.isShown() || !this.K) {
            this.N = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.Y = -1;
            this.Z = -1;
            VelocityTracker velocityTracker = this.X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.X = null;
            }
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.Z = (int) motionEvent.getY();
            if (this.L != 2) {
                WeakReference weakReference = this.V;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && coordinatorLayout.n(view2, x10, this.Z)) {
                    this.Y = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.f3462a0 = true;
                }
            }
            this.N = this.Y == -1 && !coordinatorLayout.n(view, x10, this.Z);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f3462a0 = false;
            this.Y = -1;
            if (this.N) {
                this.N = false;
                return false;
            }
        }
        if (!this.N && (dVar = this.M) != null && dVar.o(motionEvent)) {
            return true;
        }
        WeakReference weakReference2 = this.V;
        View view3 = weakReference2 != null ? (View) weakReference2.get() : null;
        return (actionMasked != 2 || view3 == null || this.N || this.L == 1 || coordinatorLayout.n(view3, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.M == null || (i10 = this.Z) == -1 || Math.abs(((float) i10) - motionEvent.getY()) <= ((float) this.M.f5175b)) ? false : true;
    }

    @Override // k0.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) throws Resources.NotFoundException, NumberFormatException {
        int i11 = this.l;
        g gVar = this.f3473i;
        WeakHashMap weakHashMap = b1.f17953a;
        if (j0.b(coordinatorLayout) && !j0.b(view)) {
            view.setFitsSystemWindows(true);
        }
        if (this.U == null) {
            this.f3471g = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.design_bottom_sheet_peek_height_min);
            int i12 = Build.VERSION.SDK_INT;
            boolean z = (i12 < 29 || this.f3477n || this.f3470f) ? false : true;
            if (this.f3478o || this.f3479p || this.f3480q || this.f3481s || this.f3482t || this.f3483u || z) {
                b1.C(view, new g1(new d0(this, z), 16, new k(k0.f(view), view.getPaddingTop(), k0.e(view), view.getPaddingBottom())));
                if (b1.l(view)) {
                    b1.v(view);
                } else {
                    view.addOnAttachStateChangeListener(new m());
                }
            }
            x0.g gVar2 = new x0.g(view);
            if (i12 >= 30) {
                view.setWindowInsetsAnimationCallback(new s1(gVar2));
            } else if (i12 >= 21) {
                Interpolator interpolator = r1.f18043e;
                Object tag = view.getTag(R.id.tag_on_apply_window_listener);
                q1 q1Var = new q1(view, gVar2);
                view.setTag(R.id.tag_window_insets_animation_callback, q1Var);
                if (tag == null) {
                    view.setOnApplyWindowInsetsListener(q1Var);
                }
            }
            this.U = new WeakReference(view);
            Context context = view.getContext();
            com.bumptech.glide.d.c0(context, R.attr.motionEasingStandardDecelerateInterpolator, com.bumptech.glide.c.o(0.0f, 0.0f, 0.0f, 1.0f));
            com.bumptech.glide.d.b0(context, R.attr.motionDurationMedium2, NoConst.RECORDING_TIME_INTERVAL);
            com.bumptech.glide.d.b0(context, R.attr.motionDurationShort3, 150);
            com.bumptech.glide.d.b0(context, R.attr.motionDurationShort2, 100);
            Resources resources = view.getResources();
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
            resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
            if (gVar != null) {
                j0.q(view, gVar);
                float fG = this.H;
                if (fG == -1.0f) {
                    fG = b1.g(view);
                }
                gVar.j(fG);
            } else {
                ColorStateList colorStateList = this.f3474j;
                if (colorStateList != null) {
                    b1.A(view, colorStateList);
                }
            }
            F();
            if (j0.c(view) == 0) {
                b1.B(view, 1);
            }
        }
        if (this.M == null) {
            this.M = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f3468d0);
        }
        int top = view.getTop();
        coordinatorLayout.p(i10, view);
        this.S = coordinatorLayout.getWidth();
        this.T = coordinatorLayout.getHeight();
        int height = view.getHeight();
        this.R = height;
        int iMin = this.T;
        int i13 = iMin - height;
        int i14 = this.f3485w;
        if (i13 < i14) {
            if (this.r) {
                if (i11 != -1) {
                    iMin = Math.min(iMin, i11);
                }
                this.R = iMin;
            } else {
                int iMin2 = iMin - i14;
                if (i11 != -1) {
                    iMin2 = Math.min(iMin2, i11);
                }
                this.R = iMin2;
            }
        }
        this.D = Math.max(0, this.T - this.R);
        this.E = (int) ((1.0f - this.F) * this.T);
        r();
        int i15 = this.L;
        if (i15 == 3) {
            b1.p(x(), view);
        } else if (i15 == 6) {
            b1.p(this.E, view);
        } else if (this.I && i15 == 5) {
            b1.p(this.T, view);
        } else if (i15 == 4) {
            b1.p(this.G, view);
        } else if (i15 == 1 || i15 == 2) {
            b1.p(top - view.getTop(), view);
        }
        G(this.L, false);
        this.V = new WeakReference(v(view));
        ArrayList arrayList = this.W;
        if (arrayList.size() <= 0) {
            return true;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    @Override // k0.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(w(i10, coordinatorLayout.getPaddingRight() + coordinatorLayout.getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i11, this.f3475k, marginLayoutParams.width), w(i12, coordinatorLayout.getPaddingBottom() + coordinatorLayout.getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, this.l, marginLayoutParams.height));
        return true;
    }

    @Override // k0.a
    public final boolean i(View view) {
        WeakReference weakReference = this.V;
        return (weakReference == null || view != weakReference.get() || this.L == 3) ? false : true;
    }

    @Override // k0.a
    public final void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference weakReference = this.V;
        if (view2 != (weakReference != null ? (View) weakReference.get() : null)) {
            return;
        }
        int top = view.getTop();
        int i13 = top - i11;
        if (i11 > 0) {
            if (i13 < x()) {
                int iX = top - x();
                iArr[1] = iX;
                b1.p(-iX, view);
                C(3);
            } else {
                if (!this.K) {
                    return;
                }
                iArr[1] = i11;
                b1.p(-i11, view);
                C(1);
            }
        } else if (i11 < 0 && !view2.canScrollVertically(-1)) {
            int i14 = this.G;
            if (i13 > i14 && !this.I) {
                int i15 = top - i14;
                iArr[1] = i15;
                b1.p(-i15, view);
                C(4);
            } else {
                if (!this.K) {
                    return;
                }
                iArr[1] = i11;
                b1.p(-i11, view);
                C(1);
            }
        }
        u(view.getTop());
        this.O = i11;
        this.P = true;
    }

    @Override // k0.a
    public final void m(View view, Parcelable parcelable) {
        w6.a aVar = (w6.a) parcelable;
        int i10 = this.f3461a;
        if (i10 != 0) {
            if (i10 == -1 || (i10 & 1) == 1) {
                this.f3469e = aVar.f17619d;
            }
            if (i10 == -1 || (i10 & 2) == 2) {
                this.f3463b = aVar.f17620e;
            }
            if (i10 == -1 || (i10 & 4) == 4) {
                this.I = aVar.f17621f;
            }
            if (i10 == -1 || (i10 & 8) == 8) {
                this.J = aVar.f17622g;
            }
        }
        int i11 = aVar.f17618c;
        if (i11 == 1 || i11 == 2) {
            this.L = 4;
        } else {
            this.L = i11;
        }
    }

    @Override // k0.a
    public final Parcelable n(View view) {
        return new w6.a(View.BaseSavedState.EMPTY_STATE, this);
    }

    @Override // k0.a
    public final boolean o(View view, int i10, int i11) {
        this.O = 0;
        this.P = false;
        return (i10 & 2) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ae  */
    @Override // k0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(View view, View view2, int i10) {
        float yVelocity;
        int i11 = 3;
        if (view.getTop() == x()) {
            C(3);
            return;
        }
        WeakReference weakReference = this.V;
        if (weakReference != null && view2 == weakReference.get() && this.P) {
            if (this.O > 0) {
                if (!this.f3463b && view.getTop() > this.E) {
                    i11 = 6;
                }
            } else if (this.I) {
                VelocityTracker velocityTracker = this.X;
                if (velocityTracker == null) {
                    yVelocity = 0.0f;
                } else {
                    velocityTracker.computeCurrentVelocity(1000, this.f3465c);
                    yVelocity = this.X.getYVelocity(this.Y);
                }
                if (D(view, yVelocity)) {
                    i11 = 5;
                }
            } else if (this.O == 0) {
                int top = view.getTop();
                if (!this.f3463b) {
                    int i12 = this.E;
                    if (top < i12) {
                        if (top >= Math.abs(top - this.G)) {
                        }
                    } else if (Math.abs(top - i12) < Math.abs(top - this.G)) {
                    }
                    i11 = 6;
                } else if (Math.abs(top - this.D) >= Math.abs(top - this.G)) {
                    i11 = 4;
                }
            } else {
                if (!this.f3463b) {
                    int top2 = view.getTop();
                    if (Math.abs(top2 - this.E) < Math.abs(top2 - this.G)) {
                    }
                }
                i11 = 4;
            }
            E(view, i11, false);
            this.P = false;
        }
    }

    @Override // k0.a
    public final boolean q(View view, MotionEvent motionEvent) {
        if (!view.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        int i10 = this.L;
        if (i10 == 1 && actionMasked == 0) {
            return true;
        }
        d dVar = this.M;
        if (dVar != null && (this.K || i10 == 1)) {
            dVar.i(motionEvent);
        }
        if (actionMasked == 0) {
            this.Y = -1;
            this.Z = -1;
            VelocityTracker velocityTracker = this.X;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.X = null;
            }
        }
        if (this.X == null) {
            this.X = VelocityTracker.obtain();
        }
        this.X.addMovement(motionEvent);
        if (this.M != null && ((this.K || this.L == 1) && actionMasked == 2 && !this.N)) {
            float fAbs = Math.abs(this.Z - motionEvent.getY());
            d dVar2 = this.M;
            if (fAbs > dVar2.f5175b) {
                dVar2.b(motionEvent.getPointerId(motionEvent.getActionIndex()), view);
            }
        }
        return !this.N;
    }

    public final void r() {
        int iT = t();
        if (this.f3463b) {
            this.G = Math.max(this.T - iT, this.D);
        } else {
            this.G = this.T - iT;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float s() {
        WeakReference weakReference;
        WindowInsets rootWindowInsets;
        float f10;
        float f11 = 0.0f;
        if (this.f3473i != null && (weakReference = this.U) != null && weakReference.get() != null && Build.VERSION.SDK_INT >= 31) {
            View view = (View) this.U.get();
            if (z() && (rootWindowInsets = view.getRootWindowInsets()) != null) {
                g gVar = this.f3473i;
                float fA = gVar.f10920a.f10904a.f10945e.a(gVar.g());
                RoundedCorner roundedCorner = rootWindowInsets.getRoundedCorner(0);
                if (roundedCorner != null) {
                    float radius = roundedCorner.getRadius();
                    f10 = (radius <= 0.0f || fA <= 0.0f) ? 0.0f : radius / fA;
                }
                g gVar2 = this.f3473i;
                float fA2 = gVar2.f10920a.f10904a.f10946f.a(gVar2.g());
                RoundedCorner roundedCorner2 = rootWindowInsets.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                    float radius2 = roundedCorner2.getRadius();
                    if (radius2 > 0.0f && fA2 > 0.0f) {
                        f11 = radius2 / fA2;
                    }
                }
                return Math.max(f10, f11);
            }
        }
        return 0.0f;
    }

    public final int t() {
        int i10;
        return this.f3470f ? Math.min(Math.max(this.f3471g, this.T - ((this.S * 9) / 16)), this.R) + this.f3484v : (this.f3477n || this.f3478o || (i10 = this.f3476m) <= 0) ? this.f3469e + this.f3484v : Math.max(this.f3469e, i10 + this.f3472h);
    }

    public final void u(int i10) {
        if (((View) this.U.get()) != null) {
            ArrayList arrayList = this.W;
            if (arrayList.isEmpty()) {
                return;
            }
            int i11 = this.G;
            if (i10 <= i11 && i11 != x()) {
                x();
            }
            if (arrayList.size() <= 0) {
                return;
            }
            g.b.t(arrayList.get(0));
            throw null;
        }
    }

    public final int x() {
        if (this.f3463b) {
            return this.D;
        }
        return Math.max(this.C, this.r ? 0 : this.f3485w);
    }

    public final int y(int i10) {
        if (i10 == 3) {
            return x();
        }
        if (i10 == 4) {
            return this.G;
        }
        if (i10 == 5) {
            return this.T;
        }
        if (i10 == 6) {
            return this.E;
        }
        throw new IllegalArgumentException(da.b.a(i10, "Invalid state to get top offset: "));
    }

    public final boolean z() {
        WeakReference weakReference = this.U;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        int[] iArr = new int[2];
        ((View) this.U.get()).getLocationOnScreen(iArr);
        return iArr[1] == 0;
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int i10;
        super(0);
        this.f3461a = 0;
        this.f3463b = true;
        this.f3475k = -1;
        this.l = -1;
        this.A = new f(this);
        this.F = 0.5f;
        this.H = -1.0f;
        this.K = true;
        this.L = 4;
        this.Q = 0.1f;
        this.W = new ArrayList();
        this.Z = -1;
        this.f3466c0 = new SparseIntArray();
        this.f3468d0 = new b(this, 1);
        this.f3472h = context.getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13031b);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            this.f3474j = com.bumptech.glide.c.w(context, typedArrayObtainStyledAttributes, 3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            this.f3487y = new j(j.b(context, attributeSet, R.attr.bottomSheetStyle, R.style.Widget_Design_BottomSheet_Modal));
        }
        j jVar = this.f3487y;
        if (jVar != null) {
            g gVar = new g(jVar);
            this.f3473i = gVar;
            gVar.i(context);
            ColorStateList colorStateList = this.f3474j;
            if (colorStateList != null) {
                this.f3473i.k(colorStateList);
            } else {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(android.R.attr.colorBackground, typedValue, true);
                this.f3473i.setTint(typedValue.data);
            }
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(s(), 1.0f);
        this.B = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.B.addUpdateListener(new p7.b(2, this));
        if (Build.VERSION.SDK_INT >= 21) {
            this.H = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
        }
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            this.f3475k = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            this.l = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, -1);
        }
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(9);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            A(i10);
        } else {
            A(typedArrayObtainStyledAttributes.getDimensionPixelSize(9, -1));
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(8, false);
        if (this.I != z) {
            this.I = z;
            if (!z && this.L == 5) {
                B(4);
            }
            F();
        }
        this.f3477n = typedArrayObtainStyledAttributes.getBoolean(13, false);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        if (this.f3463b != z4) {
            this.f3463b = z4;
            if (this.U != null) {
                r();
            }
            C((this.f3463b && this.L == 6) ? 3 : this.L);
            G(this.L, true);
            F();
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(12, false);
        this.K = typedArrayObtainStyledAttributes.getBoolean(4, true);
        this.f3461a = typedArrayObtainStyledAttributes.getInt(10, 0);
        float f10 = typedArrayObtainStyledAttributes.getFloat(7, 0.5f);
        if (f10 > 0.0f && f10 < 1.0f) {
            this.F = f10;
            if (this.U != null) {
                this.E = (int) ((1.0f - f10) * this.T);
            }
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(5);
            if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
                int i11 = typedValuePeekValue2.data;
                if (i11 >= 0) {
                    this.C = i11;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            } else {
                int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset >= 0) {
                    this.C = dimensionPixelOffset;
                    G(this.L, true);
                } else {
                    throw new IllegalArgumentException("offset must be greater than or equal to 0");
                }
            }
            this.f3467d = typedArrayObtainStyledAttributes.getInt(11, 500);
            this.f3478o = typedArrayObtainStyledAttributes.getBoolean(17, false);
            this.f3479p = typedArrayObtainStyledAttributes.getBoolean(18, false);
            this.f3480q = typedArrayObtainStyledAttributes.getBoolean(19, false);
            this.r = typedArrayObtainStyledAttributes.getBoolean(20, true);
            this.f3481s = typedArrayObtainStyledAttributes.getBoolean(14, false);
            this.f3482t = typedArrayObtainStyledAttributes.getBoolean(15, false);
            this.f3483u = typedArrayObtainStyledAttributes.getBoolean(16, false);
            this.f3486x = typedArrayObtainStyledAttributes.getBoolean(23, true);
            typedArrayObtainStyledAttributes.recycle();
            this.f3465c = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
    }

    @Override // k0.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
    }
}

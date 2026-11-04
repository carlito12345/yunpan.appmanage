package f1;

import a9.o;
import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import androidx.activity.h;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.o0;
import java.util.Arrays;
import x0.b1;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: v, reason: collision with root package name */
    public static final o0 f5173v = new o0(4);

    /* renamed from: a, reason: collision with root package name */
    public int f5174a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5175b;

    /* renamed from: d, reason: collision with root package name */
    public float[] f5177d;

    /* renamed from: e, reason: collision with root package name */
    public float[] f5178e;

    /* renamed from: f, reason: collision with root package name */
    public float[] f5179f;

    /* renamed from: g, reason: collision with root package name */
    public float[] f5180g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f5181h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f5182i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f5183j;

    /* renamed from: k, reason: collision with root package name */
    public int f5184k;
    public VelocityTracker l;

    /* renamed from: m, reason: collision with root package name */
    public final float f5185m;

    /* renamed from: n, reason: collision with root package name */
    public final float f5186n;

    /* renamed from: o, reason: collision with root package name */
    public final int f5187o;

    /* renamed from: p, reason: collision with root package name */
    public final OverScroller f5188p;

    /* renamed from: q, reason: collision with root package name */
    public final o f5189q;
    public View r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5190s;

    /* renamed from: t, reason: collision with root package name */
    public final CoordinatorLayout f5191t;

    /* renamed from: c, reason: collision with root package name */
    public int f5176c = -1;

    /* renamed from: u, reason: collision with root package name */
    public final h f5192u = new h(8, this);

    public d(Context context, CoordinatorLayout coordinatorLayout, o oVar) {
        if (coordinatorLayout == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (oVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f5191t = coordinatorLayout;
        this.f5189q = oVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f5187o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f5175b = viewConfiguration.getScaledTouchSlop();
        this.f5185m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f5186n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f5188p = new OverScroller(context, f5173v);
    }

    public final void a() {
        this.f5176c = -1;
        float[] fArr = this.f5177d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f5178e, 0.0f);
            Arrays.fill(this.f5179f, 0.0f);
            Arrays.fill(this.f5180g, 0.0f);
            Arrays.fill(this.f5181h, 0);
            Arrays.fill(this.f5182i, 0);
            Arrays.fill(this.f5183j, 0);
            this.f5184k = 0;
        }
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    public final void b(int i10, View view) {
        ViewParent parent = view.getParent();
        CoordinatorLayout coordinatorLayout = this.f5191t;
        if (parent != coordinatorLayout) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + coordinatorLayout + ")");
        }
        this.r = view;
        this.f5176c = i10;
        this.f5189q.U(i10, view);
        m(1);
    }

    public final boolean c(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        o oVar = this.f5189q;
        boolean z = oVar.O(view) > 0;
        boolean z4 = oVar.P() > 0;
        if (!z || !z4) {
            return z ? Math.abs(f10) > ((float) this.f5175b) : z4 && Math.abs(f11) > ((float) this.f5175b);
        }
        float f12 = (f11 * f11) + (f10 * f10);
        int i10 = this.f5175b;
        return f12 > ((float) (i10 * i10));
    }

    public final void d(int i10) {
        float[] fArr = this.f5177d;
        if (fArr != null) {
            int i11 = this.f5184k;
            int i12 = 1 << i10;
            if ((i11 & i12) != 0) {
                fArr[i10] = 0.0f;
                this.f5178e[i10] = 0.0f;
                this.f5179f[i10] = 0.0f;
                this.f5180g[i10] = 0.0f;
                this.f5181h[i10] = 0;
                this.f5182i[i10] = 0;
                this.f5183j[i10] = 0;
                this.f5184k = (i12 ^ (-1)) & i11;
            }
        }
    }

    public final int e(int i10, int i11, int i12) {
        if (i10 == 0) {
            return 0;
        }
        float width = this.f5191t.getWidth() / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i10) / r0) - 0.5f) * 0.47123894f)) * width) + width;
        int iAbs = Math.abs(i11);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f5174a == 2) {
            OverScroller overScroller = this.f5188p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.r.getLeft();
            int top = currY - this.r.getTop();
            if (left != 0) {
                b1.o(left, this.r);
            }
            if (top != 0) {
                b1.p(top, this.r);
            }
            if (left != 0 || top != 0) {
                this.f5189q.W(this.r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                this.f5191t.post(this.f5192u);
            }
        }
        return this.f5174a == 2;
    }

    public final View g(int i10, int i11) {
        CoordinatorLayout coordinatorLayout = this.f5191t;
        for (int childCount = coordinatorLayout.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f5189q.getClass();
            View childAt = coordinatorLayout.getChildAt(childCount);
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i10, int i11, int i12, int i13) {
        float f10;
        float f11;
        float f12;
        float f13;
        int left = this.r.getLeft();
        int top = this.r.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        OverScroller overScroller = this.f5188p;
        if (i14 == 0 && i15 == 0) {
            overScroller.abortAnimation();
            m(0);
            return false;
        }
        View view = this.r;
        int i16 = (int) this.f5186n;
        int i17 = (int) this.f5185m;
        int iAbs = Math.abs(i12);
        if (iAbs < i16) {
            i12 = 0;
        } else if (iAbs > i17) {
            i12 = i12 > 0 ? i17 : -i17;
        }
        int iAbs2 = Math.abs(i13);
        if (iAbs2 < i16) {
            i13 = 0;
        } else if (iAbs2 > i17) {
            i13 = i13 > 0 ? i17 : -i17;
        }
        int iAbs3 = Math.abs(i14);
        int iAbs4 = Math.abs(i15);
        int iAbs5 = Math.abs(i12);
        int iAbs6 = Math.abs(i13);
        int i18 = iAbs5 + iAbs6;
        int i19 = iAbs3 + iAbs4;
        if (i12 != 0) {
            f10 = iAbs5;
            f11 = i18;
        } else {
            f10 = iAbs3;
            f11 = i19;
        }
        float f14 = f10 / f11;
        if (i13 != 0) {
            f12 = iAbs6;
            f13 = i18;
        } else {
            f12 = iAbs4;
            f13 = i19;
        }
        float f15 = f12 / f13;
        o oVar = this.f5189q;
        overScroller.startScroll(left, top, i14, i15, (int) ((e(i15, i13, oVar.P()) * f15) + (e(i14, i12, oVar.O(view)) * f14)));
        m(2);
        return true;
    }

    public final void i(MotionEvent motionEvent) {
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y6 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x10, (int) y6);
            k(x10, y6, pointerId);
            p(pointerId, viewG);
            int i11 = this.f5181h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f5174a == 1) {
                j();
            }
            a();
            return;
        }
        o oVar = this.f5189q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f5174a == 1) {
                    this.f5190s = true;
                    oVar.X(this.r, 0.0f, 0.0f);
                    this.f5190s = false;
                    if (this.f5174a == 1) {
                        m(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x11 = motionEvent.getX(actionIndex);
                float y10 = motionEvent.getY(actionIndex);
                k(x11, y10, pointerId2);
                if (this.f5174a == 0) {
                    p(pointerId2, g((int) x11, (int) y10));
                    int i12 = this.f5181h[pointerId2];
                    return;
                }
                int i13 = (int) x11;
                int i14 = (int) y10;
                View view = this.r;
                if (view != null && i13 >= view.getLeft() && i13 < view.getRight() && i14 >= view.getTop() && i14 < view.getBottom()) {
                    i = 1;
                }
                if (i != 0) {
                    p(pointerId2, this.r);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f5174a == 1 && pointerId3 == this.f5176c) {
                int pointerCount = motionEvent.getPointerCount();
                while (true) {
                    if (i >= pointerCount) {
                        i10 = -1;
                        break;
                    }
                    int pointerId4 = motionEvent.getPointerId(i);
                    if (pointerId4 != this.f5176c) {
                        View viewG2 = g((int) motionEvent.getX(i), (int) motionEvent.getY(i));
                        View view2 = this.r;
                        if (viewG2 == view2 && p(pointerId4, view2)) {
                            i10 = this.f5176c;
                            break;
                        }
                    }
                    i++;
                }
                if (i10 == -1) {
                    j();
                }
            }
            d(pointerId3);
            return;
        }
        if (this.f5174a == 1) {
            int i15 = this.f5176c;
            if (((this.f5184k & (1 << i15)) != 0 ? 1 : 0) == 0) {
                return;
            }
            int iFindPointerIndex = motionEvent.findPointerIndex(i15);
            float x12 = motionEvent.getX(iFindPointerIndex);
            float y11 = motionEvent.getY(iFindPointerIndex);
            float[] fArr = this.f5179f;
            int i16 = this.f5176c;
            int i17 = (int) (x12 - fArr[i16]);
            int i18 = (int) (y11 - this.f5180g[i16]);
            int left = this.r.getLeft() + i17;
            int top = this.r.getTop() + i18;
            int left2 = this.r.getLeft();
            int top2 = this.r.getTop();
            if (i17 != 0) {
                left = oVar.v(left, this.r);
                b1.o(left - left2, this.r);
            }
            if (i18 != 0) {
                top = oVar.w(top, this.r);
                b1.p(top - top2, this.r);
            }
            if (i17 != 0 || i18 != 0) {
                oVar.W(this.r, left, top);
            }
            l(motionEvent);
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        for (int i19 = 0; i19 < pointerCount2; i19++) {
            int pointerId5 = motionEvent.getPointerId(i19);
            if ((this.f5184k & (1 << pointerId5)) != 0) {
                float x13 = motionEvent.getX(i19);
                float y12 = motionEvent.getY(i19);
                float f10 = x13 - this.f5177d[pointerId5];
                float f11 = y12 - this.f5178e[pointerId5];
                Math.abs(f10);
                Math.abs(f11);
                int i20 = this.f5181h[pointerId5];
                Math.abs(f11);
                Math.abs(f10);
                int i21 = this.f5181h[pointerId5];
                Math.abs(f10);
                Math.abs(f11);
                int i22 = this.f5181h[pointerId5];
                Math.abs(f11);
                Math.abs(f10);
                int i23 = this.f5181h[pointerId5];
                if (this.f5174a == 1) {
                    break;
                }
                View viewG3 = g((int) x13, (int) y12);
                if (c(viewG3, f10, f11) && p(pointerId5, viewG3)) {
                    break;
                }
            }
        }
        l(motionEvent);
    }

    public final void j() {
        VelocityTracker velocityTracker = this.l;
        float f10 = this.f5185m;
        velocityTracker.computeCurrentVelocity(1000, f10);
        float xVelocity = this.l.getXVelocity(this.f5176c);
        float f11 = this.f5186n;
        float fAbs = Math.abs(xVelocity);
        float f12 = 0.0f;
        if (fAbs < f11) {
            xVelocity = 0.0f;
        } else if (fAbs > f10) {
            xVelocity = xVelocity > 0.0f ? f10 : -f10;
        }
        float yVelocity = this.l.getYVelocity(this.f5176c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 >= f11) {
            if (fAbs2 > f10) {
                if (yVelocity <= 0.0f) {
                    f10 = -f10;
                }
                f12 = f10;
            } else {
                f12 = yVelocity;
            }
        }
        this.f5190s = true;
        this.f5189q.X(this.r, xVelocity, f12);
        this.f5190s = false;
        if (this.f5174a == 1) {
            m(0);
        }
    }

    public final void k(float f10, float f11, int i10) {
        float[] fArr = this.f5177d;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f5178e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f5179f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f5180g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f5181h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f5182i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f5183j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f5177d = fArr2;
            this.f5178e = fArr3;
            this.f5179f = fArr4;
            this.f5180g = fArr5;
            this.f5181h = iArr;
            this.f5182i = iArr2;
            this.f5183j = iArr3;
        }
        float[] fArr9 = this.f5177d;
        this.f5179f[i10] = f10;
        fArr9[i10] = f10;
        float[] fArr10 = this.f5178e;
        this.f5180g[i10] = f11;
        fArr10[i10] = f11;
        int[] iArr7 = this.f5181h;
        int i12 = (int) f10;
        int i13 = (int) f11;
        CoordinatorLayout coordinatorLayout = this.f5191t;
        int left = coordinatorLayout.getLeft();
        int i14 = this.f5187o;
        int i15 = i12 < left + i14 ? 1 : 0;
        if (i13 < coordinatorLayout.getTop() + i14) {
            i15 |= 4;
        }
        if (i12 > coordinatorLayout.getRight() - i14) {
            i15 |= 2;
        }
        if (i13 > coordinatorLayout.getBottom() - i14) {
            i15 |= 8;
        }
        iArr7[i10] = i15;
        this.f5184k |= 1 << i10;
    }

    public final void l(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if ((this.f5184k & (1 << pointerId)) != 0) {
                float x10 = motionEvent.getX(i10);
                float y6 = motionEvent.getY(i10);
                this.f5179f[pointerId] = x10;
                this.f5180g[pointerId] = y6;
            }
        }
    }

    public final void m(int i10) {
        this.f5191t.removeCallbacks(this.f5192u);
        if (this.f5174a != i10) {
            this.f5174a = i10;
            this.f5189q.V(i10);
            if (this.f5174a == 0) {
                this.r = null;
            }
        }
    }

    public final boolean n(int i10, int i11) {
        if (this.f5190s) {
            return h(i10, i11, (int) this.l.getXVelocity(this.f5176c), (int) this.l.getYVelocity(this.f5176c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean o(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        this.l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y6 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            k(x10, y6, pointerId);
            View viewG2 = g((int) x10, (int) y6);
            if (viewG2 == this.r && this.f5174a == 2) {
                p(pointerId, viewG2);
            }
            int i10 = this.f5181h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked != 3) {
                if (actionMasked == 5) {
                    int pointerId2 = motionEvent.getPointerId(actionIndex);
                    float x11 = motionEvent.getX(actionIndex);
                    float y10 = motionEvent.getY(actionIndex);
                    k(x11, y10, pointerId2);
                    int i11 = this.f5174a;
                    if (i11 == 0) {
                        int i12 = this.f5181h[pointerId2];
                    } else if (i11 == 2 && (viewG = g((int) x11, (int) y10)) == this.r) {
                        p(pointerId2, viewG);
                    }
                } else if (actionMasked == 6) {
                    d(motionEvent.getPointerId(actionIndex));
                }
            }
        } else if (this.f5177d != null && this.f5178e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i13 = 0; i13 < pointerCount; i13++) {
                int pointerId3 = motionEvent.getPointerId(i13);
                if ((this.f5184k & (1 << pointerId3)) != 0) {
                    float x12 = motionEvent.getX(i13);
                    float y11 = motionEvent.getY(i13);
                    float f10 = x12 - this.f5177d[pointerId3];
                    float f11 = y11 - this.f5178e[pointerId3];
                    View viewG3 = g((int) x12, (int) y11);
                    boolean z = viewG3 != null && c(viewG3, f10, f11);
                    if (z) {
                        int left = viewG3.getLeft();
                        o oVar = this.f5189q;
                        int iV = oVar.v(((int) f10) + left, viewG3);
                        int top = viewG3.getTop();
                        int iW = oVar.w(((int) f11) + top, viewG3);
                        int iO = oVar.O(viewG3);
                        int iP = oVar.P();
                        if ((iO == 0 || (iO > 0 && iV == left)) && (iP == 0 || (iP > 0 && iW == top))) {
                            break;
                        }
                        Math.abs(f10);
                        Math.abs(f11);
                        int i14 = this.f5181h[pointerId3];
                        Math.abs(f11);
                        Math.abs(f10);
                        int i15 = this.f5181h[pointerId3];
                        Math.abs(f10);
                        Math.abs(f11);
                        int i16 = this.f5181h[pointerId3];
                        Math.abs(f11);
                        Math.abs(f10);
                        int i17 = this.f5181h[pointerId3];
                        if (this.f5174a == 1 || (z && p(pointerId3, viewG3))) {
                            break;
                        }
                    }
                }
            }
            l(motionEvent);
        }
        return this.f5174a == 1;
    }

    public final boolean p(int i10, View view) {
        if (view == this.r && this.f5176c == i10) {
            return true;
        }
        if (view == null || !this.f5189q.c0(i10, view)) {
            return false;
        }
        this.f5176c = i10;
        b(i10, view);
        return true;
    }
}

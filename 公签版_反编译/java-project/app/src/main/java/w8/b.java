package w8;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SeekBar;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import h4.q;
import k4.g;
import v8.h;
import x0.s;
import x0.w;

/* loaded from: classes.dex */
public final class b implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public v8.a f17632a;

    /* renamed from: b, reason: collision with root package name */
    public h f17633b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17634c = true;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f17635d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public int f17636e;

    /* renamed from: f, reason: collision with root package name */
    public int f17637f;

    /* renamed from: g, reason: collision with root package name */
    public int f17638g;

    /* renamed from: h, reason: collision with root package name */
    public int f17639h;

    /* renamed from: i, reason: collision with root package name */
    public double f17640i;

    /* renamed from: j, reason: collision with root package name */
    public View f17641j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ int f17642k;
    public float l;

    /* renamed from: m, reason: collision with root package name */
    public float f17643m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f17644n;

    public b(int i10) {
        this.f17642k = i10;
    }

    public final float a(float f10, float f11) {
        if (f11 <= 0.0f) {
            return 0.5f;
        }
        float f12 = f10 / f11;
        if (f12 > 0.99f) {
            return 1.0f;
        }
        if (f12 < 0.01f) {
            return 0.0f;
        }
        if (f12 <= 0.49f || f12 >= 0.51f) {
            return f12;
        }
        return 0.5f;
    }

    public final boolean b(View view) {
        RecyclerView.LayoutManager layoutManager;
        if (!(view instanceof RecyclerView) || ((layoutManager = ((RecyclerView) view).getLayoutManager()) != null && (layoutManager.canScrollVertically() || layoutManager.canScrollHorizontally()))) {
            return view.isEnabled();
        }
        return false;
    }

    public final boolean c(h hVar, View view, MotionEvent motionEvent) {
        motionEvent.offsetLocation(hVar.getScrollX() - view.getLeft(), hVar.getScrollY() - view.getTop());
        return view.dispatchTouchEvent(motionEvent);
    }

    public final View d(ViewGroup viewGroup, MotionEvent motionEvent) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            int[] iArr = new int[2];
            childAt.getLocationOnScreen(iArr);
            int i11 = iArr[0];
            int i12 = iArr[1];
            int width = childAt.getWidth() + i11;
            int height = childAt.getHeight() + i12;
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            if (rawX >= i11 && rawX <= width && rawY >= i12 && rawY <= height) {
                boolean z = childAt instanceof ViewGroup;
                if ((z && childAt.isScrollContainer()) ? b(childAt) : ((childAt instanceof s) || (childAt instanceof w) || (childAt instanceof WebView) || (childAt instanceof ScrollView) || (childAt instanceof ListView) || (childAt instanceof SeekBar) || (childAt instanceof g) || (childAt instanceof ViewPager2)) ? b(childAt) : false) {
                    return childAt;
                }
                if (z) {
                    return d((ViewGroup) childAt, motionEvent);
                }
            }
        }
        return null;
    }

    public final boolean e(float f10, float f11, float f12, float f13) {
        double dApplyDimension = TypedValue.applyDimension(1, this.f17640i > 0.0d ? (int) Math.ceil(r0 / 15.0d) : 1, Resources.getSystem().getDisplayMetrics());
        return ((double) Math.abs(f10 - f11)) >= dApplyDimension || ((double) Math.abs(f12 - f13)) >= dApplyDimension;
    }

    public final void f() {
        Display defaultDisplay;
        v8.a aVar = this.f17632a;
        double dSqrt = 0.0d;
        if (aVar != null && (defaultDisplay = aVar.f16657d.getDefaultDisplay()) != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getMetrics(displayMetrics);
            defaultDisplay.getRealSize(new Point());
            dSqrt = Math.sqrt(Math.pow(r2.y / displayMetrics.ydpi, 2.0d) + Math.pow(r2.x / displayMetrics.xdpi, 2.0d));
        }
        this.f17640i = dSqrt;
    }

    public final void g() {
        ContextWrapper contextWrapper;
        v8.a aVar = this.f17632a;
        if (aVar == null || (contextWrapper = aVar.f16655b) == null) {
            return;
        }
        View decorView = this.f17633b;
        if (decorView == null && (contextWrapper instanceof Activity)) {
            decorView = ((Activity) contextWrapper).getWindow().getDecorView();
        }
        if (decorView == null) {
            return;
        }
        Rect rect = this.f17635d;
        decorView.getWindowVisibleDisplayFrame(rect);
        int i10 = rect.right;
        int i11 = rect.left;
        this.f17636e = i10 - i11;
        this.f17637f = rect.bottom - rect.top;
        this.f17638g = Math.max(i11, 0);
        this.f17639h = Math.max(rect.top, 0);
    }

    public final void h(float f10, float f11) {
        h hVar;
        h hVar2;
        Window window;
        int i10 = (int) f10;
        int i11 = (int) f11;
        if (this.f17634c) {
            i(i10, i11);
            return;
        }
        v8.a aVar = this.f17632a;
        Rect rect = null;
        if (aVar != null) {
            ContextWrapper contextWrapper = aVar.f16655b;
            if ((contextWrapper instanceof Activity) && (window = ((Activity) contextWrapper).getWindow()) != null && Build.VERSION.SDK_INT >= 28) {
                View decorView = window.getDecorView();
                WindowInsets rootWindowInsets = decorView != null ? decorView.getRootWindowInsets() : null;
                DisplayCutout displayCutout = rootWindowInsets != null ? rootWindowInsets.getDisplayCutout() : null;
                if (displayCutout != null) {
                    rect = new Rect(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                }
            }
        }
        if (rect == null || (rect.left == 0 && rect.right == 0 && rect.top == 0 && rect.bottom == 0)) {
            i(i10, i11);
            return;
        }
        v8.a aVar2 = this.f17632a;
        int height = 0;
        int width = (aVar2 == null || (hVar = aVar2.f16656c) == null) ? 0 : hVar.getWidth();
        v8.a aVar3 = this.f17632a;
        if (aVar3 != null && (hVar2 = aVar3.f16656c) != null) {
            height = hVar2.getHeight();
        }
        int i12 = this.f17636e;
        int i13 = this.f17637f;
        int i14 = rect.left - this.f17638g;
        if (i10 < i14) {
            i10 = i14;
        } else {
            int i15 = (i12 - rect.right) - width;
            if (i10 > i15) {
                i10 = i15;
            }
        }
        int i16 = rect.top - this.f17639h;
        if (i11 < i16) {
            i11 = i16;
        } else {
            int i17 = (i13 - rect.bottom) - height;
            if (i11 > i17) {
                i11 = i17;
            }
        }
        i(i10, i11);
    }

    public final void i(int i10, int i11) {
        v8.a aVar = this.f17632a;
        if (aVar == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = aVar.f16658e;
        if (layoutParams.gravity == 51 && layoutParams.x == i10 && layoutParams.y == i11) {
            return;
        }
        layoutParams.x = i10;
        layoutParams.y = i11;
        layoutParams.gravity = 51;
        aVar.u();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
    
        if (r4 != 3) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0151, code lost:
    
        if (r4 != 3) goto L95;
     */
    /* JADX WARN: Finally extract failed */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        h hVar;
        View view2;
        float fMax = 0.0f;
        v8.a aVar = this.f17632a;
        h hVar2 = this.f17633b;
        if (aVar == null || hVar2 == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            g();
            f();
            this.f17641j = null;
            View viewD = d(hVar2, motionEvent);
            if (viewD != null && c(hVar2, viewD, motionEvent)) {
                this.f17641j = viewD;
                return true;
            }
        } else {
            if ((action == 1 || action == 3) && (view2 = this.f17641j) != null) {
                try {
                    boolean zC = c(hVar2, view2, motionEvent);
                    this.f17641j = null;
                    return zC;
                } catch (Throwable th2) {
                    this.f17641j = null;
                    throw th2;
                }
            }
            View view3 = this.f17641j;
            if (view3 != null) {
                return c(hVar2, view3, motionEvent);
            }
        }
        switch (this.f17642k) {
            case 0:
                int action2 = motionEvent.getAction();
                if (action2 != 0) {
                    if (action2 != 1) {
                        if (action2 == 2) {
                            float rawX = motionEvent.getRawX() - this.f17638g;
                            float rawY = motionEvent.getRawY() - this.f17639h;
                            float fMax2 = rawX - this.l;
                            float fMax3 = rawY - this.f17643m;
                            v8.a aVar2 = this.f17632a;
                            if (aVar2 == null || (aVar2.f16658e.flags & 512) == 0) {
                                fMax2 = Math.max(fMax2, 0.0f);
                                fMax3 = Math.max(fMax3, 0.0f);
                            }
                            h(fMax2, fMax3);
                            if (!this.f17644n && e(this.l, motionEvent.getX(), this.f17643m, motionEvent.getY())) {
                                this.f17644n = true;
                            }
                        }
                    }
                    return this.f17644n;
                }
                this.l = motionEvent.getX();
                this.f17643m = motionEvent.getY();
                return this.f17644n;
            default:
                int action3 = motionEvent.getAction();
                if (action3 != 0) {
                    if (action3 != 1) {
                        if (action3 == 2) {
                            float rawX2 = motionEvent.getRawX() - this.f17638g;
                            float rawY2 = motionEvent.getRawY() - this.f17639h;
                            float fMax4 = rawX2 - this.l;
                            float fMax5 = rawY2 - this.f17643m;
                            v8.a aVar3 = this.f17632a;
                            if (aVar3 == null || (aVar3.f16658e.flags & 512) == 0) {
                                fMax4 = Math.max(fMax4, 0.0f);
                                fMax5 = Math.max(fMax5, 0.0f);
                            }
                            h(fMax4, fMax5);
                            if (!this.f17644n && e(this.l, motionEvent.getX(), this.f17643m, motionEvent.getY())) {
                                this.f17644n = true;
                            }
                        }
                    }
                    if (this.f17644n) {
                        float rawX3 = motionEvent.getRawX();
                        float f10 = rawX3 - this.f17638g;
                        float rawY3 = motionEvent.getRawY() - this.f17639h;
                        float fMax6 = Math.max(f10 - this.l, 0.0f);
                        float f11 = this.f17636e;
                        if (f10 >= f11 / 2.0f) {
                            v8.a aVar4 = this.f17632a;
                            fMax = Math.max(f11 - ((aVar4 == null || (hVar = aVar4.f16656c) == null) ? 0 : hVar.getWidth()), 0.0f);
                        }
                        final float f12 = rawY3 - this.f17643m;
                        if (Math.abs(fMax6 - fMax) >= 1.0E-5f) {
                            long jMin = Math.min(Math.max((long) (Math.abs(fMax - fMax6) / 2.0f), 200L), 800L);
                            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: w8.c
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    b bVar = this.f17645a;
                                    bVar.getClass();
                                    bVar.h(((Float) valueAnimator.getAnimatedValue()).floatValue(), f12);
                                }
                            };
                            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fMax6, fMax);
                            valueAnimatorOfFloat.setDuration(jMin);
                            valueAnimatorOfFloat.addUpdateListener(animatorUpdateListener);
                            valueAnimatorOfFloat.addListener(new q(5, this));
                            valueAnimatorOfFloat.start();
                        }
                    }
                    try {
                        return this.f17644n;
                    } finally {
                        this.f17644n = false;
                    }
                }
                this.l = motionEvent.getX();
                this.f17643m = motionEvent.getY();
                return this.f17644n;
        }
    }
}

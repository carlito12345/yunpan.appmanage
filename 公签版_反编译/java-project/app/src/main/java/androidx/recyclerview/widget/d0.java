package androidx.recyclerview.widget;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class d0 extends v1 implements c2 {
    public static final int[] C = {R.attr.state_pressed};
    public static final int[] D = new int[0];
    public int A;
    public final z B;

    /* renamed from: a, reason: collision with root package name */
    public final int f2061a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2062b;

    /* renamed from: c, reason: collision with root package name */
    public final StateListDrawable f2063c;

    /* renamed from: d, reason: collision with root package name */
    public final Drawable f2064d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2065e;

    /* renamed from: f, reason: collision with root package name */
    public final int f2066f;

    /* renamed from: g, reason: collision with root package name */
    public final StateListDrawable f2067g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f2068h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2069i;

    /* renamed from: j, reason: collision with root package name */
    public final int f2070j;

    /* renamed from: k, reason: collision with root package name */
    public int f2071k;
    public int l;

    /* renamed from: m, reason: collision with root package name */
    public float f2072m;

    /* renamed from: n, reason: collision with root package name */
    public int f2073n;

    /* renamed from: o, reason: collision with root package name */
    public int f2074o;

    /* renamed from: p, reason: collision with root package name */
    public float f2075p;

    /* renamed from: s, reason: collision with root package name */
    public final RecyclerView f2077s;
    public final ValueAnimator z;

    /* renamed from: q, reason: collision with root package name */
    public int f2076q = 0;
    public int r = 0;

    /* renamed from: t, reason: collision with root package name */
    public boolean f2078t = false;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2079u = false;

    /* renamed from: v, reason: collision with root package name */
    public int f2080v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f2081w = 0;

    /* renamed from: x, reason: collision with root package name */
    public final int[] f2082x = new int[2];

    /* renamed from: y, reason: collision with root package name */
    public final int[] f2083y = new int[2];

    public d0(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.z = valueAnimatorOfFloat;
        this.A = 0;
        z zVar = new z(0, this);
        this.B = zVar;
        a0 a0Var = new a0(this);
        this.f2063c = stateListDrawable;
        this.f2064d = drawable;
        this.f2067g = stateListDrawable2;
        this.f2068h = drawable2;
        this.f2065e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f2066f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f2069i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f2070j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f2061a = i11;
        this.f2062b = i12;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new b0(0, this));
        valueAnimatorOfFloat.addUpdateListener(new c0(this));
        RecyclerView recyclerView2 = this.f2077s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f2077s.removeOnItemTouchListener(this);
            this.f2077s.removeOnScrollListener(a0Var);
            this.f2077s.removeCallbacks(zVar);
        }
        this.f2077s = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.f2077s.addOnItemTouchListener(this);
            this.f2077s.addOnScrollListener(a0Var);
        }
    }

    public static int g(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    @Override // androidx.recyclerview.widget.c2
    public final boolean c(MotionEvent motionEvent) {
        int i10 = this.f2080v;
        if (i10 == 1) {
            boolean zF = f(motionEvent.getX(), motionEvent.getY());
            boolean zE = e(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zF && !zE) {
                return false;
            }
            if (zE) {
                this.f2081w = 1;
                this.f2075p = (int) motionEvent.getX();
            } else if (zF) {
                this.f2081w = 2;
                this.f2072m = (int) motionEvent.getY();
            }
            h(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.c2
    public final void d(boolean z) {
    }

    public final boolean e(float f10, float f11) {
        if (f11 >= this.r - this.f2069i) {
            int i10 = this.f2074o;
            int i11 = this.f2073n;
            if (f10 >= i10 - (i11 / 2) && f10 <= (i11 / 2) + i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(float f10, float f11) {
        RecyclerView recyclerView = this.f2077s;
        WeakHashMap weakHashMap = x0.b1.f17953a;
        boolean z = x0.k0.d(recyclerView) == 1;
        int i10 = this.f2065e;
        if (z) {
            if (f10 > i10) {
                return false;
            }
        } else if (f10 < this.f2076q - i10) {
            return false;
        }
        int i11 = this.l;
        int i12 = this.f2071k / 2;
        return f11 >= ((float) (i11 - i12)) && f11 <= ((float) (i12 + i11));
    }

    public final void h(int i10) {
        z zVar = this.B;
        StateListDrawable stateListDrawable = this.f2063c;
        if (i10 == 2 && this.f2080v != 2) {
            stateListDrawable.setState(C);
            this.f2077s.removeCallbacks(zVar);
        }
        if (i10 == 0) {
            this.f2077s.invalidate();
        } else {
            i();
        }
        if (this.f2080v == 2 && i10 != 2) {
            stateListDrawable.setState(D);
            this.f2077s.removeCallbacks(zVar);
            this.f2077s.postDelayed(zVar, 1200);
        } else if (i10 == 1) {
            this.f2077s.removeCallbacks(zVar);
            this.f2077s.postDelayed(zVar, 1500);
        }
        this.f2080v = i10;
    }

    public final void i() {
        int i10 = this.A;
        ValueAnimator valueAnimator = this.z;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.v1
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, n2 n2Var) {
        int i10 = this.f2076q;
        RecyclerView recyclerView2 = this.f2077s;
        if (i10 != recyclerView2.getWidth() || this.r != recyclerView2.getHeight()) {
            this.f2076q = recyclerView2.getWidth();
            this.r = recyclerView2.getHeight();
            h(0);
            return;
        }
        if (this.A != 0) {
            if (this.f2078t) {
                int i11 = this.f2076q;
                int i12 = this.f2065e;
                int i13 = i11 - i12;
                int i14 = this.l;
                int i15 = this.f2071k;
                int i16 = i14 - (i15 / 2);
                StateListDrawable stateListDrawable = this.f2063c;
                stateListDrawable.setBounds(0, 0, i12, i15);
                int i17 = this.r;
                int i18 = this.f2066f;
                Drawable drawable = this.f2064d;
                drawable.setBounds(0, 0, i18, i17);
                WeakHashMap weakHashMap = x0.b1.f17953a;
                if (x0.k0.d(recyclerView2) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i12, i16);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i12, -i16);
                } else {
                    canvas.translate(i13, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i16);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i13, -i16);
                }
            }
            if (this.f2079u) {
                int i19 = this.r;
                int i20 = this.f2069i;
                int i21 = i19 - i20;
                int i22 = this.f2074o;
                int i23 = this.f2073n;
                int i24 = i22 - (i23 / 2);
                StateListDrawable stateListDrawable2 = this.f2067g;
                stateListDrawable2.setBounds(0, 0, i23, i20);
                int i25 = this.f2076q;
                int i26 = this.f2070j;
                Drawable drawable2 = this.f2068h;
                drawable2.setBounds(0, 0, i25, i26);
                canvas.translate(0.0f, i21);
                drawable2.draw(canvas);
                canvas.translate(i24, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i24, -i21);
            }
        }
    }

    @Override // androidx.recyclerview.widget.c2
    public final void onTouchEvent(MotionEvent motionEvent) {
        if (this.f2080v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zF = f(motionEvent.getX(), motionEvent.getY());
            boolean zE = e(motionEvent.getX(), motionEvent.getY());
            if (zF || zE) {
                if (zE) {
                    this.f2081w = 1;
                    this.f2075p = (int) motionEvent.getX();
                } else if (zF) {
                    this.f2081w = 2;
                    this.f2072m = (int) motionEvent.getY();
                }
                h(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f2080v == 2) {
            this.f2072m = 0.0f;
            this.f2075p = 0.0f;
            h(1);
            this.f2081w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f2080v == 2) {
            i();
            int i10 = this.f2081w;
            int i11 = this.f2062b;
            if (i10 == 1) {
                float x10 = motionEvent.getX();
                int[] iArr = this.f2083y;
                iArr[0] = i11;
                int i12 = this.f2076q - i11;
                iArr[1] = i12;
                float fMax = Math.max(i11, Math.min(i12, x10));
                if (Math.abs(this.f2074o - fMax) >= 2.0f) {
                    int iG = g(this.f2075p, fMax, iArr, this.f2077s.computeHorizontalScrollRange(), this.f2077s.computeHorizontalScrollOffset(), this.f2076q);
                    if (iG != 0) {
                        this.f2077s.scrollBy(iG, 0);
                    }
                    this.f2075p = fMax;
                }
            }
            if (this.f2081w == 2) {
                float y6 = motionEvent.getY();
                int[] iArr2 = this.f2082x;
                iArr2[0] = i11;
                int i13 = this.r - i11;
                iArr2[1] = i13;
                float fMax2 = Math.max(i11, Math.min(i13, y6));
                if (Math.abs(this.l - fMax2) < 2.0f) {
                    return;
                }
                int iG2 = g(this.f2072m, fMax2, iArr2, this.f2077s.computeVerticalScrollRange(), this.f2077s.computeVerticalScrollOffset(), this.r);
                if (iG2 != 0) {
                    this.f2077s.scrollBy(0, iG2);
                }
                this.f2072m = fMax2;
            }
        }
    }
}

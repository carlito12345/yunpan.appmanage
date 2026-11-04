package b1;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.WeakHashMap;
import w.t1;
import x0.b1;
import x0.j0;

/* loaded from: classes.dex */
public final class g implements View.OnTouchListener {

    /* renamed from: s, reason: collision with root package name */
    public static final int f2502s = ViewConfiguration.getTapTimeout();

    /* renamed from: a, reason: collision with root package name */
    public final a f2503a;

    /* renamed from: b, reason: collision with root package name */
    public final AccelerateInterpolator f2504b;

    /* renamed from: c, reason: collision with root package name */
    public final ListView f2505c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.activity.h f2506d;

    /* renamed from: e, reason: collision with root package name */
    public final float[] f2507e;

    /* renamed from: f, reason: collision with root package name */
    public final float[] f2508f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2509g;

    /* renamed from: h, reason: collision with root package name */
    public final int f2510h;

    /* renamed from: i, reason: collision with root package name */
    public final float[] f2511i;

    /* renamed from: j, reason: collision with root package name */
    public final float[] f2512j;

    /* renamed from: k, reason: collision with root package name */
    public final float[] f2513k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f2514m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f2515n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f2516p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f2517q;
    public final t1 r;

    public g(t1 t1Var) {
        a aVar = new a();
        this.f2503a = aVar;
        this.f2504b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f2507e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f2508f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f2511i = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f2512j = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f2513k = fArr5;
        this.f2505c = t1Var;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = ((int) ((1575.0f * f10) + 0.5f)) / 1000.0f;
        fArr5[0] = f11;
        fArr5[1] = f11;
        float f12 = ((int) ((f10 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f12;
        fArr4[1] = f12;
        this.f2509g = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f2510h = f2502s;
        aVar.f2493a = 500;
        aVar.f2494b = 500;
        this.r = t1Var;
    }

    public static float b(float f10, float f11, float f12) {
        return f10 > f12 ? f12 : f10 < f11 ? f11 : f10;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final float a(int i10, float f10, float f11, float f12) {
        float fB;
        float interpolation;
        float fB2 = b(this.f2507e[i10] * f11, 0.0f, this.f2508f[i10]);
        float fC = c(f11 - f10, fB2) - c(f10, fB2);
        AccelerateInterpolator accelerateInterpolator = this.f2504b;
        if (fC < 0.0f) {
            interpolation = -accelerateInterpolator.getInterpolation(-fC);
        } else {
            if (fC <= 0.0f) {
                fB = 0.0f;
                if (fB != 0.0f) {
                    return 0.0f;
                }
                float f13 = this.f2511i[i10];
                float f14 = this.f2512j[i10];
                float f15 = this.f2513k[i10];
                float f16 = f13 * f12;
                return fB > 0.0f ? b(fB * f16, f14, f15) : -b((-fB) * f16, f14, f15);
            }
            interpolation = accelerateInterpolator.getInterpolation(fC);
        }
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB != 0.0f) {
        }
    }

    public final float c(float f10, float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.f2509g;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= 0.0f) {
                    return 1.0f - (f10 / f11);
                }
                if (this.f2516p && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < 0.0f) {
            return f10 / (-f11);
        }
        return 0.0f;
    }

    public final void d() {
        int i10 = 0;
        if (this.f2514m) {
            this.f2516p = false;
            return;
        }
        a aVar = this.f2503a;
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i11 = (int) (jCurrentAnimationTimeMillis - aVar.f2497e);
        int i12 = aVar.f2494b;
        if (i11 > i12) {
            i10 = i12;
        } else if (i11 >= 0) {
            i10 = i11;
        }
        aVar.f2501i = i10;
        aVar.f2500h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f2499g = jCurrentAnimationTimeMillis;
    }

    public final boolean e() {
        t1 t1Var;
        int count;
        a aVar = this.f2503a;
        float f10 = aVar.f2496d;
        int iAbs = (int) (f10 / Math.abs(f10));
        Math.abs(aVar.f2495c);
        if (iAbs == 0 || (count = (t1Var = this.r).getCount()) == 0) {
            return false;
        }
        int childCount = t1Var.getChildCount();
        int firstVisiblePosition = t1Var.getFirstVisiblePosition();
        int i10 = firstVisiblePosition + childCount;
        if (iAbs > 0) {
            if (i10 >= count && t1Var.getChildAt(childCount - 1).getBottom() <= t1Var.getHeight()) {
                return false;
            }
        } else {
            if (iAbs >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && t1Var.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i10;
        if (!this.f2517q) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                d();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                }
            }
            return false;
        }
        this.f2515n = true;
        this.l = false;
        float x10 = motionEvent.getX();
        float width = view.getWidth();
        ListView listView = this.f2505c;
        float fA = a(0, x10, width, listView.getWidth());
        float fA2 = a(1, motionEvent.getY(), view.getHeight(), listView.getHeight());
        a aVar = this.f2503a;
        aVar.f2495c = fA;
        aVar.f2496d = fA2;
        if (!this.f2516p && e()) {
            if (this.f2506d == null) {
                this.f2506d = new androidx.activity.h(5, this);
            }
            this.f2516p = true;
            this.f2514m = true;
            if (this.l || (i10 = this.f2510h) <= 0) {
                this.f2506d.run();
            } else {
                androidx.activity.h hVar = this.f2506d;
                long j10 = i10;
                WeakHashMap weakHashMap = b1.f17953a;
                j0.n(listView, hVar, j10);
            }
            this.l = true;
        }
        return false;
    }
}

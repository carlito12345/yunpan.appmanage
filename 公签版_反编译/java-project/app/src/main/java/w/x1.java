package w;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public abstract class x1 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final float f17290a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17291b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17292c;

    /* renamed from: d, reason: collision with root package name */
    public final View f17293d;

    /* renamed from: e, reason: collision with root package name */
    public w1 f17294e;

    /* renamed from: f, reason: collision with root package name */
    public w1 f17295f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17296g;

    /* renamed from: h, reason: collision with root package name */
    public int f17297h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f17298i = new int[2];

    public x1(View view) {
        this.f17293d = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f17290a = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f17291b = tapTimeout;
        this.f17292c = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        w1 w1Var = this.f17295f;
        View view = this.f17293d;
        if (w1Var != null) {
            view.removeCallbacks(w1Var);
        }
        w1 w1Var2 = this.f17294e;
        if (w1Var2 != null) {
            view.removeCallbacks(w1Var2);
        }
    }

    public abstract v.b0 b();

    public abstract boolean c();

    public boolean d() {
        v.b0 b0VarB = b();
        if (b0VarB == null || !b0VarB.b()) {
            return true;
        }
        b0VarB.dismiss();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouch(View view, MotionEvent motionEvent) throws IllegalAccessException, IllegalArgumentException {
        boolean z;
        t1 t1VarH;
        boolean z4 = this.f17296g;
        View view2 = this.f17293d;
        if (z4) {
            v.b0 b0VarB = b();
            if (b0VarB == null || !b0VarB.b() || (t1VarH = b0VarB.h()) == null || !t1VarH.isShown()) {
                z = !d();
            } else {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f17298i;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                t1VarH.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = t1VarH.b(motionEventObtainNoHistory, this.f17297h);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z10 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (!zB || !z10) {
                }
            }
        } else if (view2.isEnabled()) {
            int actionMasked2 = motionEvent.getActionMasked();
            if (actionMasked2 == 0) {
                this.f17297h = motionEvent.getPointerId(0);
                if (this.f17294e == null) {
                    this.f17294e = new w1(this, 0);
                }
                view2.postDelayed(this.f17294e, this.f17291b);
                if (this.f17295f == null) {
                    this.f17295f = new w1(this, 1);
                }
                view2.postDelayed(this.f17295f, this.f17292c);
            } else if (actionMasked2 == 1) {
                a();
            } else if (actionMasked2 == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f17297h);
                if (iFindPointerIndex >= 0) {
                    float x10 = motionEvent.getX(iFindPointerIndex);
                    float y6 = motionEvent.getY(iFindPointerIndex);
                    float f10 = this.f17290a;
                    float f11 = -f10;
                    if (x10 < f11 || y6 < f11 || x10 >= (view2.getRight() - view2.getLeft()) + f10 || y6 >= (view2.getBottom() - view2.getTop()) + f10) {
                        a();
                        view2.getParent().requestDisallowInterceptTouchEvent(true);
                        z = c();
                        if (z) {
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                            view2.onTouchEvent(motionEventObtain);
                            motionEventObtain.recycle();
                        }
                    }
                }
            } else if (actionMasked2 == 3) {
            }
            if (z) {
            }
        } else {
            if (z) {
            }
        }
        this.f17296g = z;
        return z || z4;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f17296g = false;
        this.f17297h = -1;
        w1 w1Var = this.f17294e;
        if (w1Var != null) {
            this.f17293d.removeCallbacks(w1Var);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}

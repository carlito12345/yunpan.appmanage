package x0;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

/* loaded from: classes.dex */
public final class m implements l {

    /* renamed from: x, reason: collision with root package name */
    public static final int f18010x = ViewConfiguration.getTapTimeout();

    /* renamed from: y, reason: collision with root package name */
    public static final int f18011y = ViewConfiguration.getDoubleTapTimeout();

    /* renamed from: a, reason: collision with root package name */
    public final int f18012a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18013b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18014c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18015d;

    /* renamed from: e, reason: collision with root package name */
    public final com.yunpan.appmanage.carsdk.u f18016e = new com.yunpan.appmanage.carsdk.u(25, this);

    /* renamed from: f, reason: collision with root package name */
    public final androidx.recyclerview.widget.q0 f18017f;

    /* renamed from: g, reason: collision with root package name */
    public final GestureDetector.OnDoubleTapListener f18018g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18019h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18020i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18021j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18022k;
    public boolean l;

    /* renamed from: m, reason: collision with root package name */
    public MotionEvent f18023m;

    /* renamed from: n, reason: collision with root package name */
    public MotionEvent f18024n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f18025p;

    /* renamed from: q, reason: collision with root package name */
    public float f18026q;
    public float r;

    /* renamed from: s, reason: collision with root package name */
    public float f18027s;

    /* renamed from: t, reason: collision with root package name */
    public float f18028t;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f18029v;

    /* renamed from: w, reason: collision with root package name */
    public VelocityTracker f18030w;

    public m(Context context, androidx.recyclerview.widget.q0 q0Var) {
        this.f18017f = q0Var;
        if (q0Var instanceof GestureDetector.OnDoubleTapListener) {
            this.f18018g = q0Var;
        }
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null");
        }
        if (q0Var == null) {
            throw new IllegalArgumentException("OnGestureListener must not be null");
        }
        this.f18029v = true;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
        this.f18014c = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f18015d = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f18012a = scaledTouchSlop * scaledTouchSlop;
        this.f18013b = scaledDoubleTapSlop * scaledDoubleTapSlop;
    }

    @Override // x0.l
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        androidx.recyclerview.widget.q0 q0Var;
        MotionEvent motionEvent2;
        boolean zOnFling;
        GestureDetector.OnDoubleTapListener onDoubleTapListener;
        boolean z;
        int action = motionEvent.getAction();
        if (this.f18030w == null) {
            this.f18030w = VelocityTracker.obtain();
        }
        this.f18030w.addMovement(motionEvent);
        int i10 = action & 255;
        boolean z4 = i10 == 6;
        int actionIndex = z4 ? motionEvent.getActionIndex() : -1;
        int pointerCount = motionEvent.getPointerCount();
        float x10 = 0.0f;
        float y6 = 0.0f;
        for (int i11 = 0; i11 < pointerCount; i11++) {
            if (actionIndex != i11) {
                x10 += motionEvent.getX(i11);
                y6 += motionEvent.getY(i11);
            }
        }
        float f10 = z4 ? pointerCount - 1 : pointerCount;
        float f11 = x10 / f10;
        float f12 = y6 / f10;
        androidx.recyclerview.widget.q0 q0Var2 = this.f18017f;
        com.yunpan.appmanage.carsdk.u uVar = this.f18016e;
        if (i10 == 0) {
            if (this.f18018g != null) {
                boolean zHasMessages = uVar.hasMessages(3);
                if (zHasMessages) {
                    uVar.removeMessages(3);
                }
                MotionEvent motionEvent3 = this.f18023m;
                int i12 = f18011y;
                if (motionEvent3 == null || (motionEvent2 = this.f18024n) == null || !zHasMessages || !this.l) {
                    q0Var = q0Var2;
                } else {
                    long eventTime = motionEvent.getEventTime() - motionEvent2.getEventTime();
                    q0Var = q0Var2;
                    if (eventTime <= i12) {
                        int x11 = ((int) motionEvent3.getX()) - ((int) motionEvent.getX());
                        int y10 = ((int) motionEvent3.getY()) - ((int) motionEvent.getY());
                        if ((y10 * y10) + (x11 * x11) < this.f18013b) {
                            this.f18025p = true;
                            this.f18018g.onDoubleTap(this.f18023m);
                            this.f18018g.onDoubleTapEvent(motionEvent);
                        }
                    }
                }
                uVar.sendEmptyMessageDelayed(3, i12);
            } else {
                q0Var = q0Var2;
            }
            this.f18026q = f11;
            this.f18027s = f11;
            this.r = f12;
            this.f18028t = f12;
            MotionEvent motionEvent4 = this.f18023m;
            if (motionEvent4 != null) {
                motionEvent4.recycle();
            }
            this.f18023m = MotionEvent.obtain(motionEvent);
            this.f18022k = true;
            this.l = true;
            this.f18019h = true;
            this.f18021j = false;
            this.f18020i = false;
            boolean z10 = this.f18029v;
            int i13 = f18010x;
            if (z10) {
                uVar.removeMessages(2);
                uVar.sendEmptyMessageAtTime(2, this.f18023m.getDownTime() + i13 + ViewConfiguration.getLongPressTimeout());
            }
            uVar.sendEmptyMessageAtTime(1, this.f18023m.getDownTime() + i13);
            q0Var.getClass();
            return true;
        }
        if (i10 == 1) {
            this.f18019h = false;
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            if (this.f18025p) {
                zOnFling = this.f18018g.onDoubleTapEvent(motionEvent);
            } else {
                if (this.f18021j) {
                    uVar.removeMessages(3);
                    this.f18021j = false;
                } else if (this.f18022k) {
                    boolean zOnSingleTapUp = q0Var2.onSingleTapUp(motionEvent);
                    if (this.f18020i && (onDoubleTapListener = this.f18018g) != null) {
                        onDoubleTapListener.onSingleTapConfirmed(motionEvent);
                    }
                    zOnFling = zOnSingleTapUp;
                } else {
                    VelocityTracker velocityTracker = this.f18030w;
                    int pointerId = motionEvent.getPointerId(0);
                    velocityTracker.computeCurrentVelocity(1000, this.f18015d);
                    float yVelocity = velocityTracker.getYVelocity(pointerId);
                    float xVelocity = velocityTracker.getXVelocity(pointerId);
                    if (Math.abs(yVelocity) > this.f18014c || Math.abs(xVelocity) > this.f18014c) {
                        zOnFling = q0Var2.onFling(this.f18023m, motionEvent, xVelocity, yVelocity);
                    }
                }
                zOnFling = false;
            }
            MotionEvent motionEvent5 = this.f18024n;
            if (motionEvent5 != null) {
                motionEvent5.recycle();
            }
            this.f18024n = motionEventObtain;
            VelocityTracker velocityTracker2 = this.f18030w;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f18030w = null;
            }
            this.f18025p = false;
            this.f18020i = false;
            uVar.removeMessages(1);
            uVar.removeMessages(2);
            return zOnFling;
        }
        if (i10 != 2) {
            if (i10 == 3) {
                uVar.removeMessages(1);
                uVar.removeMessages(2);
                uVar.removeMessages(3);
                this.f18030w.recycle();
                this.f18030w = null;
                this.f18025p = false;
                this.f18019h = false;
                this.f18022k = false;
                this.l = false;
                this.f18020i = false;
                if (this.f18021j) {
                    this.f18021j = false;
                }
            } else if (i10 == 5) {
                this.f18026q = f11;
                this.f18027s = f11;
                this.r = f12;
                this.f18028t = f12;
                uVar.removeMessages(1);
                uVar.removeMessages(2);
                uVar.removeMessages(3);
                this.f18025p = false;
                this.f18022k = false;
                this.l = false;
                this.f18020i = false;
                if (this.f18021j) {
                    this.f18021j = false;
                }
            } else if (i10 == 6) {
                this.f18026q = f11;
                this.f18027s = f11;
                this.r = f12;
                this.f18028t = f12;
                this.f18030w.computeCurrentVelocity(1000, this.f18015d);
                int actionIndex2 = motionEvent.getActionIndex();
                int pointerId2 = motionEvent.getPointerId(actionIndex2);
                float xVelocity2 = this.f18030w.getXVelocity(pointerId2);
                float yVelocity2 = this.f18030w.getYVelocity(pointerId2);
                int i14 = 0;
                while (true) {
                    if (i14 >= pointerCount) {
                        break;
                    }
                    if (i14 != actionIndex2) {
                        int pointerId3 = motionEvent.getPointerId(i14);
                        if ((this.f18030w.getYVelocity(pointerId3) * yVelocity2) + (this.f18030w.getXVelocity(pointerId3) * xVelocity2) < 0.0f) {
                            this.f18030w.clear();
                            break;
                        }
                    }
                    i14++;
                }
            }
        } else if (!this.f18021j) {
            float f13 = this.f18026q - f11;
            float f14 = this.r - f12;
            if (this.f18025p) {
                return this.f18018g.onDoubleTapEvent(motionEvent);
            }
            if (this.f18022k) {
                int i15 = (int) (f11 - this.f18027s);
                int i16 = (int) (f12 - this.f18028t);
                int i17 = (i16 * i16) + (i15 * i15);
                if (i17 > this.f18012a) {
                    boolean zOnScroll = q0Var2.onScroll(this.f18023m, motionEvent, f13, f14);
                    this.f18026q = f11;
                    this.r = f12;
                    this.f18022k = false;
                    uVar.removeMessages(3);
                    uVar.removeMessages(1);
                    uVar.removeMessages(2);
                    z = zOnScroll;
                } else {
                    z = false;
                }
                if (i17 <= this.f18012a) {
                    return z;
                }
                this.l = false;
                return z;
            }
            if (Math.abs(f13) >= 1.0f || Math.abs(f14) >= 1.0f) {
                boolean zOnScroll2 = q0Var2.onScroll(this.f18023m, motionEvent, f13, f14);
                this.f18026q = f11;
                this.r = f12;
                return zOnScroll2;
            }
        }
        return false;
    }
}

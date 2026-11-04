package w;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public final class w1 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ x1 f17286b;

    public /* synthetic */ w1(x1 x1Var, int i10) {
        this.f17285a = i10;
        this.f17286b = x1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17285a) {
            case 0:
                ViewParent parent = this.f17286b.f17293d.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
            default:
                x1 x1Var = this.f17286b;
                x1Var.a();
                View view = x1Var.f17293d;
                if (view.isEnabled() && !view.isLongClickable() && x1Var.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    x1Var.f17296g = true;
                    break;
                }
                break;
        }
    }
}

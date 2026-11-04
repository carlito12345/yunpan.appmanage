package androidx.recyclerview.widget;

import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l0 implements c2 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ u0 f2179a;

    public l0(u0 u0Var) {
        this.f2179a = u0Var;
    }

    @Override // androidx.recyclerview.widget.c2
    public final boolean c(MotionEvent motionEvent) {
        int iFindPointerIndex;
        u0 u0Var = this.f2179a;
        ((x0.l) u0Var.z.f17092b).onTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        s0 s0Var = null;
        if (actionMasked == 0) {
            u0Var.l = motionEvent.getPointerId(0);
            u0Var.f2295d = motionEvent.getX();
            u0Var.f2296e = motionEvent.getY();
            VelocityTracker velocityTracker = u0Var.f2309t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
            }
            u0Var.f2309t = VelocityTracker.obtain();
            if (u0Var.f2294c == null) {
                ArrayList arrayList = u0Var.f2306p;
                if (!arrayList.isEmpty()) {
                    View viewI = u0Var.i(motionEvent);
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        s0 s0Var2 = (s0) arrayList.get(size);
                        if (s0Var2.f2263e.itemView == viewI) {
                            s0Var = s0Var2;
                            break;
                        }
                        size--;
                    }
                }
                if (s0Var != null) {
                    u0Var.f2295d -= s0Var.f2267i;
                    u0Var.f2296e -= s0Var.f2268j;
                    RecyclerView.ViewHolder viewHolder = s0Var.f2263e;
                    u0Var.h(viewHolder, true);
                    if (u0Var.f2292a.remove(viewHolder.itemView)) {
                        u0Var.f2303m.e(u0Var.r, viewHolder);
                    }
                    u0Var.n(viewHolder, s0Var.f2264f);
                    u0Var.o(u0Var.f2305o, 0, motionEvent);
                }
            }
        } else if (actionMasked == 3 || actionMasked == 1) {
            u0Var.l = -1;
            u0Var.n(null, 0);
        } else {
            int i10 = u0Var.l;
            if (i10 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i10)) >= 0) {
                u0Var.f(actionMasked, iFindPointerIndex, motionEvent);
            }
        }
        VelocityTracker velocityTracker2 = u0Var.f2309t;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return u0Var.f2294c != null;
    }

    @Override // androidx.recyclerview.widget.c2
    public final void d(boolean z) {
        if (z) {
            this.f2179a.n(null, 0);
        }
    }

    @Override // androidx.recyclerview.widget.c2
    public final void onTouchEvent(MotionEvent motionEvent) {
        u0 u0Var = this.f2179a;
        ((x0.l) u0Var.z.f17092b).onTouchEvent(motionEvent);
        VelocityTracker velocityTracker = u0Var.f2309t;
        if (velocityTracker != null) {
            velocityTracker.addMovement(motionEvent);
        }
        if (u0Var.l == -1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        int iFindPointerIndex = motionEvent.findPointerIndex(u0Var.l);
        if (iFindPointerIndex >= 0) {
            u0Var.f(actionMasked, iFindPointerIndex, motionEvent);
        }
        RecyclerView.ViewHolder viewHolder = u0Var.f2294c;
        if (viewHolder == null) {
            return;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                if (iFindPointerIndex >= 0) {
                    u0Var.o(u0Var.f2305o, iFindPointerIndex, motionEvent);
                    u0Var.l(viewHolder);
                    RecyclerView recyclerView = u0Var.r;
                    k0 k0Var = u0Var.f2308s;
                    recyclerView.removeCallbacks(k0Var);
                    k0Var.run();
                    u0Var.r.invalidate();
                    return;
                }
                return;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return;
                }
                int actionIndex = motionEvent.getActionIndex();
                if (motionEvent.getPointerId(actionIndex) == u0Var.l) {
                    u0Var.l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                    u0Var.o(u0Var.f2305o, actionIndex, motionEvent);
                    return;
                }
                return;
            }
            VelocityTracker velocityTracker2 = u0Var.f2309t;
            if (velocityTracker2 != null) {
                velocityTracker2.clear();
            }
        }
        u0Var.n(null, 0);
        u0Var.l = -1;
    }
}

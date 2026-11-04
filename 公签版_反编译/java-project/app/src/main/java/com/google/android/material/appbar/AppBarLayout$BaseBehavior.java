package com.google.android.material.appbar;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import s6.a;

/* loaded from: classes.dex */
public class AppBarLayout$BaseBehavior<T> extends a {

    /* renamed from: b, reason: collision with root package name */
    public boolean f3438b;

    /* renamed from: c, reason: collision with root package name */
    public int f3439c;

    /* renamed from: d, reason: collision with root package name */
    public int f3440d;

    /* renamed from: e, reason: collision with root package name */
    public int f3441e;

    /* renamed from: f, reason: collision with root package name */
    public VelocityTracker f3442f;

    public AppBarLayout$BaseBehavior() {
        this.f3439c = -1;
        this.f3441e = -1;
    }

    @Override // k0.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int iFindPointerIndex;
        if (this.f3441e < 0) {
            this.f3441e = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getActionMasked() == 2 && this.f3438b) {
            int i10 = this.f3439c;
            if (i10 == -1 || (iFindPointerIndex = motionEvent.findPointerIndex(i10)) == -1) {
                return false;
            }
            int y6 = (int) motionEvent.getY(iFindPointerIndex);
            if (Math.abs(y6 - this.f3440d) > this.f3441e) {
                this.f3440d = y6;
                return true;
            }
        }
        if (motionEvent.getActionMasked() != 0) {
            VelocityTracker velocityTracker = this.f3442f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return false;
        }
        this.f3439c = -1;
        motionEvent.getX();
        motionEvent.getY();
        throw new ClassCastException();
    }

    @Override // s6.a, k0.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final /* synthetic */ void j(CoordinatorLayout coordinatorLayout, View view, View view2, int i10, int i11, int[] iArr, int i12) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final void k(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int[] iArr) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final void m(View view, Parcelable parcelable) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final Parcelable n(View view) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final boolean o(View view, int i10, int i11) {
        throw new ClassCastException();
    }

    @Override // k0.a
    public final void p(View view, View view2, int i10) {
        throw new ClassCastException();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x005b  */
    @Override // k0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f3439c);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                this.f3440d = (int) motionEvent.getY(iFindPointerIndex);
                view.getClass();
                throw new ClassCastException();
            }
            if (actionMasked != 3) {
                if (actionMasked == 6) {
                    int i10 = motionEvent.getActionIndex() != 0 ? 0 : 1;
                    this.f3439c = motionEvent.getPointerId(i10);
                    this.f3440d = (int) (motionEvent.getY(i10) + 0.5f);
                }
            }
            velocityTracker = this.f3442f;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            return this.f3438b;
        }
        VelocityTracker velocityTracker2 = this.f3442f;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
            this.f3442f.computeCurrentVelocity(1000);
            this.f3442f.getYVelocity(this.f3439c);
            view.getClass();
            throw new ClassCastException();
        }
        this.f3438b = false;
        this.f3439c = -1;
        VelocityTracker velocityTracker3 = this.f3442f;
        if (velocityTracker3 != null) {
            velocityTracker3.recycle();
            this.f3442f = null;
        }
        velocityTracker = this.f3442f;
        if (velocityTracker != null) {
        }
        return this.f3438b;
    }

    public AppBarLayout$BaseBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        this.f3439c = -1;
        this.f3441e = -1;
    }
}

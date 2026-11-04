package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import ha.j2;
import kh.h;
import o7.b;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* renamed from: h, reason: collision with root package name */
    public final j2 f3642h = new j2(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, k0.a
    public final boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f3642h.getClass();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (h.f10352b == null) {
                    h.f10352b = new h(3);
                }
                synchronized (h.f10352b.f10353a) {
                }
            }
        } else if (coordinatorLayout.n(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (h.f10352b == null) {
                h.f10352b = new h(3);
            }
            h.f10352b.c();
        }
        return super.f(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public final boolean r(View view) {
        this.f3642h.getClass();
        return view instanceof b;
    }
}

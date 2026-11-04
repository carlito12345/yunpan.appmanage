package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import f1.d;
import java.util.WeakHashMap;
import k0.a;
import l5.y;
import x0.b1;
import x0.j0;
import y0.f;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends a {

    /* renamed from: a, reason: collision with root package name */
    public d f3454a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3455b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f3456c;

    /* renamed from: d, reason: collision with root package name */
    public int f3457d = 2;

    /* renamed from: e, reason: collision with root package name */
    public float f3458e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f3459f = 0.5f;

    /* renamed from: g, reason: collision with root package name */
    public final u6.a f3460g = new u6.a(this);

    @Override // k0.a
    public boolean f(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean zN = this.f3455b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zN = coordinatorLayout.n(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f3455b = zN;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f3455b = false;
        }
        if (!zN) {
            return false;
        }
        if (this.f3454a == null) {
            this.f3454a = new d(coordinatorLayout.getContext(), coordinatorLayout, this.f3460g);
        }
        return !this.f3456c && this.f3454a.o(motionEvent);
    }

    @Override // k0.a
    public final boolean g(CoordinatorLayout coordinatorLayout, View view, int i10) {
        WeakHashMap weakHashMap = b1.f17953a;
        if (j0.c(view) != 0) {
            return false;
        }
        b1.B(view, 1);
        b1.s(1048576, view);
        if (!r(view)) {
            return false;
        }
        b1.u(view, f.f18539j, new y(21, this));
        return false;
    }

    @Override // k0.a
    public final boolean q(View view, MotionEvent motionEvent) {
        if (this.f3454a == null) {
            return false;
        }
        if (this.f3456c && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f3454a.i(motionEvent);
        return true;
    }

    public boolean r(View view) {
        return true;
    }
}

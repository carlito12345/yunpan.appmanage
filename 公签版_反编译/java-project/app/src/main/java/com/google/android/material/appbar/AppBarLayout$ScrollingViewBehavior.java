package com.google.android.material.appbar;

import a9.o;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import k0.d;
import s6.a;
import x0.b1;

/* loaded from: classes.dex */
public class AppBarLayout$ScrollingViewBehavior extends a {

    /* renamed from: b, reason: collision with root package name */
    public final int f3443b;

    public AppBarLayout$ScrollingViewBehavior() {
        new Rect();
        new Rect();
    }

    public static void s(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
        }
    }

    @Override // k0.a
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        k0.a aVar = ((d) view2.getLayoutParams()).f9998a;
        if (aVar instanceof AppBarLayout$BaseBehavior) {
            int bottom = view2.getBottom() - view.getTop();
            ((AppBarLayout$BaseBehavior) aVar).getClass();
            int i10 = this.f3443b;
            b1.p(bottom - (i10 == 0 ? 0 : o.u((int) (0.0f * i10), 0, i10)), view);
        }
        return false;
    }

    @Override // k0.a
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12) {
        int i13 = view.getLayoutParams().height;
        if (i13 != -1 && i13 != -2) {
            return false;
        }
        s(coordinatorLayout.j(view));
        return false;
    }

    @Override // k0.a
    public final void l(CoordinatorLayout coordinatorLayout, View view) {
        s(coordinatorLayout.j(view));
    }

    @Override // s6.a
    public final void r(CoordinatorLayout coordinatorLayout, View view, int i10) {
        s(coordinatorLayout.j(view));
        coordinatorLayout.p(i10, view);
    }

    public AppBarLayout$ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(0);
        new Rect();
        new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q6.a.f13049v);
        this.f3443b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // k0.a
    public final void b(View view) {
    }
}

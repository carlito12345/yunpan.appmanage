package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class h1 extends w2 {

    /* renamed from: c, reason: collision with root package name */
    public e1 f2145c;

    /* renamed from: d, reason: collision with root package name */
    public d1 f2146d;

    public static int e(View view, f1 f1Var) {
        return ((f1Var.c(view) / 2) + f1Var.e(view)) - ((f1Var.l() / 2) + f1Var.k());
    }

    public static View f(RecyclerView.LayoutManager layoutManager, f1 f1Var) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int iL = (f1Var.l() / 2) + f1Var.k();
        int i10 = Integer.MAX_VALUE;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = layoutManager.getChildAt(i11);
            int iAbs = Math.abs(((f1Var.c(childAt) / 2) + f1Var.e(childAt)) - iL);
            if (iAbs < i10) {
                view = childAt;
                i10 = iAbs;
            }
        }
        return view;
    }

    @Override // androidx.recyclerview.widget.w2
    public final int[] b(RecyclerView.LayoutManager layoutManager, View view) {
        int[] iArr = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            iArr[0] = e(view, g(layoutManager));
        } else {
            iArr[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            iArr[1] = e(view, h(layoutManager));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // androidx.recyclerview.widget.w2
    public View c(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return f(layoutManager, h(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return f(layoutManager, g(layoutManager));
        }
        return null;
    }

    public final f1 g(RecyclerView.LayoutManager layoutManager) {
        d1 d1Var = this.f2146d;
        if (d1Var == null || d1Var.f2111a != layoutManager) {
            this.f2146d = new d1(layoutManager);
        }
        return this.f2146d;
    }

    public final f1 h(RecyclerView.LayoutManager layoutManager) {
        e1 e1Var = this.f2145c;
        if (e1Var == null || e1Var.f2111a != layoutManager) {
            this.f2145c = new e1(layoutManager);
        }
        return this.f2145c;
    }
}

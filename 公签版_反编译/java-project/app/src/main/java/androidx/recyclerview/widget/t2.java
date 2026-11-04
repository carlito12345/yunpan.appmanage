package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class t2 {
    public static int a(n2 n2Var, f1 f1Var, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || n2Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1;
        }
        return Math.min(f1Var.l(), f1Var.b(view2) - f1Var.e(view));
    }

    public static int b(n2 n2Var, f1 f1Var, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z, boolean z4) {
        if (layoutManager.getChildCount() == 0 || n2Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMax = z4 ? Math.max(0, (n2Var.b() - Math.max(layoutManager.getPosition(view), layoutManager.getPosition(view2))) - 1) : Math.max(0, Math.min(layoutManager.getPosition(view), layoutManager.getPosition(view2)));
        if (z) {
            return Math.round((iMax * (Math.abs(f1Var.b(view2) - f1Var.e(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1))) + (f1Var.k() - f1Var.e(view)));
        }
        return iMax;
    }

    public static int c(n2 n2Var, f1 f1Var, View view, View view2, RecyclerView.LayoutManager layoutManager, boolean z) {
        if (layoutManager.getChildCount() == 0 || n2Var.b() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return n2Var.b();
        }
        return (int) (((f1Var.b(view2) - f1Var.e(view)) / (Math.abs(layoutManager.getPosition(view) - layoutManager.getPosition(view2)) + 1)) * n2Var.b());
    }
}

package x0;

import android.view.View;
import android.view.WindowInsets;

/* loaded from: classes.dex */
public abstract class q0 {
    public static j2 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        j2 j2VarH = j2.h(null, rootWindowInsets);
        g2 g2Var = j2VarH.f18006a;
        g2Var.p(j2VarH);
        g2Var.d(view.getRootView());
        return j2VarH;
    }

    public static int b(View view) {
        return view.getScrollIndicators();
    }

    public static void c(View view, int i10) {
        view.setScrollIndicators(i10);
    }

    public static void d(View view, int i10, int i11) {
        view.setScrollIndicators(i10, i11);
    }
}

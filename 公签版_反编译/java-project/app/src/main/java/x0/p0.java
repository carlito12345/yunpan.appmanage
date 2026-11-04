package x0;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import com.yunpan.appmanage.R;

/* loaded from: classes.dex */
public abstract class p0 {
    public static void a(WindowInsets windowInsets, View view) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
        }
    }

    public static j2 b(View view, j2 j2Var, Rect rect) {
        WindowInsets windowInsetsG = j2Var.g();
        if (windowInsetsG != null) {
            return j2.h(view, view.computeSystemWindowInsets(windowInsetsG, rect));
        }
        rect.setEmpty();
        return j2Var;
    }

    public static boolean c(View view, float f10, float f11, boolean z) {
        return view.dispatchNestedFling(f10, f11, z);
    }

    public static boolean d(View view, float f10, float f11) {
        return view.dispatchNestedPreFling(f10, f11);
    }

    public static boolean e(View view, int i10, int i11, int[] iArr, int[] iArr2) {
        return view.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
    }

    public static boolean f(View view, int i10, int i11, int i12, int i13, int[] iArr) {
        return view.dispatchNestedScroll(i10, i11, i12, i13, iArr);
    }

    public static ColorStateList g(View view) {
        return view.getBackgroundTintList();
    }

    public static PorterDuff.Mode h(View view) {
        return view.getBackgroundTintMode();
    }

    public static float i(View view) {
        return view.getElevation();
    }

    public static j2 j(View view) throws IllegalAccessException, IllegalArgumentException {
        if (!w1.f18064d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            Object obj = w1.f18061a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            Rect rect = (Rect) w1.f18062b.get(obj);
            Rect rect2 = (Rect) w1.f18063c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            int i10 = Build.VERSION.SDK_INT;
            a2 z1Var = i10 >= 30 ? new z1() : i10 >= 29 ? new y1() : i10 >= 20 ? new x1() : new a2();
            z1Var.e(p0.c.b(rect.left, rect.top, rect.right, rect.bottom));
            z1Var.g(p0.c.b(rect2.left, rect2.top, rect2.right, rect2.bottom));
            j2 j2VarB = z1Var.b();
            j2VarB.f18006a.p(j2VarB);
            j2VarB.f18006a.d(view.getRootView());
            return j2VarB;
        } catch (IllegalAccessException e7) {
            e7.getMessage();
            return null;
        }
    }

    public static String k(View view) {
        return view.getTransitionName();
    }

    public static float l(View view) {
        return view.getTranslationZ();
    }

    public static float m(View view) {
        return view.getZ();
    }

    public static boolean n(View view) {
        return view.hasNestedScrollingParent();
    }

    public static boolean o(View view) {
        return view.isImportantForAccessibility();
    }

    public static boolean p(View view) {
        return view.isNestedScrollingEnabled();
    }

    public static void q(View view, ColorStateList colorStateList) {
        view.setBackgroundTintList(colorStateList);
    }

    public static void r(View view, PorterDuff.Mode mode) {
        view.setBackgroundTintMode(mode);
    }

    public static void s(View view, float f10) {
        view.setElevation(f10);
    }

    public static void t(View view, boolean z) {
        view.setNestedScrollingEnabled(z);
    }

    public static void u(View view, x xVar) {
        if (Build.VERSION.SDK_INT < 30) {
            view.setTag(R.id.tag_on_apply_window_listener, xVar);
        }
        if (xVar == null) {
            view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
        } else {
            view.setOnApplyWindowInsetsListener(new o0(view, xVar));
        }
    }

    public static void v(View view, String str) {
        view.setTransitionName(str);
    }

    public static void w(View view, float f10) {
        view.setTranslationZ(f10);
    }

    public static void x(View view, float f10) {
        view.setZ(f10);
    }

    public static boolean y(View view, int i10) {
        return view.startNestedScroll(i10);
    }

    public static void z(View view) {
        view.stopNestedScroll();
    }
}
